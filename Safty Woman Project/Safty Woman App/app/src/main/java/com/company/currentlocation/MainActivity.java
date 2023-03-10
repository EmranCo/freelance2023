package com.company.currentlocation;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class MainActivity extends AppCompatActivity implements SensorEventListener, LocationListener{

    FusedLocationProviderClient fusedLocationProviderClient;
    Button bt_sendLocation, bt_signOut;
    ImageView imageButton;
    String guardianNumber;




    FirebaseDatabase firebaseDatabase;
    DatabaseReference databaseReference;
    DatabaseReference newDatabaseReference;

    String formattedDate;

    private SensorManager sensorManager;
    private Sensor accelerometer;
    private  boolean isaccelerometerSensorAvailable , ItisnotFirstTime = false,Messagesent= false;
    private float currentx , currenty, currentz , lastx, lasty, lastz;

    private float xdifference,ydifference,zdifference;
    private  float shakethreshold  = 25f;

    private float onkeypressed = 0;

    LocationManager manager;

    private  final int MIN_TIME = 2000; // 1 sec

    private final int MIN_DISTANCE = 1;  // 1 METER



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        try {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.activity_main);

            Intent i = getIntent();
            String userNumber = i.getStringExtra("userNumber");
            firebaseDatabase = FirebaseDatabase.getInstance();
            databaseReference = firebaseDatabase.getReference().child("Users").child(userNumber).child("LocatinInfo");
            newDatabaseReference = firebaseDatabase.getReference().child("Users").child(userNumber).child("GuardianInfo").child("guardianPhone1");

            manager = (LocationManager) getSystemService(LOCATION_SERVICE);

            imageButton = findViewById(R.id.imageButton);

            Calendar c = Calendar.getInstance();
            System.out.println("Current dateTime => " + c.getTime());
            SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss a");
            formattedDate = df.format(c.getTime());


            bt_sendLocation = findViewById(R.id.bt_sendLocation);
            bt_signOut = findViewById(R.id.bt_signOut);

            fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(this);


            sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);
            if (sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)!= null){
                accelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
                isaccelerometerSensorAvailable=true;
            }
            else{
                Toast.makeText(this, "sensor not available", Toast.LENGTH_SHORT).show();
                isaccelerometerSensorAvailable=false;
            }

            imageButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {

                    Intent intent = new Intent(MainActivity.this, FakeCallActivity.class);
                    startActivity(intent);

                }
            });

            bt_sendLocation.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {



                    Intent i = new Intent(MainActivity.this, MapsActivity2.class);
                    i.putExtra("userNumber", userNumber);
                    startActivity(i);

                }
            });

            bt_signOut.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    RegisterActivity.auth.signOut();
                    finish();
                    startActivity(new Intent(MainActivity.this, BasicLoginActivity.class));
                }
            });

            getlocationupdates();


        } catch (Exception e)
        {
            Toast.makeText(MainActivity.this, e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void getLocation() {


        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED &&
                ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) == PackageManager.PERMISSION_GRANTED) {



            fusedLocationProviderClient.getLastLocation().addOnCompleteListener(new OnCompleteListener<Location>() {
                @Override
                public void onComplete(@NonNull Task<Location> task) {

                    Location location = task.getResult();
                    if (location != null) {

                        Geocoder geocoder = new Geocoder(MainActivity.this, Locale.getDefault());

                        try {

                            List<Address> addresses = geocoder.getFromLocation(location.getLatitude(), location.getLongitude(), 1);

                            LocationInfo locationInfo = new LocationInfo("" + addresses.get(0).getLatitude(),
                                    "" + addresses.get(0).getLongitude(),
                                    "" + addresses.get(0).getCountryName(),
                                    "" + addresses.get(0).getLocality(),
                                    "" + addresses.get(0).getAddressLine(0));

                            MyLocationSecond location2 = new MyLocationSecond(addresses.get(0).getLatitude(), addresses.get(0).getLongitude());

                            databaseReference.setValue(location2);

                            Toast.makeText(MainActivity.this, "Location Sent", Toast.LENGTH_SHORT).show();

                        } catch (IOException e) {
                            e.printStackTrace();
                        }

                    }

                }
            });


        } else {

            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 44);
            Toast.makeText(this, "Get Location Permissions", Toast.LENGTH_SHORT).show();

        }

    }



    private void getlocationupdates() {

        if (manager != null){

            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION)== PackageManager.PERMISSION_GRANTED &&
                    ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION)== PackageManager.PERMISSION_GRANTED) {

                if (manager.isProviderEnabled(LocationManager.GPS_PROVIDER)) {
                    manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, MIN_TIME, MIN_DISTANCE, this);
                } else if (manager.isProviderEnabled(LocationManager.NETWORK_PROVIDER)) {
                    manager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, MIN_TIME, MIN_DISTANCE, this);
                } else {
                    Toast.makeText(this, "NO provider Enabled", Toast.LENGTH_SHORT).show();
                }

            }

            else{
                ActivityCompat.requestPermissions(this,new String[]{Manifest.permission.ACCESS_FINE_LOCATION},101);
            }

        }

    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);

        if (requestCode == 101){

            if (grantResults.length>0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
                getlocationupdates();
            }
            else{
                Toast.makeText(this, "You need to get location permission", Toast.LENGTH_SHORT).show();
            }

        }

        if(requestCode == 45){

            if (grantResults.length>0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
                return;
            }
            else{

                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS}, 45);
            }

        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.SEND_SMS) != PackageManager.PERMISSION_GRANTED){

            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS}, 45);

        }


        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED &&
                ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {

            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, 44);

        }

    }


    @Override
    public void onSensorChanged(SensorEvent event) {
try {

    currentx = event.values[0];
    currenty = event.values[1];
    currentz = event.values[2];

    if (ItisnotFirstTime){

        xdifference = Math.abs(currentx-lastx);
        ydifference = Math.abs(currenty-lasty);
        zdifference = Math.abs(currentz-lastz);

        if(xdifference > shakethreshold || ydifference>shakethreshold || zdifference>shakethreshold){

//                Toast.makeText(this, "The help signal has been sent!!", Toast.LENGTH_SHORT).show();
//                Messagesent = true;



            SmsManager sms = SmsManager.getDefault();
            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.SEND_SMS) != PackageManager.PERMISSION_GRANTED){

                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.SEND_SMS}, 45);

            }
            readChanges();
            String number = guardianNumber;
            sms.sendTextMessage(number,null,"help me, I'm in dangerous",null,null);
            Toast.makeText(MainActivity.this, "Message sent to your guardian", Toast.LENGTH_SHORT).show();

        }

    }

    lastx = currentx;
    lasty=currenty;
    lastz=currentz;

    ItisnotFirstTime = true;


} catch (Exception e)
{
    Toast.makeText(MainActivity.this, newDatabaseReference.toString(), Toast.LENGTH_SHORT).show();
}
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }


    @Override
    protected void onResume() {
        super.onResume();
        sensorManager.registerListener(this,accelerometer,SensorManager.SENSOR_DELAY_NORMAL);

    }


    @Override
    protected void onPause() {
        super.onPause();
        if (isaccelerometerSensorAvailable){
            sensorManager.unregisterListener(this);
        }
    }

    // volume click listener


    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {

        if (keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {

            onkeypressed++;

            if (onkeypressed == 3) {
                onkeypressed = 0;
                Intent i = new Intent(MainActivity.this, FakeCallActivity.class);
                startActivity(i);
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override
    public void onLocationChanged(@NonNull Location location) {
        if (location != null){
            savelocation(location);
        }
        else{
            Toast.makeText(this, "No location", Toast.LENGTH_SHORT).show();
        }
    }

    private void savelocation(Location location) {

        databaseReference.setValue(location);
        //Toast.makeText(this, "Live Location Sent", Toast.LENGTH_SHORT).show();

    }

    private String readChanges() {
        newDatabaseReference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {
                if (snapshot.exists()){
                    try {

                            guardianNumber = snapshot.getValue().toString();



                    }catch (Exception e){
                        Toast.makeText(MainActivity.this, "There is no guardian to this number", Toast.LENGTH_SHORT).show();
                    }
                }
            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });

        return guardianNumber;
    }
}