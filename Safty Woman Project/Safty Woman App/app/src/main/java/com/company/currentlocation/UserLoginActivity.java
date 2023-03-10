package com.company.currentlocation;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthOptions;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.util.concurrent.TimeUnit;

public class UserLoginActivity extends AppCompatActivity {
    FirebaseDatabase firebaseDatabase = FirebaseDatabase.getInstance();
    DatabaseReference databaseReference = firebaseDatabase.getReference().child("Users");

    EditText et_numberLogin, et_enterOTP;
    Button bt_otpSend, bt_verify;
    TextView tv_goToRegister;

    String userLoginNumber;

    FirebaseAuth mAuth = FirebaseAuth.getInstance();

    private String verificationId;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_login);

        et_numberLogin = findViewById(R.id.et_numberLogin);
        bt_otpSend = findViewById(R.id.bt_otpSend);
        et_enterOTP = findViewById(R.id.et_enterOTP);
        bt_verify = findViewById(R.id.bt_verifyOTP);
        tv_goToRegister = findViewById(R.id.tv_goToRegister);

        bt_otpSend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                userLoginNumber = et_numberLogin.getText().toString();
                Log.d("some",userLoginNumber);
                Boolean b = numberVerificationInDatabase(userLoginNumber);
                if(b) {
                    sendVerificationCode(userLoginNumber);
                }

            }
        });

        bt_verify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                verifyCode(et_enterOTP.getText().toString());
            }
        });

        tv_goToRegister.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                try {
                    Intent i = new Intent(UserLoginActivity.this, RegisterActivity.class);
                    startActivity(i);
                }
                catch (Exception e)
                {
                    Toast.makeText(UserLoginActivity.this, e.getMessage(), Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    private boolean numberVerificationInDatabase(String userLoginNumber){

        databaseReference.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot snapshot) {

                Boolean b=false;

                for(DataSnapshot dataSnapshot : snapshot.getChildren()){
                    if(dataSnapshot.getKey().toString().equals(userLoginNumber)){

                        et_enterOTP.setVisibility(View.VISIBLE);
                        bt_verify.setVisibility(View.VISIBLE);
                        b = true;

                    }
                }

                if(!b){

                    Toast.makeText(UserLoginActivity.this, "User Not Registered", Toast.LENGTH_SHORT).show();

                }

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });


            et_enterOTP.setVisibility(View.VISIBLE);
            bt_verify.setVisibility(View.VISIBLE);
            return true;





    }

    private void sendVerificationCode(String number) {

        PhoneAuthOptions options =
                PhoneAuthOptions.newBuilder(mAuth)
                        .setPhoneNumber(number)
                        .setTimeout(60L, TimeUnit.SECONDS)
                        .setActivity(this)
                        .setCallbacks(mCallBack)
                        .build();
        PhoneAuthProvider.verifyPhoneNumber(options);

    }

    private PhoneAuthProvider.OnVerificationStateChangedCallbacks mCallBack =
            new PhoneAuthProvider.OnVerificationStateChangedCallbacks() {


                @Override
                public void onCodeSent(String s, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
                    super.onCodeSent(s, forceResendingToken);

                    verificationId = s;
                }

                @Override
                public void onVerificationCompleted(@NonNull PhoneAuthCredential phoneAuthCredential) {


                    final String code = phoneAuthCredential.getSmsCode();


                    if (code != null) {

                        et_enterOTP.setText(code);


                        verifyCode(code);
                    }
                }

                @Override
                public void onVerificationFailed(@NonNull FirebaseException e) {


                    Toast.makeText(UserLoginActivity.this, e.getMessage(), Toast.LENGTH_LONG).show();

                }
            };

    private void verifyCode(String code) {
        try {
            PhoneAuthCredential credential = PhoneAuthProvider.getCredential(verificationId, code);
            signInWithCredential(credential);
        } catch (Exception e)
        {
            Toast.makeText(UserLoginActivity.this, e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private void signInWithCredential(PhoneAuthCredential credential) {

        mAuth.signInWithCredential(credential)
                .addOnCompleteListener(new OnCompleteListener<AuthResult>() {

                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {

                            Toast.makeText(UserLoginActivity.this, "OTP VERIFIED", Toast.LENGTH_SHORT).show();

                            Intent i = new Intent(UserLoginActivity.this,MainActivity.class);
                            i.putExtra("userNumber", et_numberLogin.getText().toString());
                            startActivity(i);

                        }

                        else {

                            Toast.makeText(UserLoginActivity.this, task.getException().getMessage(), Toast.LENGTH_LONG).show();

                        }
                    }
                });
    }
}