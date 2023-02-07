-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 فبراير 2023 الساعة 22:40
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- بنية الجدول `colleges`
--

CREATE TABLE `colleges` (
  `college_number` bigint(20) UNSIGNED NOT NULL,
  `college_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `colleges`
--

INSERT INTO `colleges` (`college_number`, `college_name`) VALUES
(2692, 'Queen jumped up in spite of. College'),
(5645, 'I beat him when he sneezes. College'),
(8167, 'Turtle. \'And how many hours. College');

-- --------------------------------------------------------

--
-- بنية الجدول `courses`
--

CREATE TABLE `courses` (
  `course_number` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_hours` int(10) UNSIGNED NOT NULL,
  `level` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `courses`
--

INSERT INTO `courses` (`course_number`, `course_name`, `description`, `credit_hours`, `level`) VALUES
(103, 'Course of Hatter shook his.', 'Alice noticed, had powdered hair that curled all over with William the Conqueror.\' (For, with all.', 1, 2),
(104, 'Course of He sent them word.', 'And I declare it\'s too bad, that it might be hungry, in which you usually see Shakespeare, in the.', 2, 4),
(106, 'Course of Dormouse, without.', 'Alice replied, so eagerly that the poor little thing sat down in a more subdued tone, and added.', 4, 6),
(118, 'Course of And I declare it\'s.', 'Though they were all writing very busily on slates. \'What are they doing?\' Alice whispered to the.', 4, 4),
(127, 'Course of Mock Turtle is.\'.', 'And beat him when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a.', 4, 5),
(131, 'Course of I hadn\'t gone down.', 'Duchess, who seemed ready to talk about trouble!\' said the Duchess; \'I never thought about it,\'.', 2, 1),
(137, 'Course of The Mouse did not.', 'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow up again! Let me see: four times six is.', 3, 2),
(142, 'Course of Hatter were having.', 'Cat, and vanished. Alice was soon left alone. \'I wish you wouldn\'t mind,\' said Alice: \'--where\'s.', 1, 2),
(159, 'Course of Caterpillar, just.', 'BEST butter,\' the March Hare moved into the air off all its feet at once, she found she could.', 4, 1),
(168, 'Course of Do cats eat bats?.', 'Hatter with a little glass box that was sitting on a crimson velvet cushion; and, last of all her.', 3, 1),
(189, 'Course of White Rabbit; \'in.', 'Bill! I wouldn\'t be in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they.', 2, 3),
(197, 'Course of M--\' \'Why with an.', 'He looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered.', 3, 3),
(209, 'Course of Duchess?\' \'Hush!.', 'For this must ever be A secret, kept from all the time she had succeeded in curving it down.', 4, 5),
(216, 'Course of Hatter: \'but you.', 'And here poor Alice began to feel very sleepy and stupid), whether the pleasure of making a.', 2, 4),
(240, 'Course of I can guess that,\'.', 'Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And.', 1, 6),
(252, 'Course of HIS time of life.', 'I can say.\' This was such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed.', 3, 2),
(276, 'Course of YOU like cats if.', 'Alice had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice.', 3, 5),
(285, 'Course of The Queen smiled.', 'Alice was not quite know what a wonderful dream it had been. But her sister on the bank--the birds.', 3, 6),
(289, 'Course of I dare say you\'re.', 'March Hare. \'Then it doesn\'t matter much,\' thought Alice, and, after glaring at her feet, they.', 3, 1),
(314, 'Course of Alice ventured to.', 'CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND.', 4, 6),
(327, 'Course of The Gryphon lifted.', 'Hatter. \'You might just as well as I used--and I don\'t believe you do lessons?\' said Alice, rather.', 4, 1),
(335, 'Course of There could be NO.', 'I could shut up like telescopes: this time the Mouse heard this, it turned round and get in at.', 1, 6),
(344, 'Course of King hastily said.', 'Alice. \'Well, then,\' the Cat again, sitting on the back. However, it was looking about for them.', 4, 5),
(358, 'Course of Cat said, waving.', 'Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Duck: \'it\'s generally a frog or a.', 4, 6),
(371, 'Course of The Duchess! Oh my.', 'WOULD put their heads down and make out that the meeting adjourn, for the garden!\' and she put.', 3, 4),
(386, 'Course of Dormouse went on.', 'CHAPTER IV. The Rabbit Sends in a trembling voice:-- \'I passed by his face only, she would feel.', 1, 5),
(394, 'Course of Now I growl when.', 'I suppose you\'ll be telling me next that you couldn\'t cut off a head unless there was silence for.', 3, 6),
(422, 'Course of Pigeon in a voice.', 'Just then she noticed that the Queen left off, quite out of sight before the officer could get to.', 4, 4),
(441, 'Course of However, she got.', 'Queen, turning purple. \'I won\'t!\' said Alice. \'Why, SHE,\' said the King, with an M, such as.', 1, 3),
(450, 'Course of I can creep under.', 'I\'ll have you executed on the end of the month, and doesn\'t tell what o\'clock it is!\' \'Why should.', 1, 5),
(472, 'Course of Lory, who at last.', 'In a little sharp bark just over her head down to her usual height. It was so much already, that.', 2, 1),
(480, 'Course of Tell her to carry.', 'Gryphon, half to itself, half to itself, half to herself, \'it would be very likely true.) Down.', 2, 3),
(510, 'Course of Alice thought this.', 'Alice did not wish to offend the Dormouse indignantly. However, he consented to go from here?\'.', 2, 6),
(511, 'Course of I? Ah, THAT\'S the.', 'Queen: so she took up the fan and gloves--that is, if I would talk on such a puzzled expression.', 4, 1),
(527, 'Course of I to do such a new.', 'King triumphantly, pointing to the table for it, he was gone, and the others looked round also.', 3, 4),
(533, 'Course of Pat, what\'s that.', 'I am now? That\'ll be a queer thing, to be talking in a game of play with a sigh: \'he taught.', 2, 2),
(555, 'Course of YOU, and no room.', 'Some of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, getting.', 3, 5),
(565, 'Course of Mock Turtle said.', 'Mock Turtle. Alice was not easy to know when the Rabbit actually TOOK A WATCH OUT OF ITS.', 2, 3),
(567, 'Course of As soon as she was.', 'Alice knew it was all about, and shouting \'Off with his knuckles. It was as long as I used--and I.', 2, 6),
(573, 'Course of I know THAT well.', 'March Hare. \'I didn\'t know that cats COULD grin.\' \'They all can,\' said the one who had been.', 2, 2),
(577, 'Course of For instance, if.', 'Dormouse sulkily remarked, \'If you can\'t take LESS,\' said the March Hare: she thought it had.', 4, 3),
(580, 'Course of BEST butter, you.', 'HE was.\' \'I never went to the other: he came trotting along in a day is very confusing.\' \'It.', 3, 2),
(581, 'Course of What made you so.', 'Mabel after all, and I could say if I was, I shouldn\'t want YOURS: I don\'t want to get in?\' she.', 4, 1),
(613, 'Course of I\'m afraid, sir\'.', 'I shall be a LITTLE larger, sir, if you want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, by way.', 2, 4),
(621, 'Course of However, she soon.', 'Dormouse into the air, and came back again. \'Keep your temper,\' said the Duchess, who seemed to be.', 3, 4),
(622, 'Course of Alice was more and.', 'I grow at a king,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter and the beak-- Pray.', 3, 1),
(630, 'Course of March--just before.', 'And the Gryphon replied very solemnly. Alice was not here before,\' said Alice,) and round goes the.', 2, 5),
(639, 'Course of Duchess?\' \'Hush!.', 'I almost wish I hadn\'t begun my tea--not above a week or so--and what with the next witness.\' And.', 1, 6),
(650, 'Course of Mouse to tell him.', 'Dormouse denied nothing, being fast asleep. \'After that,\' continued the King. The White Rabbit.', 3, 5),
(652, 'Course of I was going to do.', 'Rabbit\'s voice; and the two creatures got so much surprised, that for two reasons. First, because.', 2, 6),
(668, 'Course of They are waiting.', 'Alice knew it was getting very sleepy; \'and they all quarrel so dreadfully one can\'t hear oneself.', 1, 6),
(687, 'Course of I don\'t know,\' he.', 'There was no label this time it vanished quite slowly, beginning with the Dormouse. \'Fourteenth of.', 4, 2),
(694, 'Course of Even the Duchess.', 'Mock Turtle went on planning to herself how she would feel with all her coaxing. Hardly knowing.', 2, 5),
(715, 'Course of Oh, how I wish you.', 'Pigeon; \'but if you\'ve seen them at last, and they can\'t prove I did: there\'s no use in the pool.', 4, 1),
(717, 'Course of What WILL become.', 'I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess was VERY ugly; and.', 4, 3),
(722, 'Course of King eagerly, and.', 'Hatter. He came in with a melancholy tone: \'it doesn\'t seem to put his shoes on. \'--and just take.', 3, 5),
(747, 'Course of Duchess; \'I never.', 'Take your choice!\' The Duchess took no notice of them with one elbow against the roof was thatched.', 1, 1),
(750, 'Course of I? Ah, THAT\'S the.', 'For really this morning I\'ve nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t believe.', 4, 3),
(781, 'Course of The hedgehog was.', 'Alice could see, as she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\'.', 2, 5),
(799, 'Course of It\'s high time you.', 'YET,\' she said to Alice, \'Have you seen the Mock Turtle angrily: \'really you are very dull!\' \'You.', 3, 3),
(801, 'Course of Lizard, Bill, was.', 'Tarts? The King laid his hand upon her knee, and the Queen put on one knee as he spoke, and the.', 2, 2),
(835, 'Course of Alice, as she had.', 'I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to the table.', 3, 4),
(856, 'Course of As soon as there.', 'CHAPTER III. A Caucus-Race and a large piece out of the officers: but the wise little Alice was.', 1, 1),
(875, 'Course of Footman remarked.', 'And she went on: \'But why did they live at the sides of the trees had a head could be NO mistake.', 1, 2),
(878, 'Course of There seemed to be.', 'Alice said to herself; \'I should think very likely to eat or drink under the sea--\' (\'I haven\'t,\'.', 3, 6),
(909, 'Course of Alice; \'but when.', 'Who for such dainties would not give all else for two Pennyworth only of beautiful Soup?.', 3, 5),
(919, 'Course of Alice. \'Why not?\'.', 'Alice ventured to remark. \'Tut, tut, child!\' said the King, \'that saves a world of trouble, you.', 2, 1),
(941, 'Course of As for pulling me.', 'So she stood watching them, and all her knowledge of history, Alice had no pictures or.', 2, 6),
(952, 'Course of I tell you!\' But.', 'Alice, as she said to one of these cakes,\' she thought, \'it\'s sure to do with this creature when I.', 4, 3),
(953, 'Course of The Knave did so.', 'Alice quite hungry to look about her other little children, and make THEIR eyes bright and eager.', 2, 3),
(969, 'Course of I hadn\'t gone down.', 'Jack-in-the-box, and up the other, trying every door, she ran out of this sort in her face, and.', 4, 6),
(980, 'Course of However, I\'ve got.', 'Cheshire cat,\' said the King, rubbing his hands; \'so now let the jury--\' \'If any one left alive!\'.', 4, 1),
(985, 'Course of Mock Turtle would.', 'I beg your pardon!\' cried Alice in a trembling voice, \'Let us get to twenty at that rate! However.', 1, 5),
(993, 'Course of Queen had only one.', 'White Rabbit as he spoke, and added with a sigh: \'he taught Laughing and Grief, they used to say.\'.', 2, 5),
(995, 'Course of Mystery,\' the Mock.', 'Caterpillar. Here was another puzzling question; and as it turned round and get ready to ask help.', 2, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `course_sections`
--

CREATE TABLE `course_sections` (
  `section_number` bigint(20) UNSIGNED NOT NULL,
  `course_number` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `course_sections`
--

INSERT INTO `course_sections` (`section_number`, `course_number`) VALUES
(3595926, 630),
(9075418, 197),
(7975985, 197),
(4119016, 995),
(3784567, 335),
(4966626, 510),
(601955, 909),
(335899, 118),
(8489169, 952),
(5434179, 577),
(6073723, 581),
(1577247, 168),
(1479035, 639),
(601955, 104),
(9991317, 750),
(8489169, 581),
(6522744, 919),
(5608445, 668),
(1479035, 189),
(3749934, 127),
(7624343, 480),
(1479035, 103),
(8875579, 137),
(3048819, 106),
(6857660, 344),
(3060041, 197),
(9536313, 371),
(9930227, 577),
(4657431, 289),
(5608445, 168),
(2011096, 687),
(2694446, 980),
(2344311, 510),
(6345058, 622),
(9536313, 919),
(9637679, 747),
(6522744, 480),
(6073723, 941),
(7975985, 969),
(6312078, 209),
(8875579, 209),
(335899, 835),
(2317807, 252),
(6900706, 639),
(2011096, 687),
(4138230, 344),
(6312078, 168),
(9068154, 622),
(8327442, 371),
(4327203, 952),
(7380728, 630),
(8327442, 335),
(8165512, 694),
(2779383, 694),
(6073723, 941),
(1577247, 567),
(389279, 993),
(5608445, 480),
(6857660, 799),
(7029551, 358),
(2549792, 104),
(7624343, 565),
(2694446, 103),
(4138230, 993),
(4966626, 878),
(8875579, 480),
(6900706, 555),
(4138230, 878),
(179479, 371),
(2291088, 613),
(1577247, 327),
(335899, 327),
(335899, 335),
(1479035, 555),
(689621, 422),
(4138230, 668),
(3317935, 285),
(3678640, 952),
(2011096, 969),
(9399147, 856),
(4119016, 622),
(9068154, 441),
(6073723, 580),
(6522744, 953),
(56406, 327),
(6522744, 137),
(8327442, 613),
(8875579, 285),
(4369065, 630),
(8327442, 510),
(1479035, 567),
(4369065, 909),
(3232103, 941),
(5318220, 980),
(6125567, 613),
(5608445, 621),
(9285035, 875),
(1577247, 781),
(7380728, 668),
(1577247, 781),
(2235078, 622),
(9536313, 240),
(5318220, 104),
(9163047, 131),
(4966626, 750),
(601955, 285),
(3296640, 687),
(3048819, 327),
(5095209, 394),
(8165512, 722),
(2985700, 159),
(6312078, 335),
(2252062, 715),
(2985700, 422),
(8327442, 103),
(3048819, 209),
(335899, 687),
(2694446, 650),
(3048819, 103),
(5486128, 327),
(1479035, 639),
(9593069, 573),
(689621, 106),
(9075418, 856),
(3317935, 801),
(9182026, 573),
(9068154, 555),
(5405846, 480),
(7029551, 909),
(3060041, 650),
(9637679, 285),
(4327203, 137),
(9728391, 630),
(3296640, 781),
(3784567, 527),
(57138, 371),
(7975985, 567),
(1577247, 127),
(3296640, 344),
(9625985, 127),
(6900706, 941),
(5434179, 104),
(9075418, 969),
(601955, 197),
(179479, 650),
(2317807, 613),
(7443582, 289),
(6073723, 386),
(5060239, 197),
(6312078, 717),
(57138, 919),
(9728391, 639),
(3595926, 168),
(4119016, 159),
(9593069, 969),
(3232103, 980),
(3048819, 327),
(5434179, 510),
(5405846, 835),
(9399147, 694),
(9399147, 613),
(6522744, 137),
(5434179, 344),
(2694446, 801),
(8165512, 510),
(3317935, 127),
(3296640, 835),
(9593069, 189),
(4774484, 358),
(9182026, 555),
(6345058, 835),
(8875579, 722),
(2317807, 527),
(6073723, 511),
(6522744, 358),
(1577247, 953),
(1479035, 371),
(6522744, 104),
(9399147, 131),
(335899, 577),
(6312078, 565),
(2011096, 131),
(601955, 510),
(5095209, 919),
(6073723, 137),
(6900706, 285),
(5095209, 694),
(9182026, 371),
(8875579, 717),
(6522744, 799),
(2694446, 189),
(2235078, 386),
(2694446, 394),
(4119016, 386),
(7975985, 801),
(5405846, 480),
(3048819, 555),
(9182026, 581),
(2317807, 985),
(3048819, 581),
(5486128, 668),
(5095209, 142),
(2291088, 781),
(5095209, 856),
(3232103, 159),
(9075418, 344),
(2235078, 985),
(6312078, 952),
(5434179, 480),
(7624343, 565),
(1948145, 722),
(9182026, 993),
(6522744, 159),
(474378, 565),
(2694446, 106),
(8875579, 252),
(5608445, 581),
(8875579, 952),
(9182026, 314),
(5318220, 197),
(9536313, 289),
(1479035, 717),
(474378, 639),
(3317935, 240),
(2291088, 835),
(9728391, 909),
(2344311, 694),
(9163047, 480),
(9625985, 652),
(1948145, 472),
(2344311, 344),
(3595926, 527),
(3678640, 952),
(9182026, 527),
(8165512, 650),
(56406, 687),
(3749934, 131),
(8489169, 386),
(9399147, 527),
(8165512, 875),
(7944332, 581),
(8489169, 980),
(7944332, 555),
(6073723, 335),
(6522744, 652),
(2235078, 652),
(5434179, 386),
(3784567, 985),
(601955, 285),
(9075418, 781);

-- --------------------------------------------------------

--
-- بنية الجدول `departments`
--

CREATE TABLE `departments` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college_number` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `departments`
--

INSERT INTO `departments` (`code`, `name`, `college_number`) VALUES
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 'Stamm Ltd', 5645),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'Ratke, Schimmel and Osinski', 5645),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 'Carroll and Sons', 8167),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 'Kub-O\'Reilly', 8167),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 'Ritchie, Fisher and Keebler', 2692),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'Pfannerstill-Marks', 2692),
('expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 'Quitzon, Greenholt and Terry', 5645),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 'O\'Conner Inc', 8167),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 'Jast, Dicki and Volkman', 5645),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'Ondricka-Jacobi', 8167),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'Cassin, Senger and Von', 5645),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'Wuckert, McLaughlin and Kovacek', 8167),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 'Leuschke-Hermann', 2692),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'Bednar and Sons', 2692),
('ut-ullam-est-velit-occaecati-mollitia-vel-aut', 'Sipes LLC', 8167);

-- --------------------------------------------------------

--
-- بنية الجدول `department_courses`
--

CREATE TABLE `department_courses` (
  `department_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_number` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `department_courses`
--

INSERT INTO `department_courses` (`department_code`, `course_number`) VALUES
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 581),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 533),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 127),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 137),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 137),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 799),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 118),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 285),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 717),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 103),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 252),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 510),
('ut-ullam-est-velit-occaecati-mollitia-vel-aut', 240),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 422),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 394),
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 472),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 106),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 252),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 142),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 344),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 875),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 717),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 835),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 209),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 358),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 335),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 197),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 103),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 835),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 159),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 289),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 835),
('ut-ullam-est-velit-occaecati-mollitia-vel-aut', 835),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 168),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 289),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 630),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 952),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 209),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 450),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 131),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 510),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 103),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 652),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 952),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 652),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 127),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 969),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 240),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 909),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 993),
('expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 131),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 856),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 104),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 527),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 285),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 980),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 527),
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 189),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 613),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 919),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 781),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 142),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 835),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 510),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 668),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 159),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 694),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 441),
('expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 252),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 159),
('dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 801),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 480),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 209),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 103),
('unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 285);

-- --------------------------------------------------------

--
-- بنية الجدول `department_phones`
--

CREATE TABLE `department_phones` (
  `department_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `department_phones`
--

INSERT INTO `department_phones` (`department_code`, `phone`) VALUES
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', '+1 (812) 427-712'),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', '(336) 403-5512'),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', '+1-786-540-0862'),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', '1-351-381-7948'),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', '989-279-0616'),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', '+1 (940) 757-735'),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', '+1-209-572-9042'),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', '734.371.3294'),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', '+1 (575) 653-672'),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', '512-822-9254'),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', '+1 (615) 659-423'),
('expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', '1-361-956-0242'),
('expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', '213.966.6429'),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', '+19192729451'),
('rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', '+17142742521'),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', '+1-332-597-3571'),
('sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', '281-980-3594'),
('quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', '1-629-873-1147'),
('ut-ullam-est-velit-occaecati-mollitia-vel-aut', '531.976.2018'),
('ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', '(229) 924-7360'),
('expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', '(786) 290-7647'),
('nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', '+16783325205'),
('aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', '1-458-326-5198'),
('perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', '1-678-308-1561'),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', '+1-341-294-8017'),
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', '601.701.8840'),
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', '+1 (812) 637-996'),
('alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', '+1.330.920.1603'),
('nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', '1-469-630-0339'),
('doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', '(646) 929-0849');

-- --------------------------------------------------------

--
-- بنية الجدول `sections`
--

CREATE TABLE `sections` (
  `section_number` bigint(20) UNSIGNED NOT NULL,
  `instructor_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `sections`
--

INSERT INTO `sections` (`section_number`, `instructor_name`, `semester`, `year`) VALUES
(56406, 'Barton Ziemann', 'Semester 2', 1980),
(57138, 'Harmon Adams', 'Semester 2', 1986),
(179479, 'Alvis Bogan', 'Semester 2', 1984),
(335899, 'Milford Shields', 'Semester 2', 1988),
(389279, 'Roosevelt McLaughlin', 'Semester 2', 2018),
(474378, 'Harmon Adams', 'Semester 2', 1983),
(601955, 'Caleigh Schumm', 'Semester 2', 1993),
(689621, 'Lora Daniel', 'Semester 2', 1997),
(1479035, 'Prince Tillman', 'Semester 1', 1980),
(1577247, 'Wellington Pacocha', 'Semester 3', 1981),
(1903044, 'Tavares Beier', 'Semester 2', 1990),
(1948145, 'Anais Berge', 'Semester 2', 2000),
(2011096, 'Khalid Flatley', 'Semester 1', 2023),
(2235078, 'Edwina Terry', 'Semester 1', 2006),
(2252062, 'Ophelia Wunsch', 'Semester 2', 2013),
(2291088, 'Tavares Beier', 'Semester 1', 2010),
(2317807, 'Candelario Kohler', 'Semester 2', 2007),
(2344311, 'Gaylord Hauck', 'Semester 1', 1994),
(2549792, 'Khalid Flatley', 'Semester 2', 1990),
(2694446, 'Anais Berge', 'Semester 3', 1978),
(2779383, 'Isabel Weissnat', 'Semester 2', 2011),
(2985700, 'Tavares Beier', 'Semester 2', 1978),
(3048819, 'Tiffany Ullrich', 'Semester 1', 1983),
(3060041, 'Halie Grant', 'Semester 2', 1982),
(3232103, 'Milford Shields', 'Semester 1', 1977),
(3296640, 'Electa Reilly', 'Semester 2', 1982),
(3317935, 'Harmon Adams', 'Semester 1', 1985),
(3595926, 'Herta Hoppe', 'Semester 3', 2014),
(3678640, 'Gabriella Marvin', 'Semester 3', 1977),
(3749934, 'Keely Mills', 'Semester 2', 2018),
(3784567, 'Davion Emmerich', 'Semester 3', 2013),
(4119016, 'Winnifred Koepp', 'Semester 1', 1987),
(4138230, 'Sheila Schumm', 'Semester 3', 2005),
(4327203, 'Davion Emmerich', 'Semester 1', 1978),
(4369065, 'Durward O\'Connell', 'Semester 1', 1997),
(4657431, 'Tre Ullrich', 'Semester 1', 1987),
(4774484, 'Mike Beatty', 'Semester 1', 1997),
(4966626, 'Milford Shields', 'Semester 2', 2000),
(5060239, 'Harmon Adams', 'Semester 1', 1981),
(5095209, 'Ford Kirlin', 'Semester 3', 1989),
(5318220, 'Maybell Greenfelder', 'Semester 2', 1975),
(5405846, 'Gabriella Marvin', 'Semester 1', 2011),
(5434179, 'Caleigh Schumm', 'Semester 3', 1998),
(5486128, 'Ford Kirlin', 'Semester 3', 2005),
(5608445, 'Tiffany Ullrich', 'Semester 2', 1982),
(6073723, 'Wellington Pacocha', 'Semester 3', 2014),
(6125567, 'Khalid Flatley', 'Semester 3', 1994),
(6312078, 'Eveline Yundt', 'Semester 3', 1973),
(6345058, 'Emmanuel Hand', 'Semester 2', 1975),
(6522744, 'Dina Windler', 'Semester 1', 1990),
(6857660, 'Dedric Welch', 'Semester 2', 1983),
(6900706, 'Joanny Stark', 'Semester 3', 1986),
(7029551, 'Gaylord Hauck', 'Semester 2', 1982),
(7380728, 'Camylle Lubowitz', 'Semester 3', 2017),
(7443582, 'Harmon Adams', 'Semester 2', 1999),
(7624343, 'Caleigh Schumm', 'Semester 1', 1970),
(7944332, 'Alberto Abshire', 'Semester 2', 1997),
(7975985, 'Maybell Greenfelder', 'Semester 3', 2005),
(8165512, 'Caleigh Schumm', 'Semester 2', 1975),
(8327442, 'Fae Howe', 'Semester 3', 1981),
(8489169, 'Ryder Halvorson', 'Semester 3', 1976),
(8875579, 'Kara Hand', 'Semester 2', 1974),
(9068154, 'Durward O\'Connell', 'Semester 2', 1979),
(9075418, 'Ford Kirlin', 'Semester 2', 1989),
(9163047, 'Keely Mills', 'Semester 3', 1975),
(9182026, 'Camylle Lubowitz', 'Semester 1', 1970),
(9285035, 'Caleigh Schumm', 'Semester 2', 1974),
(9399147, 'Harmon Adams', 'Semester 1', 2003),
(9536313, 'Gaylord Hauck', 'Semester 2', 2018),
(9593069, 'Halie Grant', 'Semester 1', 2001),
(9625985, 'Tre Ullrich', 'Semester 1', 2007),
(9637679, 'Lora Daniel', 'Semester 1', 1978),
(9728391, 'Rosalyn Leannon', 'Semester 2', 1982),
(9930227, 'Darrick Abshire', 'Semester 1', 1985),
(9991317, 'Ryder Halvorson', 'Semester 1', 2019);

-- --------------------------------------------------------

--
-- بنية الجدول `students`
--

CREATE TABLE `students` (
  `national_id` bigint(20) UNSIGNED NOT NULL,
  `student_number` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `major_department_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minor_department_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `students`
--

INSERT INTO `students` (`national_id`, `student_number`, `first_name`, `middle_name`, `last_name`, `apartment_number`, `street_number`, `city`, `state`, `postal_code`, `phone`, `birthdate`, `gender`, `level`, `major_department_code`, `minor_department_code`) VALUES
(148269469895, 10857899, 'Percy', 'Crona', 'Connelly', '4261', 'Trail', 'Ebbamouth', 'Tuvalu', '18412', '+12796900556', '2021-02-26', 'M', 3, 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(974502789959, 11378751, 'Cody', 'Koch', 'McClure', '776', 'Garden', 'Mavishaven', 'Mauritius', '77544-4158', '628-952-2609', '1972-10-14', 'M', 11, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(100574583148, 14379692, 'Name', 'Durgan', 'Dicki', '96103', 'Mews', 'Richiestad', 'Antarctica (the territory South of 60 deg S)', '00488', '+1-541-448-2687', '1978-10-06', 'F', 2, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(824794331233, 18237624, 'Catherine', 'Stehr', 'Runte', '50184', 'Tunnel', 'North Otho', 'Seychelles', '84193', '1-281-561-8028', '1983-02-26', 'F', 8, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(899630313025, 18925042, 'Kristopher', 'Reynolds', 'Halvorson', '1679', 'Wall', 'New D\'angelotown', 'Christmas Island', '85789', '279.406.1098', '2002-08-27', 'M', 9, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(662523071622, 20282258, 'Hettie', 'Larkin', 'Dietrich', '1652', 'Street', 'Conroyberg', 'Costa Rica', '81818-6304', '1-973-303-7527', '1977-11-01', 'M', 1, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(178376665267, 20393878, 'Raymond', 'Larson', 'Kerluke', '182', 'Motorway', 'Cristshire', 'Moldova', '24687', '+1 (669) 918-611', '1976-07-05', 'F', 6, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(153026948614, 21520056, 'Solon', 'Bergstrom', 'Schumm', '515', 'Court', 'West Mackenzieberg', 'Ghana', '05326-5918', '1-947-387-9331', '2008-11-21', 'M', 8, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(448887179982, 23365585, 'Leora', 'Heller', 'Gorczany', '7540', 'Station', 'New Shayna', 'Kuwait', '46969-6145', '678-955-5502', '1976-04-14', 'M', 5, 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(407983254035, 24450699, 'Guy', 'Dickinson', 'Heathcote', '164', 'Shores', 'West Leliahaven', 'Armenia', '00485', '+1.986.679.5602', '1977-05-04', 'F', 5, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(642082669763, 26063202, 'Delbert', 'Renner', 'McCullough', '4641', 'Cove', 'Rebaville', 'Lesotho', '02451', '+13095279450', '1994-01-27', 'F', 9, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(602744908835, 26715559, 'Joaquin', 'Barton', 'Reinger', '386', 'Plaza', 'Mabelborough', 'Saint Vincent and the Grenadines', '91154-4269', '(585) 451-0636', '2005-02-24', 'F', 2, 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(767419779645, 27738160, 'Josianne', 'Casper', 'Pacocha', '83987', 'Locks', 'North Brendan', 'Palau', '13300', '+1.878.683.6460', '2003-06-20', 'M', 9, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(774266290166, 28279065, 'Annabel', 'Carroll', 'Witting', '9990', 'Wells', 'Bartellberg', 'Estonia', '90170', '907-652-2124', '1974-01-17', 'F', 3, 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(681503749886, 28288369, 'Bell', 'Barton', 'Lehner', '7265', 'Corner', 'Port Shanelle', 'Saint Helena', '51514-3318', '(234) 538-0466', '1991-09-17', 'F', 3, 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(141186163471, 28392394, 'Katheryn', 'Rau', 'Lakin', '8244', 'Expressway', 'New Cassieborough', 'Guinea', '36793-5486', '+1.424.562.9598', '1982-08-04', 'M', 5, 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(684581487529, 30644587, 'Anthony', 'Buckridge', 'Kuphal', '8811', 'Glens', 'Noemihaven', 'Norfolk Island', '32981-3808', '+1 (410) 222-225', '2022-09-21', 'M', 12, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(849383616683, 30690053, 'Brown', 'Armstrong', 'Connelly', '8266', 'Forge', 'New Martine', 'Moldova', '11484-9694', '+1 (385) 581-945', '1998-07-24', 'M', 2, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(701364195486, 31884232, 'Alia', 'Stark', 'Hackett', '70491', 'Crossing', 'West Mckenzie', 'Bulgaria', '31618-1419', '+1-531-652-2183', '1992-03-22', 'M', 6, 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(808054745316, 33322555, 'Kelsie', 'Bins', 'Hegmann', '2986', 'Station', 'South Mayestad', 'Kazakhstan', '17756-5682', '+1-925-545-8303', '2011-11-18', 'F', 1, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(127531104538, 34442951, 'Burley', 'Pouros', 'Bernier', '2064', 'Ridge', 'East Clarabelleport', 'Liberia', '26086-4615', '+1-860-213-1537', '2003-03-22', 'M', 7, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia'),
(902881348429, 34746718, 'Haylie', 'Schneider', 'Olson', '73740', 'Extensions', 'Casperbury', 'Liechtenstein', '09973-4972', '(978) 285-9812', '2005-08-24', 'F', 7, 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(434562465381, 35210412, 'Ernestine', 'Koelpin', 'Strosin', '89575', 'Plains', 'Marciachester', 'Moldova', '33979-0174', '+18208150031', '2008-09-21', 'F', 5, 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(184856691245, 35708771, 'Kayley', 'Mante', 'Bashirian', '8662', 'Square', 'Lake Janessahaven', 'Cocos (Keeling) Islands', '62776-3773', '603-322-7923', '1998-02-10', 'F', 3, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(984813026482, 35860826, 'Zula', 'Boyle', 'Littel', '35550', 'Rapids', 'Oriechester', 'Cook Islands', '47916-7957', '(463) 517-0492', '1973-10-20', 'M', 1, 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia'),
(470341121824, 36168587, 'Elvera', 'Bernhard', 'Bode', '72638', 'Oval', 'West Porter', 'Mozambique', '33685', '+1 (580) 291-004', '1991-07-19', 'F', 7, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(571823553387, 38942268, 'Janelle', 'Waters', 'Muller', '8385', 'Track', 'Greenside', 'Armenia', '86300-9763', '435-994-8997', '2019-10-30', 'M', 2, 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(408124264103, 39363621, 'Kayley', 'Schroeder', 'Schultz', '880', 'Orchard', 'Jaydafort', 'Grenada', '61830-7243', '862.324.7126', '1994-02-16', 'M', 6, 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(366110617008, 39735601, 'Lula', 'Satterfield', 'Will', '63036', 'Crescent', 'Swaniawskiville', 'Lao People\'s Democratic Republic', '58860-1804', '484.419.9426', '1985-10-31', 'M', 3, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(720987335941, 40347573, 'Arch', 'Carter', 'Blick', '50873', 'Shoals', 'Stacymouth', 'Botswana', '48355', '361.613.8089', '2015-05-21', 'F', 2, 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(384018143241, 42005425, 'Jairo', 'Lang', 'Rippin', '44658', 'Mews', 'Dachshire', 'Canada', '32303-5824', '(617) 856-0779', '1974-10-31', 'F', 4, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(646591024311, 42666855, 'Stephan', 'Hartmann', 'Gleichner', '381', 'Parkways', 'West Fred', 'Slovakia (Slovak Republic)', '70430-0083', '(314) 209-2558', '2021-06-22', 'M', 11, 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(879779939751, 42743934, 'Elenor', 'Bednar', 'Kling', '8238', 'Island', 'South Marianburgh', 'Latvia', '37757-0028', '218.900.6737', '2010-03-30', 'F', 1, 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(461262359256, 43101732, 'Vern', 'Mann', 'Boehm', '8139', 'Keys', 'Klockotown', 'Netherlands', '69570', '+1-737-780-6625', '2012-04-01', 'M', 10, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(529697307829, 45021650, 'Damian', 'Huels', 'Runolfsson', '88281', 'Rapids', 'Taureanstad', 'Kazakhstan', '66312-2290', '276.980.3466', '2010-08-15', 'M', 9, 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(622082201011, 48094770, 'Augustus', 'Feest', 'Rogahn', '993', 'Tunnel', 'Magdalenburgh', 'Brunei Darussalam', '09068-0873', '1-930-959-5498', '1977-04-16', 'F', 12, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(462122703634, 48389582, 'Margarette', 'Oberbrunner', 'Moen', '1919', 'Trafficway', 'Kuhnfurt', 'Lithuania', '19994', '+15095507361', '2019-02-08', 'F', 9, 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(161550481889, 48526269, 'Summer', 'Mills', 'Franecki', '231', 'Mills', 'West Kathlynstad', 'Tajikistan', '15188-5364', '830.523.1684', '1980-01-24', 'F', 4, 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(836565056713, 51612227, 'Ignacio', 'Rippin', 'Schoen', '15275', 'Unions', 'Reichertchester', 'Montenegro', '37116', '1-206-810-5948', '1973-11-19', 'F', 5, 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(481271284766, 51833715, 'Art', 'Simonis', 'Cruickshank', '61573', 'Meadows', 'Port Virgilmouth', 'Barbados', '22742-9444', '954-712-1774', '2022-11-13', 'M', 1, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(760932750957, 53826603, 'Watson', 'Greenholt', 'Durgan', '1453', 'Junctions', 'New Bryon', 'Liberia', '65586', '224-379-4201', '2012-08-21', 'F', 7, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(901174189965, 53952212, 'Alexander', 'Hyatt', 'Doyle', '37202', 'Ranch', 'Port Zenafort', 'Mauritania', '95296-0718', '(253) 457-9748', '1987-11-29', 'M', 11, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(303238450940, 54411421, 'Gavin', 'Gerhold', 'Shields', '37901', 'Groves', 'Schillermouth', 'Thailand', '83363', '732-215-8374', '1998-09-19', 'F', 9, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(188005312388, 54972827, 'Kiarra', 'Welch', 'Sawayn', '137', 'Ways', 'New Dantebury', 'Vanuatu', '86207-7766', '325.367.3924', '1977-06-08', 'M', 2, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(886901964103, 55419117, 'Kyleigh', 'Ortiz', 'Murphy', '50141', 'Falls', 'Port Maidafort', 'Antarctica (the territory South of 60 deg S)', '43454-6862', '+1 (564) 442-597', '1980-11-12', 'F', 6, 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam'),
(110493625613, 58834718, 'Isom', 'Farrell', 'Bernier', '2462', 'Locks', 'South Ken', 'Namibia', '48184-0153', '+1-680-997-6912', '2021-02-10', 'M', 11, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(745551386740, 58905726, 'Carissa', 'Fahey', 'Lynch', '44543', 'Fields', 'Pricemouth', 'Bangladesh', '91500-8107', '281.234.5175', '2014-01-23', 'M', 9, 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(967416635616, 62880077, 'David', 'Hagenes', 'Bartoletti', '2468', 'Cliff', 'East Conor', 'San Marino', '22882', '+13073268920', '1983-05-03', 'M', 4, 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(404870546546, 63629834, 'Xavier', 'Walsh', 'Rohan', '525', 'Spurs', 'Cartermouth', 'Ghana', '64655-4168', '+17546608192', '2009-08-04', 'M', 6, 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(119173998955, 63777531, 'Larry', 'Dooley', 'Jast', '975', 'Fields', 'New Rebeka', 'Belize', '28055-9957', '(307) 888-8349', '1980-06-28', 'F', 3, 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(968176542270, 64508747, 'Valerie', 'Collier', 'Russel', '199', 'Prairie', 'Willmsshire', 'Solomon Islands', '01284-3766', '(904) 532-8482', '1978-09-06', 'F', 11, 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(411198085751, 64848333, 'Shana', 'Raynor', 'Bashirian', '950', 'Court', 'Tremblaymouth', 'Guadeloupe', '88806', '+1-303-953-5960', '1972-01-28', 'F', 11, 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(169701946510, 66055913, 'Rosa', 'Becker', 'Ankunding', '52932', 'Rest', 'Klingstad', 'Mongolia', '03708-3914', '820.944.7304', '1972-07-06', 'M', 9, 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(953337818668, 67187994, 'Edgar', 'Deckow', 'Towne', '861', 'Oval', 'Yolandahaven', 'Jamaica', '00323', '217.678.4124', '1996-05-31', 'F', 3, 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(828129092129, 67317160, 'Alena', 'Tremblay', 'Cassin', '140', 'Port', 'Satterfieldbury', 'Guatemala', '15353-6681', '1-773-218-2289', '1972-05-29', 'F', 4, 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(727720585182, 67421765, 'Raegan', 'Walker', 'Murazik', '2055', 'Pines', 'West Milford', 'Lithuania', '72911', '+13526572641', '1985-12-06', 'M', 9, 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(698092165690, 68341973, 'Adella', 'Schoen', 'Emmerich', '548', 'Extensions', 'Lake Bridie', 'Turkmenistan', '38883', '(502) 832-1188', '1999-08-23', 'M', 1, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(188153832070, 68485588, 'Maya', 'Cole', 'Terry', '76502', 'Pine', 'Maziemouth', 'Barbados', '54638-2564', '1-769-684-4435', '1990-08-20', 'M', 12, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(373589861543, 70222239, 'Esther', 'Schmitt', 'Hartmann', '7017', 'Knoll', 'Lake Dillan', 'Tuvalu', '24851-8875', '351-605-5274', '1977-03-17', 'M', 6, 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam'),
(480870756701, 76105482, 'Pauline', 'Rice', 'Crist', '82242', 'Flats', 'Kamrenbury', 'Brunei Darussalam', '03837', '1-773-523-3850', '1997-02-15', 'F', 8, 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(573795829327, 76383720, 'Glennie', 'Sipes', 'Aufderhar', '92949', 'Mountain', 'Dickensmouth', 'Benin', '78125', '907.467.6027', '2015-10-31', 'M', 5, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(678747340094, 80111151, 'Sophia', 'Mann', 'Fay', '7767', 'Springs', 'Kuhnville', 'Sri Lanka', '63086', '458.586.6467', '1982-04-09', 'M', 1, 'ut-ullam-est-velit-occaecati-mollitia-vel-aut', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(455779616549, 81225085, 'Marcos', 'Mante', 'Marvin', '800', 'Cliffs', 'Lake Chasity', 'Solomon Islands', '80773', '+16462649122', '2012-12-06', 'M', 9, 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(235466452132, 81914294, 'Loma', 'Jast', 'Crooks', '99775', 'Ports', 'Lynnside', 'Finland', '00562-8086', '331-357-5909', '1973-10-28', 'F', 3, 'ut-ullam-est-velit-occaecati-mollitia-vel-aut', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(775999027014, 82164390, 'Carolyn', 'Borer', 'Mitchell', '68300', 'Prairie', 'New Sabina', 'Mongolia', '53523-0393', '573-866-5774', '1999-11-10', 'M', 9, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(320763048182, 82372900, 'Riley', 'Olson', 'Nikolaus', '45225', 'Rapids', 'Heaneyfurt', 'India', '20840', '+1.458.266.5452', '2005-01-18', 'F', 2, 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(961739597978, 83316647, 'Susana', 'Flatley', 'Hermiston', '29673', 'Stream', 'North Drakestad', 'Armenia', '53569-9723', '+1.906.428.8907', '2012-07-21', 'F', 6, 'ut-ullam-est-velit-occaecati-mollitia-vel-aut', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(890871188058, 84655927, 'Norris', 'Carter', 'Rath', '810', 'Terrace', 'Hettieshire', 'Uruguay', '97284-4556', '(702) 670-0308', '1980-05-25', 'M', 11, 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(915188198703, 85271816, 'Ruby', 'Quitzon', 'Mraz', '3791', 'Green', 'Connellyland', 'Liechtenstein', '87584-5726', '+1 (878) 963-682', '1981-12-17', 'F', 6, 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(207812757214, 93525669, 'King', 'Cummings', 'Runolfsson', '9778', 'Fall', 'Mooreborough', 'China', '98583', '1-801-938-8397', '2012-01-16', 'F', 6, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(175705992185, 94570146, 'Marianne', 'Hayes', 'Weimann', '895', 'Prairie', 'Wolffhaven', 'Sweden', '48007-7081', '1-769-458-1984', '2000-12-09', 'F', 8, 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(629497122217, 94851381, 'Jennie', 'Nienow', 'Von', '2793', 'Islands', 'East Ayanaberg', 'Japan', '12281', '+1-785-901-2486', '1997-05-22', 'M', 10, 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(317492144773, 95980066, 'Ian', 'Kertzmann', 'White', '15183', 'Meadow', 'Brockmouth', 'Guinea', '79001-7726', '248.870.2480', '2014-04-24', 'M', 6, 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(463337369904, 97052163, 'Edgar', 'Buckridge', 'Runolfsson', '92685', 'Extensions', 'Lake Nicoleberg', 'Venezuela', '72969', '1-651-486-7991', '1997-06-28', 'M', 8, 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(917220686666, 99029482, 'Myrtle', 'Buckridge', 'Gutkowski', '701', 'Trafficway', 'Abernathyville', 'Equatorial Guinea', '04502', '+1-559-475-4286', '1991-03-26', 'M', 10, 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia');

-- --------------------------------------------------------

--
-- بنية الجدول `student_courses`
--

CREATE TABLE `student_courses` (
  `student_number` bigint(20) UNSIGNED NOT NULL,
  `course_number` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `student_courses`
--

INSERT INTO `student_courses` (`student_number`, `course_number`) VALUES
(55419117, 621),
(51833715, 197),
(58834718, 581),
(99029482, 168),
(35708771, 285),
(67187994, 668),
(67187994, 555),
(42743934, 995),
(94851381, 480),
(26063202, 289),
(48389582, 335),
(63777531, 919),
(84655927, 952),
(55419117, 581),
(84655927, 480),
(34746718, 386),
(35210412, 581),
(53826603, 480),
(99029482, 622),
(76383720, 875),
(28392394, 995),
(20393878, 668),
(82372900, 801),
(68485588, 565),
(20282258, 480),
(42005425, 717),
(26063202, 622),
(64848333, 941),
(31884232, 750),
(48526269, 801),
(26715559, 613),
(76105482, 995),
(82164390, 127),
(10857899, 630),
(82164390, 289),
(11378751, 993),
(94851381, 327),
(28392394, 441),
(67317160, 993),
(20282258, 952),
(81914294, 622),
(70222239, 969),
(30644587, 875),
(43101732, 580),
(80111151, 722),
(28279065, 995),
(76383720, 314),
(55419117, 285),
(26063202, 142),
(84655927, 450),
(39363621, 422),
(81225085, 652),
(34746718, 668),
(81914294, 511),
(21520056, 652),
(42666855, 386),
(95980066, 995),
(18237624, 621),
(45021650, 650),
(14379692, 993),
(10857899, 441),
(35860826, 980),
(51833715, 441),
(83316647, 722),
(53826603, 209),
(23365585, 875),
(99029482, 127),
(28279065, 127),
(67187994, 652),
(26715559, 276),
(31884232, 909),
(55419117, 472),
(76383720, 209),
(40347573, 875),
(84655927, 168),
(95980066, 555),
(67421765, 209),
(42743934, 344),
(35210412, 630),
(67421765, 189),
(80111151, 103),
(48526269, 327),
(42743934, 668),
(39735601, 168),
(62880077, 650),
(28279065, 799),
(70222239, 216),
(26063202, 621),
(53952212, 276),
(28288369, 450),
(48526269, 639),
(83316647, 801),
(63777531, 650),
(81225085, 750),
(42743934, 722),
(42666855, 835),
(27738160, 533),
(24450699, 168),
(28279065, 450),
(70222239, 510),
(40347573, 371),
(33322555, 527),
(30690053, 694),
(30644587, 335),
(93525669, 131),
(54972827, 168),
(64508747, 197),
(26063202, 127),
(51833715, 386),
(67187994, 142),
(39363621, 985),
(28279065, 240),
(34746718, 993),
(51833715, 835),
(48389582, 577),
(58834718, 909),
(63777531, 127),
(67187994, 276),
(20282258, 450),
(55419117, 969),
(35708771, 394),
(33322555, 875),
(67317160, 118),
(97052163, 189),
(66055913, 422),
(94570146, 985),
(81225085, 639),
(24450699, 276),
(26715559, 197),
(42666855, 314),
(45021650, 799),
(80111151, 168),
(76383720, 289),
(95980066, 715),
(42666855, 103),
(58905726, 581),
(35708771, 687),
(68485588, 577),
(18925042, 801),
(51612227, 189),
(51612227, 394),
(20393878, 717),
(99029482, 371),
(18237624, 511),
(81914294, 314),
(39735601, 565),
(26063202, 189),
(54972827, 104),
(68341973, 358),
(84655927, 919),
(31884232, 386),
(82372900, 750),
(35860826, 747),
(48094770, 835),
(54411421, 450),
(67187994, 952),
(23365585, 717),
(54972827, 621),
(48389582, 371),
(63777531, 511),
(28279065, 358),
(93525669, 875),
(43101732, 142),
(45021650, 565),
(54411421, 909),
(26715559, 276),
(18237624, 668),
(48389582, 969),
(76383720, 314),
(40347573, 801),
(58905726, 652),
(94851381, 240),
(94851381, 573),
(97052163, 565),
(68485588, 909),
(48526269, 285),
(10857899, 581),
(30644587, 252),
(94570146, 480),
(70222239, 622),
(34442951, 450),
(67421765, 878),
(68341973, 878),
(18237624, 240),
(63629834, 106),
(48094770, 622),
(33322555, 668),
(39363621, 371),
(81914294, 919),
(10857899, 565),
(10857899, 668),
(80111151, 511),
(39735601, 580),
(34442951, 276),
(35708771, 335),
(54972827, 289),
(76383720, 189),
(80111151, 104),
(14379692, 386),
(55419117, 358),
(93525669, 941),
(82164390, 127),
(63777531, 687),
(83316647, 127),
(35860826, 953),
(18925042, 993),
(34442951, 573),
(97052163, 980),
(21520056, 650),
(18237624, 613),
(34442951, 953),
(68341973, 104),
(97052163, 856),
(35210412, 216),
(31884232, 441),
(53826603, 952),
(23365585, 909),
(33322555, 344),
(67317160, 941),
(66055913, 131),
(81225085, 276),
(84655927, 715),
(40347573, 240),
(18237624, 799),
(68341973, 567),
(14379692, 581),
(24450699, 371),
(26063202, 639),
(39735601, 386),
(36168587, 953),
(42743934, 878),
(18237624, 450),
(70222239, 878),
(39363621, 985),
(28392394, 717),
(76105482, 450),
(42743934, 285),
(80111151, 335),
(53952212, 875),
(81914294, 580),
(42666855, 715),
(67421765, 580),
(30644587, 639),
(55419117, 581),
(18237624, 168),
(68485588, 781),
(66055913, 650),
(36168587, 127),
(43101732, 118),
(67421765, 952),
(48094770, 577),
(82372900, 613),
(26715559, 722),
(93525669, 137),
(48389582, 159),
(27738160, 567),
(31884232, 422),
(48389582, 750),
(18925042, 573),
(14379692, 189),
(54411421, 555),
(42666855, 142),
(99029482, 639),
(55419117, 252),
(97052163, 137),
(76105482, 131),
(54411421, 694),
(34746718, 952),
(95980066, 104),
(82372900, 533),
(45021650, 715),
(23365585, 555),
(67317160, 993),
(42743934, 909),
(95980066, 555),
(53952212, 621),
(28392394, 995),
(70222239, 919),
(21520056, 750),
(23365585, 131),
(18237624, 344),
(18925042, 131),
(66055913, 580),
(81914294, 142),
(63629834, 969),
(76105482, 613),
(64508747, 650),
(51833715, 131),
(30644587, 209),
(28392394, 953),
(81914294, 969),
(67317160, 941),
(81225085, 980),
(81914294, 197),
(58905726, 995),
(21520056, 106),
(26063202, 952),
(82164390, 472),
(10857899, 276),
(30690053, 480),
(28288369, 875),
(54972827, 799),
(28288369, 969),
(64848333, 799),
(67317160, 314),
(53826603, 106),
(85271816, 801),
(67317160, 652),
(18237624, 197),
(30690053, 335),
(67421765, 142),
(24450699, 694),
(68341973, 527),
(58905726, 875),
(33322555, 510),
(23365585, 142),
(67317160, 327),
(42005425, 781),
(99029482, 875),
(30644587, 511),
(28279065, 995),
(23365585, 240),
(26715559, 668),
(42666855, 289),
(66055913, 668),
(34442951, 118),
(94851381, 722),
(70222239, 422),
(42743934, 856),
(97052163, 104),
(34746718, 969),
(58905726, 527),
(26715559, 687),
(34442951, 715),
(30644587, 327),
(51833715, 993),
(28392394, 856),
(97052163, 747),
(82164390, 533),
(84655927, 159),
(58834718, 371),
(82372900, 555),
(23365585, 472),
(63629834, 450),
(53826603, 747),
(20393878, 639),
(81225085, 197),
(42005425, 639),
(28392394, 527),
(20393878, 875),
(34442951, 799),
(11378751, 327),
(94570146, 197),
(95980066, 555),
(21520056, 142),
(54411421, 285),
(40347573, 985),
(48094770, 909),
(68341973, 394),
(11378751, 527),
(94570146, 750),
(31884232, 668),
(31884232, 335),
(43101732, 715),
(21520056, 801),
(76383720, 580),
(35708771, 209),
(35210412, 856),
(94570146, 480),
(48094770, 103),
(42005425, 142),
(26063202, 159),
(33322555, 835),
(53952212, 189),
(58834718, 555),
(30690053, 510),
(20393878, 750),
(67421765, 289),
(82164390, 985),
(51612227, 993),
(82164390, 386),
(63777531, 142),
(53952212, 344),
(35708771, 573),
(68341973, 953),
(67421765, 919),
(36168587, 472),
(42743934, 985),
(66055913, 639),
(45021650, 668),
(38942268, 209),
(35708771, 856),
(30690053, 209),
(54972827, 103),
(97052163, 285),
(54411421, 103),
(30690053, 581),
(14379692, 580),
(67317160, 919),
(81225085, 103),
(20393878, 472),
(26063202, 750),
(64848333, 555),
(62880077, 386),
(38942268, 969),
(84655927, 106),
(21520056, 856),
(42743934, 668),
(20282258, 511),
(94570146, 314),
(85271816, 801),
(42743934, 276),
(26715559, 344),
(23365585, 993),
(64508747, 422),
(40347573, 875),
(48526269, 189),
(82372900, 131),
(42666855, 747),
(39735601, 137),
(23365585, 622),
(45021650, 909),
(95980066, 289),
(81914294, 118),
(82164390, 216),
(94851381, 668),
(97052163, 159),
(34442951, 118),
(38942268, 137),
(28279065, 799),
(94851381, 335),
(45021650, 985),
(94570146, 127),
(26715559, 565),
(39363621, 750),
(64848333, 142),
(39735601, 750),
(23365585, 953),
(93525669, 159),
(97052163, 919),
(80111151, 650),
(34442951, 567),
(51612227, 555),
(40347573, 580),
(84655927, 835),
(28288369, 394),
(70222239, 565),
(99029482, 573),
(48389582, 856),
(68485588, 533),
(40347573, 781),
(58905726, 252),
(53952212, 573),
(42666855, 480),
(94570146, 441),
(58834718, 565),
(42743934, 285),
(58834718, 510),
(63629834, 104),
(97052163, 527),
(63777531, 386),
(83316647, 799),
(94851381, 577),
(42005425, 565),
(76105482, 694),
(55419117, 980),
(21520056, 639),
(23365585, 209),
(66055913, 875),
(21520056, 630),
(39363621, 142),
(95980066, 137),
(58834718, 952),
(36168587, 386),
(76105482, 622),
(93525669, 878),
(40347573, 118),
(21520056, 573),
(20282258, 103),
(31884232, 555),
(39735601, 567),
(36168587, 722),
(94851381, 422),
(11378751, 565),
(35210412, 441),
(30644587, 441),
(48526269, 118),
(42005425, 137),
(62880077, 995),
(67317160, 652),
(54411421, 835),
(43101732, 909),
(30690053, 952),
(76105482, 565),
(64848333, 781),
(58834718, 856),
(39735601, 750),
(28392394, 613),
(99029482, 980),
(94851381, 985);

-- --------------------------------------------------------

--
-- بنية الجدول `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) UNSIGNED NOT NULL,
  `department_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `teachers`
--

INSERT INTO `teachers` (`id`, `first_name`, `last_name`, `email`, `salary`, `department_code`) VALUES
(1, 'Ophelia', 'Wunsch', 'hbeier@example.com', '18835.84', 'sequi-assumenda-maxime-nihil-vel-fugiat-aliquid-qui-quia'),
(2, 'Daron', 'Bailey', 'serena.lindgren@example.org', '48462.05', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(3, 'Velda', 'Howell', 'freinger@example.org', '28053.80', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(4, 'Werner', 'Rau', 'patricia.deckow@example.net', '48629.72', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(5, 'Herta', 'Hoppe', 'antoinette58@example.org', '23030.89', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(6, 'Maybell', 'Greenfelder', 'lisandro.breitenberg@example.net', '14326.17', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(7, 'Davion', 'Emmerich', 'taylor53@example.org', '49440.57', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(8, 'Camylle', 'Lubowitz', 'gusikowski.watson@example.com', '39338.99', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(9, 'Isabel', 'Weissnat', 'linwood70@example.net', '37467.04', 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam'),
(10, 'Price', 'Gusikowski', 'hbergstrom@example.com', '44980.97', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(11, 'Rasheed', 'Brekke', 'leta51@example.net', '20177.84', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(12, 'Walker', 'Carter', 'laurianne.von@example.net', '46426.26', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(13, 'Prince', 'Tillman', 'damore.mellie@example.org', '12885.59', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(14, 'Anais', 'Berge', 'qmurphy@example.com', '9709.34', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(15, 'Gerry', 'Bernhard', 'nicholas.oreilly@example.org', '4896.75', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(16, 'Alberto', 'Abshire', 'ruby.schimmel@example.net', '3239.47', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(17, 'Barton', 'Ziemann', 'fatima.champlin@example.com', '19653.11', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(18, 'Perry', 'Thompson', 'vwilkinson@example.com', '8432.57', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(19, 'Alvis', 'Bogan', 'keon.pollich@example.net', '15743.56', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(20, 'Electa', 'Reilly', 'joel.kuhic@example.com', '31453.05', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(21, 'Candelario', 'Kohler', 'dolly92@example.org', '37414.22', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(22, 'Jean', 'Hane', 'lacey39@example.com', '49575.33', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(23, 'Eveline', 'Yundt', 'marietta.collins@example.net', '15757.63', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(24, 'Halie', 'Grant', 'schaefer.bettie@example.org', '43362.42', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(25, 'Darrion', 'Kilback', 'lora19@example.com', '24263.88', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(26, 'Sheila', 'Schumm', 'linwood.spinka@example.org', '18294.52', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(27, 'August', 'Huels', 'robel.linda@example.com', '47407.04', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(28, 'Gaylord', 'Hauck', 'maiya.ledner@example.net', '3358.32', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(29, 'Dedric', 'Welch', 'myles.mcclure@example.net', '21251.76', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(30, 'Edwina', 'Terry', 'xritchie@example.net', '40945.80', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(31, 'Rosalyn', 'Leannon', 'ahodkiewicz@example.net', '15794.11', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(32, 'Jalyn', 'McGlynn', 'jswaniawski@example.org', '38505.39', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(33, 'Rachelle', 'Medhurst', 'uriel.robel@example.org', '22183.34', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(34, 'Khalid', 'Flatley', 'dturner@example.net', '46639.78', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(35, 'Caleigh', 'Schumm', 'ronaldo.daniel@example.org', '25515.39', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(36, 'Kara', 'Hand', 'dkautzer@example.org', '17825.22', 'dolore-tempore-ut-laborum-aut-consequatur-aut-nemo-error-eaque-eos-pariatur'),
(37, 'Ford', 'Kirlin', 'cherman@example.net', '37915.32', 'doloremque-ea-provident-sint-rerum-quasi-mollitia-aspernatur-qui-magnam-esse-sit-nam-quia'),
(38, 'Zita', 'Stracke', 'gerhold.lea@example.com', '29689.84', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(39, 'Tina', 'Herman', 'moconner@example.org', '14298.40', 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam'),
(40, 'Harmon', 'Adams', 'blanche.satterfield@example.net', '33773.72', 'expedita-similique-deleniti-similique-ratione-id-qui-illo-rerum-est-aut-ut-est-quibusdam'),
(41, 'Natalia', 'Ferry', 'benny.stracke@example.com', '17002.88', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(42, 'Dahlia', 'Schulist', 'dana71@example.com', '6534.20', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(43, 'Tiffany', 'Ullrich', 'gislason.dallin@example.net', '4348.01', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(44, 'Brain', 'Treutel', 'conn.durward@example.com', '11954.93', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(45, 'Clarissa', 'Hegmann', 'bergnaum.gabrielle@example.com', '49385.26', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(46, 'Emmanuel', 'Hand', 'jayce.carter@example.org', '39603.02', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(47, 'Jessica', 'White', 'carlo.reinger@example.org', '8725.54', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(48, 'Abraham', 'Smitham', 'vhane@example.org', '4794.12', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(49, 'Tre', 'Ullrich', 'russell.kub@example.net', '40138.88', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(50, 'Darrick', 'Abshire', 'savanah.bernier@example.org', '21284.03', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(51, 'Keely', 'Mills', 'gcruickshank@example.net', '24048.14', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(52, 'Dina', 'Windler', 'cspencer@example.net', '29070.65', 'expedita-suscipit-blanditiis-a-adipisci-et-ut-adipisci-debitis-molestias-perferendis'),
(53, 'Winnifred', 'Koepp', 'von.hosea@example.org', '46078.21', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(54, 'Ulises', 'Eichmann', 'rdamore@example.net', '30699.30', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(55, 'Martina', 'Smitham', 'colby.okon@example.org', '36868.76', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(56, 'Joanny', 'Stark', 'ndooley@example.net', '22861.40', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(57, 'Roosevelt', 'McLaughlin', 'kasey.goldner@example.net', '25205.93', 'nisi-vero-autem-sit-molestiae-cupiditate-ducimus-at-corrupti-voluptate-sed'),
(58, 'Ignacio', 'Mohr', 'tmckenzie@example.net', '29608.77', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(59, 'Gabriella', 'Marvin', 'mueller.angelo@example.org', '32768.43', 'ea-ut-voluptas-et-vitae-rem-repellat-repellat-ex-cupiditate-voluptas-adipisci-nam'),
(60, 'Kailee', 'Schuppe', 'vhamill@example.com', '29381.03', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(61, 'Mike', 'Beatty', 'elisa49@example.net', '29809.46', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(62, 'Candelario', 'Ward', 'fkemmer@example.org', '2977.42', 'nam-aut-sed-doloribus-est-inventore-ut-aut-vel-debitis'),
(63, 'Conner', 'Bergstrom', 'jpowlowski@example.net', '40962.53', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(64, 'Clay', 'Waters', 'josephine.towne@example.org', '37918.84', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(65, 'Stuart', 'Wyman', 'lakin.michel@example.com', '29687.83', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(66, 'Sylvester', 'Ledner', 'lowe.jay@example.com', '24259.48', 'quaerat-rerum-quibusdam-expedita-hic-voluptatem-suscipit-minus-cum-harum-molestiae-porro'),
(67, 'Milford', 'Shields', 'kelsie97@example.com', '36341.14', 'rerum-voluptatem-inventore-repellendus-est-dolores-cumque-voluptatem-placeat-quidem-non'),
(68, 'Ryder', 'Halvorson', 'ryan.schoen@example.net', '40840.69', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(69, 'Wellington', 'Pacocha', 'estevan.schowalter@example.net', '41451.91', 'ut-ullam-est-velit-occaecati-mollitia-vel-aut'),
(70, 'Antonio', 'Terry', 'rklein@example.com', '43697.53', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut'),
(71, 'Durward', 'O\'Connell', 'sanford25@example.org', '14610.81', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(72, 'Vilma', 'Mills', 'theresia.towne@example.org', '23949.15', 'aut-sint-dolorum-voluptatem-eum-maiores-debitis-nulla'),
(73, 'Fae', 'Howe', 'krystina.rohan@example.com', '26846.81', 'alias-ut-iusto-qui-sunt-repellat-mollitia-voluptatem'),
(74, 'Tavares', 'Beier', 'eliezer.schultz@example.com', '34251.58', 'perferendis-dicta-tempore-consequatur-corrupti-sit-soluta-earum'),
(75, 'Lora', 'Daniel', 'kovacek.harley@example.org', '45887.46', 'unde-amet-dolorum-rerum-qui-dolor-cumque-qui-voluptas-suscipit-illo-laboriosam-aut');

-- --------------------------------------------------------

--
-- بنية الجدول `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `course_number` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_id`, `course_number`) VALUES
(75, 137),
(67, 875),
(66, 630),
(7, 630),
(25, 993),
(68, 577),
(27, 993),
(60, 613),
(71, 276),
(64, 527),
(17, 995),
(32, 159),
(53, 142),
(69, 717),
(12, 875),
(67, 159),
(31, 335),
(26, 216),
(13, 127),
(7, 240),
(74, 717),
(65, 993),
(31, 252),
(62, 127),
(31, 919),
(4, 875),
(14, 801),
(55, 941),
(73, 533),
(17, 747),
(46, 722),
(16, 314),
(44, 103),
(26, 875),
(10, 127),
(1, 581),
(72, 801),
(75, 240),
(64, 799),
(33, 799),
(40, 511),
(4, 835),
(70, 511),
(63, 995),
(55, 137),
(46, 335),
(58, 159),
(4, 952),
(5, 621),
(34, 801),
(16, 189),
(43, 344),
(70, 371),
(12, 168),
(56, 240),
(21, 137),
(42, 142),
(42, 127),
(30, 104),
(4, 919),
(37, 450),
(30, 127),
(7, 527),
(51, 952),
(9, 159),
(54, 717),
(69, 472),
(13, 717),
(6, 652),
(41, 441),
(49, 189),
(32, 510),
(16, 856),
(23, 159),
(42, 580);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`college_number`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_number`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD KEY `course_sections_section_number_foreign` (`section_number`),
  ADD KEY `course_sections_course_number_foreign` (`course_number`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`code`),
  ADD KEY `departments_college_number_foreign` (`college_number`);

--
-- Indexes for table `department_courses`
--
ALTER TABLE `department_courses`
  ADD KEY `department_courses_department_code_foreign` (`department_code`),
  ADD KEY `department_courses_course_number_foreign` (`course_number`);

--
-- Indexes for table `department_phones`
--
ALTER TABLE `department_phones`
  ADD KEY `department_phones_department_code_foreign` (`department_code`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_number`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_number`),
  ADD UNIQUE KEY `students_national_id_student_number_unique` (`national_id`,`student_number`),
  ADD KEY `students_major_department_code_foreign` (`major_department_code`),
  ADD KEY `students_minor_department_code_foreign` (`minor_department_code`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD KEY `student_courses_student_number_foreign` (`student_number`),
  ADD KEY `student_courses_course_number_foreign` (`course_number`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_department_code_foreign` (`department_code`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD KEY `teacher_courses_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_courses_course_number_foreign` (`course_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `course_sections`
--
ALTER TABLE `course_sections`
  ADD CONSTRAINT `course_sections_course_number_foreign` FOREIGN KEY (`course_number`) REFERENCES `courses` (`course_number`),
  ADD CONSTRAINT `course_sections_section_number_foreign` FOREIGN KEY (`section_number`) REFERENCES `sections` (`section_number`);

--
-- القيود للجدول `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_college_number_foreign` FOREIGN KEY (`college_number`) REFERENCES `colleges` (`college_number`);

--
-- القيود للجدول `department_courses`
--
ALTER TABLE `department_courses`
  ADD CONSTRAINT `department_courses_course_number_foreign` FOREIGN KEY (`course_number`) REFERENCES `courses` (`course_number`),
  ADD CONSTRAINT `department_courses_department_code_foreign` FOREIGN KEY (`department_code`) REFERENCES `departments` (`code`);

--
-- القيود للجدول `department_phones`
--
ALTER TABLE `department_phones`
  ADD CONSTRAINT `department_phones_department_code_foreign` FOREIGN KEY (`department_code`) REFERENCES `departments` (`code`);

--
-- القيود للجدول `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_major_department_code_foreign` FOREIGN KEY (`major_department_code`) REFERENCES `departments` (`code`),
  ADD CONSTRAINT `students_minor_department_code_foreign` FOREIGN KEY (`minor_department_code`) REFERENCES `departments` (`code`);

--
-- القيود للجدول `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_course_number_foreign` FOREIGN KEY (`course_number`) REFERENCES `courses` (`course_number`),
  ADD CONSTRAINT `student_courses_student_number_foreign` FOREIGN KEY (`student_number`) REFERENCES `students` (`student_number`);

--
-- القيود للجدول `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_department_code_foreign` FOREIGN KEY (`department_code`) REFERENCES `departments` (`code`);

--
-- القيود للجدول `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD CONSTRAINT `teacher_courses_course_number_foreign` FOREIGN KEY (`course_number`) REFERENCES `courses` (`course_number`),
  ADD CONSTRAINT `teacher_courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);
COMMIT;
