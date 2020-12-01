#
# TABLE STRUCTURE FOR: animals
#

DROP TABLE IF EXISTS `animals`;

CREATE TABLE `animals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Кличка животного',
  `chip` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Номер чипа',
  `kind_id` tinyint(3) unsigned NOT NULL COMMENT 'Вид животного',
  `breed_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Порода животного',
  `gender_id` tinyint(3) unsigned NOT NULL COMMENT 'Пол животного',
  `owner_type` enum('person','organization') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Тип владельца: человек или организация',
  `owner_id` int(10) unsigned DEFAULT NULL COMMENT 'Идентификатор владельца',
  `chipping_organization_id` smallint(5) unsigned NOT NULL COMMENT 'Идентификатор чипировавшей организации',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chip` (`chip`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Животные';

INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (1, 'animi', '75950107901491002960', 1, 1, 1, 'person', 1, 1, '2012-07-12 17:04:18', '2000-10-17 22:30:02');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (2, 'non', '78060665736097677199', 2, 2, 2, 'person', 2, 2, '1983-04-28 17:05:46', '2007-10-05 01:32:57');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (3, 'omnis', '39660915092076626368', 3, 3, 3, 'person', 3, 3, '1990-08-10 22:57:51', '1999-04-26 09:18:49');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (4, 'quis', '04864759349252359803', 4, 4, 1, 'organization', 4, 4, '1972-09-20 17:58:10', '1986-07-04 00:31:46');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (5, 'amet', '83692963251375710659', 5, 5, 2, 'person', 5, 5, '1988-12-18 23:00:40', '2008-04-01 22:10:31');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (6, 'expedita', '22921951044455654667', 6, 6, 3, 'person', 6, 6, '1970-09-29 13:55:06', '2011-05-13 09:16:15');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (7, 'autem', '50811382149319794582', 7, 7, 1, 'organization', 7, 7, '1983-06-03 13:45:43', '2004-11-11 08:14:33');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (8, 'labore', '68924967378458307170', 8, 8, 2, 'organization', 8, 8, '1981-07-20 21:22:49', '2005-08-21 18:43:05');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (9, 'perferendis', '86596500941569061051', 9, 9, 3, 'organization', 9, 9, '1988-01-11 10:14:52', '1991-02-08 23:39:42');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (10, 'quam', '51556867353299855135', 10, 10, 1, 'organization', 10, 10, '1979-04-22 06:46:40', '2014-07-31 04:12:54');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (11, 'vitae', '81406087933981773580', 11, 11, 2, 'organization', 11, 11, '1972-06-20 10:26:08', '2010-01-02 19:06:07');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (12, 'repellat', '43119063767462880443', 12, 12, 3, 'person', 12, 12, '1974-02-06 17:47:13', '1970-05-01 11:29:16');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (13, 'velit', '16422566625740775383', 13, 13, 1, 'person', 13, 13, '1999-11-05 03:04:51', '1988-07-28 08:37:53');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (14, 'voluptatibus', '50378844041339693755', 14, 14, 2, 'person', 14, 14, '2002-03-14 13:43:02', '1998-10-06 20:13:03');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (15, 'eum', '44100846945986625515', 15, 15, 3, 'person', 15, 15, '1987-10-04 22:15:35', '1999-09-13 23:38:27');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (16, 'porro', '32359431538834459286', 16, 16, 1, 'person', 16, 16, '1979-03-17 20:41:56', '2001-06-16 03:15:32');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (17, 'voluptatem', '33859419143830807082', 17, 17, 2, 'person', 17, 17, '1982-09-13 18:20:10', '2013-06-16 16:22:06');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (18, 'nisi', '17912361785383686999', 1, 18, 3, 'person', 18, 18, '1976-05-09 22:22:06', '1974-12-04 19:50:59');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (19, 'sed', '45811566662562718357', 2, 19, 1, 'organization', 19, 19, '2017-01-29 17:57:01', '1984-06-23 12:02:49');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (20, 'iure', '38788343879505201221', 3, 20, 2, 'person', 20, 20, '1988-12-01 11:19:49', '1970-11-18 00:29:19');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (21, 'possimus', '91869905488829799312', 4, 21, 3, 'organization', 21, 21, '1976-09-10 02:04:40', '1996-02-25 17:36:27');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (22, 'ratione', '13357912429120027603', 5, 22, 1, 'person', 22, 22, '2012-02-12 21:44:39', '2009-07-01 15:24:07');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (23, 'delectus', '36496446029255085074', 6, 23, 2, 'person', 23, 23, '1999-10-11 18:50:32', '1978-04-28 06:01:30');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (24, 'et', '75090692851518606505', 7, 24, 3, 'person', 24, 24, '1991-08-15 20:13:23', '1988-10-31 17:22:32');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (25, 'cum', '50940152831969791181', 8, 25, 1, 'organization', 25, 25, '2003-08-26 03:51:25', '2010-04-01 12:42:09');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (26, 'officia', '57802867519352980899', 9, 26, 2, 'person', 26, 26, '1988-05-25 20:49:44', '2000-10-30 16:51:10');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (27, 'omnis', '83885843066820507148', 10, 27, 3, 'organization', 27, 27, '1972-10-13 09:29:12', '1995-12-24 13:52:46');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (28, 'illum', '28929700191139095717', 11, 28, 1, 'organization', 28, 28, '2016-07-16 21:22:08', '1983-06-16 09:25:18');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (29, 'tempora', '87439261477306526414', 12, 29, 2, 'organization', 29, 29, '1987-11-11 15:50:34', '1981-01-04 22:48:34');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (30, 'aut', '98061617413150493175', 13, 30, 3, 'person', 30, 30, '2019-01-04 00:55:59', '2003-04-29 02:44:37');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (31, 'quia', '73727669657872613768', 14, 31, 1, 'person', 31, 31, '2009-04-03 07:40:29', '2006-06-05 11:19:00');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (32, 'praesentium', '53798332306899996922', 15, 32, 2, 'person', 32, 32, '1977-08-31 01:11:07', '1973-10-04 08:23:53');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (33, 'et', '23157529937100768820', 16, 33, 3, 'organization', 33, 33, '1983-03-02 12:44:53', '1997-03-09 14:51:29');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (34, 'optio', '67102053646911643720', 17, 34, 1, 'organization', 34, 34, '1983-04-25 22:32:26', '2007-04-18 23:06:24');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (35, 'odio', '65087793927790396780', 1, 35, 2, 'person', 35, 35, '2001-12-05 09:50:03', '2013-11-30 13:42:00');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (36, 'repellendus', '26844147889848231782', 2, 36, 3, 'organization', 36, 36, '1979-04-15 01:57:48', '2020-04-20 17:00:09');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (37, 'occaecati', '24319355154137773153', 3, 37, 1, 'person', 37, 37, '2015-02-24 21:20:58', '1988-08-09 14:30:09');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (38, 'recusandae', '65770276398336227979', 4, 38, 2, 'organization', 38, 38, '2019-02-09 06:46:44', '1978-06-23 08:48:14');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (39, 'earum', '12277274975028258505', 5, 39, 3, 'organization', 39, 39, '1996-07-22 12:21:45', '2011-09-28 21:33:10');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (40, 'ut', '86204437429054827115', 6, 40, 1, 'organization', 40, 40, '2015-03-14 12:10:08', '1991-06-09 07:52:58');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (41, 'maxime', '25865061885216278745', 7, 41, 2, 'organization', 41, 41, '2014-05-02 06:47:18', '2000-04-05 22:21:55');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (42, 'cum', '44774726931981102733', 8, 42, 3, 'organization', 42, 42, '1983-08-17 18:23:02', '2006-07-28 13:39:12');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (43, 'quasi', '27483293025017827740', 9, 43, 1, 'organization', 43, 43, '2010-01-12 04:03:33', '1982-12-12 02:10:08');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (44, 'eius', '77729543420249436810', 10, 44, 2, 'person', 44, 44, '2014-06-06 21:19:53', '1996-09-30 19:12:40');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (45, 'omnis', '85617249447781787244', 11, 45, 3, 'organization', 45, 45, '1980-02-07 20:39:49', '2000-09-04 17:59:35');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (46, 'et', '40422438397107059885', 12, 46, 1, 'organization', 46, 46, '1990-07-13 00:06:40', '2006-09-27 08:18:28');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (47, 'sunt', '59984904486815099290', 13, 47, 2, 'person', 47, 47, '1984-06-18 14:06:10', '1984-04-19 23:08:15');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (48, 'rerum', '24847603852669654872', 14, 48, 3, 'person', 48, 48, '1977-05-06 07:15:22', '1977-11-04 01:02:17');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (49, 'ipsam', '81808205796042986676', 15, 49, 1, 'organization', 49, 49, '1992-07-29 22:59:36', '1986-04-10 08:03:49');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (50, 'ducimus', '99628779821815290569', 16, 50, 2, 'organization', 50, 50, '1979-10-04 11:45:26', '1996-12-28 21:23:27');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (51, 'quia', '79829746276924642440', 17, 51, 3, 'organization', 51, 51, '2014-02-26 23:45:46', '1972-09-20 06:25:04');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (52, 'reprehenderit', '54671703716983555868', 1, 52, 1, 'person', 52, 52, '1990-02-21 12:40:47', '2006-06-13 03:11:53');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (53, 'modi', '76586306469174618845', 2, 53, 2, 'organization', 53, 53, '1980-02-18 18:56:50', '1978-05-22 05:57:16');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (54, 'aliquid', '13382881194035384902', 3, 54, 3, 'organization', 54, 54, '1971-11-05 04:28:45', '1972-09-08 12:23:05');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (55, 'saepe', '71837316852455965234', 4, 55, 1, 'person', 55, 55, '2013-08-01 01:18:13', '2018-07-15 02:48:50');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (56, 'voluptatem', '71580498161109978389', 5, 56, 2, 'organization', 56, 56, '2014-10-14 04:17:40', '1971-08-26 17:35:40');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (57, 'ipsum', '99465584096528295324', 6, 57, 3, 'organization', 57, 57, '1970-07-01 08:24:15', '1977-04-13 09:21:07');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (58, 'quia', '41973868274404543516', 7, 58, 1, 'person', 58, 58, '2017-11-06 18:17:13', '2015-06-01 00:19:22');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (59, 'ea', '12677378574312815648', 8, 59, 2, 'person', 59, 59, '1980-03-19 10:28:47', '1987-08-25 15:51:40');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (60, 'quis', '71642485178002887250', 9, 60, 3, 'organization', 60, 60, '1994-02-21 08:40:56', '1980-05-23 04:15:33');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (61, 'voluptatem', '35927312965343677816', 10, 61, 1, 'organization', 61, 61, '1998-11-02 08:29:48', '2013-03-26 14:19:54');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (62, 'ut', '66743857101917040210', 11, 62, 2, 'person', 62, 62, '1998-04-27 13:35:35', '2010-07-17 13:22:13');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (63, 'ad', '83074807855654079366', 12, 63, 3, 'organization', 63, 63, '2010-09-05 22:30:55', '1997-12-20 04:36:23');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (64, 'delectus', '06437454045476182370', 13, 64, 1, 'person', 64, 64, '1993-01-21 20:15:07', '2007-10-13 17:52:23');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (65, 'voluptas', '33750020476630235839', 14, 65, 2, 'organization', 65, 65, '2020-10-14 08:26:12', '1998-07-06 10:49:13');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (66, 'accusamus', '20174451564980368518', 15, 66, 3, 'person', 66, 66, '1986-04-09 10:59:50', '1997-11-04 15:38:00');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (67, 'voluptatibus', '04183073985567281485', 16, 67, 1, 'organization', 67, 67, '2013-05-10 15:26:48', '2002-08-18 12:34:52');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (68, 'earum', '34245490315324602873', 17, 68, 2, 'organization', 68, 68, '2003-05-26 19:48:47', '2010-04-01 02:12:49');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (69, 'incidunt', '67306547123326701738', 1, 69, 3, 'person', 69, 69, '1970-09-28 04:01:38', '1991-01-30 14:51:18');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (70, 'voluptas', '05834745074272564061', 2, 70, 1, 'organization', 70, 70, '1988-12-28 10:09:44', '2010-03-16 01:17:48');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (71, 'optio', '65848143112590998199', 3, 71, 2, 'organization', 71, 71, '1979-09-19 03:29:40', '1984-07-12 02:19:10');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (72, 'nulla', '75394222473352925910', 4, 72, 3, 'organization', 72, 72, '1975-03-08 18:55:24', '1985-08-15 04:37:13');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (73, 'optio', '34525494665065519754', 5, 73, 1, 'organization', 73, 73, '1985-12-12 15:31:23', '2010-12-25 07:58:38');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (74, 'et', '05155323458861684079', 6, 74, 2, 'person', 74, 74, '1994-05-23 06:44:07', '1990-06-18 20:48:24');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (75, 'impedit', '41019501022358286226', 7, 75, 3, 'organization', 75, 75, '1989-06-05 16:26:32', '1980-12-30 18:13:27');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (76, 'est', '89322178100545481680', 8, 76, 1, 'person', 76, 76, '2016-08-03 17:47:27', '1999-11-28 04:44:33');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (77, 'omnis', '31605587854878560658', 9, 77, 2, 'person', 77, 77, '2004-05-04 02:42:01', '1989-06-13 22:31:46');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (78, 'aliquam', '24453312313078949852', 10, 78, 3, 'organization', 78, 78, '1987-09-26 11:26:17', '1977-01-28 23:42:32');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (79, 'optio', '26014064247361476444', 11, 79, 1, 'organization', 79, 79, '2016-08-28 18:21:57', '2016-11-25 11:15:17');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (80, 'voluptas', '29747026929382991686', 12, 80, 2, 'organization', 80, 80, '1971-04-28 04:18:26', '2016-01-10 18:05:50');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (81, 'ut', '22299647189389966735', 13, 81, 3, 'organization', 81, 81, '1989-03-12 06:38:22', '1989-01-26 18:02:40');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (82, 'laudantium', '36869642552760802156', 14, 82, 1, 'person', 82, 82, '2010-02-02 03:11:20', '2016-03-06 21:22:14');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (83, 'sed', '04006938485655503595', 15, 83, 2, 'organization', 83, 83, '1971-04-12 02:17:27', '1994-05-31 03:16:06');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (84, 'ea', '18236720189757065534', 16, 84, 3, 'person', 84, 84, '2012-12-17 16:18:15', '1994-05-12 19:14:14');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (85, 'nulla', '64224955104485225784', 17, 85, 1, 'organization', 85, 85, '1977-06-20 06:30:19', '2016-01-29 21:11:08');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (86, 'voluptas', '93515131456075493870', 1, 86, 2, 'organization', 86, 86, '2007-11-03 02:36:38', '2010-09-25 18:54:02');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (87, 'aliquid', '69892436079663275175', 2, 87, 3, 'person', 87, 87, '1995-02-15 23:53:06', '1982-12-09 11:42:06');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (88, 'qui', '80144231792166812622', 3, 88, 1, 'person', 88, 88, '1982-04-16 23:37:01', '2017-12-04 00:09:52');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (89, 'at', '56455468637678659430', 4, 89, 2, 'person', 89, 89, '1993-06-22 20:05:17', '2009-08-17 12:51:00');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (90, 'aliquid', '50004606478837016698', 5, 90, 3, 'organization', 90, 90, '2017-11-30 06:22:46', '1995-09-01 08:37:43');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (91, 'aliquid', '47558675278949792591', 6, 91, 1, 'organization', 91, 91, '1992-09-24 03:51:38', '2014-06-30 11:36:09');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (92, 'molestiae', '54486931701901588853', 7, 92, 2, 'organization', 92, 92, '1993-12-05 16:18:39', '1985-01-22 12:23:23');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (93, 'et', '96595683854567872753', 8, 93, 3, 'person', 93, 93, '2009-08-28 16:51:29', '1997-06-10 07:28:32');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (94, 'vitae', '28988347273901103049', 9, 94, 1, 'person', 94, 94, '1999-12-03 19:38:43', '1977-05-10 11:09:52');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (95, 'iure', '49719667768614190110', 10, 95, 2, 'organization', 95, 95, '1987-03-04 13:05:14', '1994-03-18 00:13:06');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (96, 'enim', '88632506225670218905', 11, 96, 3, 'organization', 96, 96, '2008-07-31 13:16:33', '2007-01-12 02:36:57');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (97, 'fuga', '48388895037639886075', 12, 97, 1, 'person', 97, 97, '2010-06-05 03:33:45', '1982-10-24 20:59:24');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (98, 'optio', '14925288212445838673', 13, 98, 2, 'organization', 98, 98, '1991-09-26 02:58:28', '2008-06-15 04:24:31');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (99, 'est', '33850383962187824325', 14, 99, 3, 'organization', 99, 99, '1989-11-17 11:56:56', '1975-06-28 14:02:08');
INSERT INTO `animals` (`id`, `name`, `chip`, `kind_id`, `breed_id`, `gender_id`, `owner_type`, `owner_id`, `chipping_organization_id`, `created_at`, `updated_at`) VALUES (100, 'aut', '05899145443891393232', 15, 100, 1, 'organization', 100, 100, '2020-07-13 21:58:33', '2005-03-01 16:45:19');


#
# TABLE STRUCTURE FOR: breeds
#

DROP TABLE IF EXISTS `breeds`;

CREATE TABLE `breeds` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `kind_id` tinyint(3) unsigned NOT NULL COMMENT 'Вид животного',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Порода животного',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Породы животных';

INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (1, 1, 'dicta', '2000-07-12 21:17:57');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (2, 2, 'ut', '1994-03-26 13:22:09');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (3, 3, 'possimus', '2014-10-11 13:29:17');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (4, 4, 'aut', '1972-09-28 19:25:32');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (5, 5, 'minus', '2015-09-05 01:05:55');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (6, 6, 'veritatis', '1993-11-01 20:38:41');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (7, 7, 'sit', '1997-03-16 09:48:25');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (8, 8, 'earum', '1999-04-14 16:37:47');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (9, 9, 'non', '1988-01-22 20:01:18');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (10, 10, 'ad', '1993-10-10 00:38:28');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (11, 11, 'voluptatem', '1993-06-04 04:37:45');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (12, 12, 'aut', '2007-10-25 05:19:23');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (13, 13, 'eum', '1991-10-07 18:16:20');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (14, 14, 'aut', '2005-09-27 08:16:09');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (15, 15, 'dolore', '2006-10-14 13:09:58');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (16, 16, 'voluptatem', '1976-03-22 20:01:52');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (17, 17, 'pariatur', '1983-07-10 04:48:51');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (18, 1, 'dolor', '1975-11-30 18:41:37');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (19, 2, 'quia', '1992-08-26 12:14:02');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (20, 3, 'qui', '1974-08-29 17:46:49');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (21, 4, 'deserunt', '1981-09-12 09:54:17');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (22, 5, 'est', '1986-12-18 06:50:42');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (23, 6, 'quo', '2014-04-28 04:30:26');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (24, 7, 'non', '2008-06-27 15:25:03');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (25, 8, 'sit', '2009-09-30 20:04:57');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (26, 9, 'sit', '2015-04-04 15:49:40');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (27, 10, 'eius', '2018-03-02 04:49:05');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (28, 11, 'est', '2018-03-12 11:56:47');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (29, 12, 'cumque', '2003-10-15 17:54:14');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (30, 13, 'necessitatibus', '2003-05-23 03:26:41');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (31, 14, 'in', '2001-01-15 12:50:26');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (32, 15, 'culpa', '1972-01-08 14:02:44');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (33, 16, 'voluptate', '1972-06-06 03:28:16');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (34, 17, 'distinctio', '2010-11-24 10:06:19');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (35, 1, 'dolores', '1991-07-09 14:35:17');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (36, 2, 'reprehenderit', '1980-08-08 04:20:28');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (37, 3, 'minus', '2017-10-05 20:41:12');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (38, 4, 'placeat', '1991-03-11 13:05:24');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (39, 5, 'voluptas', '1986-08-18 23:06:12');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (40, 6, 'molestias', '1995-05-31 05:48:32');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (41, 7, 'aperiam', '1973-08-29 13:16:54');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (42, 8, 'nobis', '1992-05-31 08:17:36');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (43, 9, 'sit', '2018-07-21 21:48:30');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (44, 10, 'ea', '2004-02-26 00:13:55');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (45, 11, 'ex', '1976-06-04 20:08:46');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (46, 12, 'est', '1987-09-30 12:35:07');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (47, 13, 'sint', '1987-06-15 15:20:55');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (48, 14, 'sit', '2011-04-09 11:26:10');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (49, 15, 'accusantium', '1981-09-30 07:08:46');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (50, 16, 'aut', '1975-02-16 00:00:43');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (51, 17, 'et', '2003-10-30 15:55:11');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (52, 1, 'molestiae', '1988-10-04 12:11:03');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (53, 2, 'accusamus', '2015-06-16 09:37:02');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (54, 3, 'harum', '2019-06-02 11:40:52');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (55, 4, 'voluptatum', '2013-01-10 17:44:21');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (56, 5, 'quidem', '2000-10-12 21:09:42');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (57, 6, 'id', '1988-10-01 03:08:06');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (58, 7, 'dicta', '2001-04-15 18:49:01');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (59, 8, 'fugit', '1980-06-04 07:59:42');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (60, 9, 'quia', '1976-11-05 10:25:27');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (61, 10, 'aut', '2014-04-11 13:43:11');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (62, 11, 'dolorem', '1998-11-25 16:15:46');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (63, 12, 'distinctio', '1986-05-28 14:58:39');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (64, 13, 'reiciendis', '1996-06-20 07:04:20');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (65, 14, 'aut', '1979-12-04 01:03:22');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (66, 15, 'dolorem', '1979-07-14 03:10:01');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (67, 16, 'quo', '1984-05-22 00:56:01');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (68, 17, 'repellat', '1989-11-06 02:40:29');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (69, 1, 'et', '1977-08-24 15:20:15');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (70, 2, 'suscipit', '1998-07-06 12:45:05');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (71, 3, 'aliquid', '2004-09-25 03:39:37');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (72, 4, 'cumque', '2013-04-03 18:19:44');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (73, 5, 'libero', '1970-04-07 01:10:06');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (74, 6, 'quidem', '1982-02-20 22:30:43');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (75, 7, 'iusto', '2005-04-07 23:02:05');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (76, 8, 'qui', '2015-08-16 04:02:59');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (77, 9, 'iusto', '1977-08-06 23:19:35');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (78, 10, 'ut', '1970-08-03 12:46:24');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (79, 11, 'maiores', '1990-06-20 14:14:03');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (80, 12, 'adipisci', '1989-09-03 23:59:41');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (81, 13, 'porro', '2007-10-07 10:26:16');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (82, 14, 'maiores', '1990-08-03 15:58:01');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (83, 15, 'veritatis', '1982-07-02 03:22:19');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (84, 16, 'ab', '2006-09-06 21:06:52');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (85, 17, 'quas', '1973-08-23 21:49:14');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (86, 1, 'possimus', '1987-06-03 00:31:51');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (87, 2, 'sed', '1975-07-31 19:38:13');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (88, 3, 'nobis', '1993-03-22 06:17:27');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (89, 4, 'quo', '1978-10-21 17:59:28');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (90, 5, 'et', '2016-11-14 06:49:49');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (91, 6, 'mollitia', '1978-04-08 20:18:11');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (92, 7, 'quia', '2008-02-16 20:25:12');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (93, 8, 'explicabo', '2011-04-29 12:31:43');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (94, 9, 'itaque', '1982-11-16 10:32:37');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (95, 10, 'unde', '2011-12-12 18:15:40');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (96, 11, 'consectetur', '1981-01-14 03:41:24');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (97, 12, 'mollitia', '2008-06-29 01:29:01');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (98, 13, 'dolores', '1991-02-08 23:30:19');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (99, 14, 'modi', '1986-08-06 01:44:04');
INSERT INTO `breeds` (`id`, `kind_id`, `name`, `created_at`) VALUES (100, 15, 'et', '1986-09-14 20:42:47');


#
# TABLE STRUCTURE FOR: exchange_identifiers
#

DROP TABLE IF EXISTS `exchange_identifiers`;

CREATE TABLE `exchange_identifiers` (
  `table_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Таблица сущности',
  `origin_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор нашей сущности',
  `target_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор сущности партнера',
  `partner_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор партнера',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`table_name`,`origin_id`,`partner_id`) COMMENT 'Первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Идентификаторы для обмена';

#
# TABLE STRUCTURE FOR: genders
#

DROP TABLE IF EXISTS `genders`;

CREATE TABLE `genders` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол животного',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Виды полов животных';

INSERT INTO `genders` (`id`, `name`, `created_at`) VALUES (1, 'recusandae', '1970-10-10 10:32:13');
INSERT INTO `genders` (`id`, `name`, `created_at`) VALUES (2, 'quae', '1983-03-26 10:28:17');
INSERT INTO `genders` (`id`, `name`, `created_at`) VALUES (3, 'vel', '1986-08-16 21:11:03');


#
# TABLE STRUCTURE FOR: kinds
#

DROP TABLE IF EXISTS `kinds`;

CREATE TABLE `kinds` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Вид животного',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Виды животных';

INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (1, 'eum', '1995-09-28 16:03:58');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (2, 'delectus', '2016-02-19 23:00:40');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (3, 'excepturi', '2004-01-15 01:40:09');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (4, 'aut', '1981-07-10 14:59:09');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (5, 'asperiores', '2004-08-30 01:59:01');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (6, 'officia', '2000-12-13 12:58:18');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (7, 'iure', '1987-03-20 19:10:47');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (8, 'aut', '1994-01-05 16:25:45');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (9, 'quibusdam', '2009-02-05 15:04:36');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (10, 'in', '2020-11-25 09:16:32');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (11, 'consequatur', '1997-12-13 08:48:04');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (12, 'amet', '1970-11-21 20:37:19');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (13, 'fugit', '1988-01-26 02:48:21');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (14, 'nemo', '2010-09-16 18:07:19');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (15, 'illo', '2007-12-01 03:37:07');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (16, 'aut', '1985-05-15 05:20:14');
INSERT INTO `kinds` (`id`, `name`, `created_at`) VALUES (17, 'cum', '2009-05-18 22:01:18');


#
# TABLE STRUCTURE FOR: organizations
#

DROP TABLE IF EXISTS `organizations`;

CREATE TABLE `organizations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование организации',
  `inn` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ИНН организации',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Адрес владельца',
  `is_chipping` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Чипирующая',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `inn` (`inn`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Организации, чипирующие животных';

INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (1, 'quibusdam', '454814003857', 'kennedy.quigley@example.net', '478-789-8572', '34677 Lulu Extension Suite 091\nEast Lina, NV 87388-4937', 0, '1989-02-19 15:57:45', '2019-12-05 11:47:24');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (2, 'reiciendis', '888012486897', 'konopelski.cicero@example.net', '1-565-212-4140', '176 Rogahn Point Apt. 502\nStracketown, KS 96114', 0, '2002-11-16 11:12:19', '2001-11-21 12:13:51');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (3, 'possimus', '686222472909', 'crooks.mckenna@example.net', '(735)363-9352', '61706 Reynolds Street Suite 773\nWhiteshire, UT 57649-5166', 0, '1989-07-16 01:42:50', '1982-01-28 20:38:25');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (4, 'maiores', '446342639126', 'jewell.marquardt@example.net', '219.816.8984x3207', '3948 Adolphus Mews Suite 854\nMelyssaside, AK 75316-2636', 0, '2019-08-20 14:27:49', '2001-11-03 07:55:20');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (5, 'provident', '959685291660', 'berry26@example.com', '800.964.6496x750', '403 Crona Trace Suite 542\nNew Veldashire, KY 22479-1663', 1, '2015-02-14 00:09:11', '1990-03-25 14:44:26');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (6, 'quam', '608446968210', 'sfranecki@example.org', '843.070.0084', '897 Emmanuelle Glens\nMcGlynnborough, HI 96888', 0, '2014-02-22 01:44:33', '1980-06-08 16:36:06');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (7, 'voluptatibus', '668248243865', 'raphael.orn@example.org', '053.818.4790x0447', '511 Cruickshank Village Apt. 450\nEast Meredith, ME 15113', 1, '1977-04-01 06:19:06', '1978-06-05 15:52:22');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (8, 'aut', '995063209546', 'nolan.trenton@example.com', '306.912.5362x92281', '492 Wilhelm Lake Apt. 277\nLake Georgiana, AL 20673', 1, '2020-04-17 22:32:03', '2007-09-21 13:13:21');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (9, 'sint', '861670848121', 'terry.emiliano@example.com', '323-137-6982', '81774 Hodkiewicz Curve Suite 582\nPort Herminiahaven, OR 11137-2468', 0, '2011-01-30 19:13:14', '1986-12-07 23:03:02');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (10, 'aut', '919317479798', 'lmayer@example.org', '1-121-696-8544', '7651 Norma River Suite 116\nWest Maude, WV 56261', 1, '1999-11-22 04:19:16', '1997-04-11 07:37:53');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (11, 'aspernatur', '289460555717', 'daniel.meta@example.org', '+93(5)5701099596', '76243 Abbigail Flats\nWest Rosannabury, PA 57751-9564', 1, '1995-04-27 12:55:52', '1979-03-20 16:00:10');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (12, 'occaecati', '609062134996', 'okoelpin@example.net', '+40(1)8264713599', '687 Terrell Forges\nFaheyhaven, DE 96889-6705', 0, '1978-10-21 21:11:53', '1981-04-30 08:00:25');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (13, 'libero', '340537608473', 'armani.boyle@example.org', '439.877.9448x96388', '375 Maryjane Summit\nMullerborough, CT 84217', 1, '2017-07-22 09:11:37', '2002-10-11 16:36:48');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (14, 'sapiente', '636592402655', 'sturcotte@example.com', '1-664-917-0635x767', '63522 Schumm Lake Suite 562\nEast Lilaland, IN 75957-6279', 0, '1983-09-22 23:10:20', '1985-04-03 05:33:38');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (15, 'qui', '701330883436', 'mckayla76@example.com', '+04(9)6660496301', '2389 Moen Cape Suite 761\nSchillerview, NY 06361', 1, '2011-03-10 08:27:41', '2019-12-04 20:00:26');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (16, 'harum', '162974393929', 'ara68@example.org', '1-415-604-7354x946', '0137 Donnelly Ford Apt. 911\nNorth Erynchester, WY 43160', 1, '1987-08-02 04:58:13', '2008-02-19 04:47:29');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (17, 'illum', '392375879588', 'troy.crist@example.org', '09519737766', '4066 Jazmin Point\nEast Cornellton, NC 22394-7587', 1, '1983-05-14 11:04:07', '2011-11-11 11:23:54');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (18, 'velit', '890890590771', 'perry.schaden@example.org', '(281)933-0040x7994', '617 Douglas Trail\nEast Rick, NJ 76566-3084', 1, '2013-12-28 11:15:12', '1995-03-18 04:38:41');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (19, 'dolorum', '459472054500', 'newell.smitham@example.net', '+70(1)1846634004', '7607 Laisha Square Apt. 432\nSwaniawskimouth, NJ 63259', 0, '1981-04-21 15:25:20', '2020-06-05 14:16:44');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (20, 'saepe', '495808865345', 'mathias26@example.com', '764-953-5323x04797', '0650 Will Junctions\nOlafland, KS 68098', 0, '2005-08-17 11:19:17', '1974-01-12 19:20:55');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (21, 'totam', '662975992256', 'fermin06@example.org', '160.321.2689x043', '711 Jo Squares Suite 765\nFranzmouth, WV 11657-6594', 1, '2001-09-06 22:54:26', '1985-06-19 20:59:35');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (22, 'possimus', '957770398150', 'yvonne17@example.net', '112-659-0889x3926', '44381 Destin Plains Suite 459\nSarinaborough, AL 86918-1509', 0, '1982-12-25 19:06:28', '1991-02-03 23:01:43');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (23, 'fugiat', '259865594780', 'jwitting@example.net', '144.844.1090x7168', '0529 Taylor Centers\nNorth Noeliafort, VA 39635-7828', 1, '1972-11-26 07:44:21', '1989-07-24 20:35:33');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (24, 'nisi', '213209677173', 'camilla.carroll@example.net', '684.531.5293', '71125 Bradly Street Apt. 208\nLake Katelynbury, AL 45348', 1, '2020-05-19 19:08:46', '2004-02-14 15:42:24');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (25, 'tempore', '055486347361', 'alexie56@example.com', '1-548-731-1951', '377 Kassulke Fall\nSchulisthaven, RI 14504-5684', 1, '2020-05-02 02:40:37', '1970-12-17 20:32:01');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (26, 'veritatis', '839324130671', 'murazik.cleve@example.net', '(100)515-9960', '793 Alexandrine Meadow\nLouiechester, MN 48567-6792', 0, '1992-01-16 01:33:20', '2005-11-10 21:53:16');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (27, 'qui', '574388494881', 'shields.alexys@example.net', '162.023.6483', '87901 O\'Reilly Road\nDachberg, VT 37564', 1, '1974-08-30 04:23:01', '1971-05-06 10:04:54');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (28, 'nesciunt', '309669405382', 'maybelle.jakubowski@example.org', '036-706-3838', '90806 Runte Plaza\nNorth Tiffany, NM 67282', 0, '2009-08-16 04:33:35', '2002-04-27 04:19:38');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (29, 'cumque', '181909303475', 'rogahn.teresa@example.com', '544-901-4479x448', '36851 Pearlie Ways Suite 136\nNitzscheport, LA 08462-8566', 0, '2004-01-29 20:14:17', '1993-08-14 23:19:31');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (30, 'sed', '574116007056', 'treva.greenholt@example.org', '233.441.3524x00944', '1186 Hane Fords\nNorth Cletus, FL 57382-9242', 0, '2007-06-01 20:35:07', '2007-12-05 23:48:29');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (31, 'nostrum', '646664485513', 'jeromy.jacobs@example.org', '971.012.0548', '244 Dana Valleys\nPort Krystina, NC 80156', 0, '2017-06-08 09:32:23', '1972-04-23 12:51:00');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (32, 'error', '490183923973', 'larson.breanne@example.org', '261-744-6039', '62951 Hegmann Brook\nZulaufchester, MO 92027', 0, '1985-07-29 23:00:54', '2008-04-01 09:14:58');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (33, 'ipsum', '913145953013', 'lilly94@example.com', '766.828.8707x67276', '73603 Ora Station\nRempelfort, LA 18942', 1, '1976-07-02 19:04:43', '2010-10-07 10:15:06');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (34, 'aspernatur', '603773701622', 'beier.helmer@example.net', '1-069-727-7258', '15890 Bechtelar Well Apt. 712\nNorth Nestorfurt, UT 04124-9468', 0, '2020-10-28 08:17:44', '1982-12-08 04:39:41');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (35, 'et', '586620030466', 'ylesch@example.org', '335.704.7965x3518', '319 Robel Green Suite 465\nPort Beulah, NY 95723-7533', 1, '2013-04-30 23:58:15', '2012-06-11 13:52:00');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (36, 'ratione', '342264624865', 'ankunding.sherman@example.net', '(936)006-6590x021', '6049 Dicki Divide\nPollichburgh, MT 16314', 1, '1978-08-31 00:32:31', '1974-03-25 06:25:48');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (37, 'aliquam', '524053167505', 'hudson.nels@example.net', '(252)299-0329x137', '50811 Vada Prairie Apt. 140\nEmmaleeside, WY 13380', 0, '2006-06-13 07:04:24', '2005-01-20 05:42:32');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (38, 'aut', '348467013548', 'brionna82@example.com', '+56(9)7759563516', '800 Eleanora Mission\nSouth Bertton, WY 16150', 1, '2003-01-07 13:16:56', '2000-07-11 13:05:34');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (39, 'sunt', '320883713970', 'bailey.kali@example.net', '431-153-8712x785', '1819 Klein Ways Suite 117\nWest Orenfurt, MA 82207-9377', 1, '1992-05-21 12:56:16', '1996-01-29 16:13:40');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (40, 'aut', '054885817155', 'makenna.heaney@example.org', '077.045.8994x26319', '66877 Block Extensions Suite 785\nEast Opheliaville, KY 31035-2628', 1, '2012-07-26 14:31:36', '2018-01-13 18:12:48');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (41, 'labore', '458044280806', 'lbogisich@example.com', '1-574-894-0692x30762', '2605 Emelia Hollow Apt. 749\nNorth Noraberg, NV 05495-8261', 1, '2017-01-20 08:45:04', '2005-04-30 09:47:24');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (42, 'necessitatibus', '727846603198', 'zjaskolski@example.com', '465-254-7006x53421', '11897 Howell Shores Apt. 884\nNorth Fordborough, MS 69712-7246', 1, '2009-07-13 02:07:58', '1970-02-18 13:40:36');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (43, 'voluptates', '523040410502', 'tyler.bartell@example.com', '1-215-985-9323', '919 Kunze Path Apt. 281\nEast Amari, OR 40676', 0, '1985-07-08 05:39:28', '2016-09-01 20:44:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (44, 'debitis', '236359389867', 'kstroman@example.net', '483.695.3424x21062', '0734 Miguel Meadows Suite 778\nTravischester, LA 67639-3442', 0, '2016-10-09 23:51:47', '1975-08-26 21:18:25');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (45, 'deserunt', '607661457999', 'ukautzer@example.com', '1-340-431-5166x10941', '83700 Braun Creek Apt. 623\nJuniusmouth, ID 02496', 0, '1975-09-24 23:23:21', '2016-05-23 09:17:32');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (46, 'voluptates', '540133226920', 'veum.andre@example.com', '1-387-015-9867x7907', '12385 Frami Course Suite 827\nWest Aimeeland, MO 60933', 1, '2020-08-01 20:02:10', '2004-05-29 10:25:36');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (47, 'non', '569619507670', 'brandt63@example.com', '(198)212-5022x0462', '9753 Bridie Lodge Apt. 718\nBatzfort, WV 45996', 1, '1993-08-31 16:11:20', '2015-07-14 15:03:08');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (48, 'hic', '918960020915', 'rosemary07@example.com', '(732)341-8043x849', '7242 Keon Harbor Suite 157\nHamillmouth, MN 60821-5864', 0, '1979-02-18 02:44:20', '1974-08-10 21:21:05');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (49, 'dignissimos', '325309762566', 'gabe.hickle@example.org', '(504)441-2420x2730', '8410 Adalberto Station\nPaucekland, MS 82990', 0, '1978-11-12 22:45:37', '1974-02-10 11:01:06');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (50, 'sint', '999563216359', 'owaelchi@example.com', '08432837855', '79278 Pfannerstill Ridges\nKuhnton, NY 19568-1800', 1, '2020-09-14 01:04:35', '2008-09-28 20:35:13');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (51, 'deserunt', '638468963965', 'royce.raynor@example.net', '927-871-2185x5983', '8898 Gust Mountain Suite 334\nLockmanview, IN 28967', 0, '1974-03-07 19:08:05', '2016-04-28 03:32:22');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (52, 'dicta', '331923317780', 'blick.alfonzo@example.net', '1-097-183-8674x670', '242 Maxine Alley\nKariland, OR 34641', 1, '1975-01-07 13:55:10', '1984-09-06 03:11:03');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (53, 'ut', '403641244324', 'bradtke.virginia@example.net', '678.870.7558', '3961 Lynch Lodge\nLeilaniville, WY 43638', 1, '2016-07-25 15:55:04', '1990-12-29 08:56:49');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (54, 'repellendus', '730477937638', 'florine.vandervort@example.com', '1-601-689-8950', '129 Arden Village Suite 352\nLake Nasirbury, MT 89878', 0, '1994-04-12 14:52:18', '1976-06-06 05:12:49');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (55, 'provident', '132293101858', 'denesik.beulah@example.com', '874-317-9750x9352', '214 Raheem Street Apt. 913\nLake Ila, NY 17137-3206', 1, '1993-08-16 02:23:27', '1990-11-20 16:33:57');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (56, 'eveniet', '999048812454', 'liam.mohr@example.net', '1-275-660-4513', '3231 Christiansen Lake\nO\'Keefehaven, MO 22710', 1, '2011-06-01 18:44:21', '1993-10-21 06:27:18');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (57, 'quasi', '443943967678', 'harvey.rene@example.com', '514.985.3453x53953', '864 Abbigail Glen Apt. 497\nWeimannton, TN 79830-9405', 0, '2018-10-19 16:46:20', '1988-05-18 20:39:50');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (58, 'sed', '938223965947', 'bergstrom.tyrell@example.net', '040.808.1909x752', '30522 Ralph Manor\nSouth Lizzie, AK 10245-1882', 1, '2004-05-28 04:27:30', '1970-06-28 17:35:39');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (59, 'adipisci', '016929833117', 'ctorphy@example.net', '+20(9)4368338790', '66514 Clovis Mills Suite 000\nHilpertton, MT 90781', 0, '1980-01-18 16:56:34', '1982-09-02 02:52:04');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (60, 'mollitia', '171550197488', 'hermann.elyse@example.net', '(852)924-6207x73940', '0072 Rempel Village\nWolffport, CT 98605-8912', 1, '1998-10-14 05:22:12', '2001-09-03 08:25:07');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (61, 'ut', '273730863868', 'kelsie.feil@example.net', '07176092590', '341 Hayes Shore Apt. 077\nNorth Hailee, OR 52194', 0, '2009-01-04 06:22:58', '2005-02-16 12:13:19');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (62, 'quaerat', '300949255820', 'macejkovic.ubaldo@example.org', '00162617469', '235 Schaefer Inlet\nKrisshire, VT 22820-4058', 0, '2009-06-01 12:45:12', '1977-10-19 07:21:36');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (63, 'odio', '222840073822', 'greenholt.darrin@example.com', '+32(7)5453015025', '1193 Isabella Island\nStoltenbergfurt, AZ 80737-8841', 0, '2011-01-15 18:47:10', '1978-05-30 02:05:24');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (64, 'minus', '309052783050', 'cdavis@example.org', '(536)910-5499', '745 Torp Courts\nPort Cedrickborough, RI 37449', 0, '2009-03-29 06:10:17', '2015-05-05 15:28:50');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (65, 'soluta', '311367757733', 'xtillman@example.net', '427-697-1617', '8748 O\'Kon Squares Suite 043\nWest Henriville, NH 73961-0890', 0, '1991-05-21 00:36:26', '2002-06-13 19:00:09');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (66, 'quibusdam', '810764025147', 'ryley.wilderman@example.net', '1-294-516-5763x89116', '60312 Eudora Viaduct\nNorth Emery, OK 29400', 0, '1977-07-10 19:42:08', '1991-08-29 12:15:27');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (67, 'voluptatem', '885851137822', 'hyman89@example.com', '1-658-209-0371', '57824 Ryann Brooks\nJonesport, ME 78530-6251', 0, '2014-10-21 13:04:58', '2012-02-18 21:38:12');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (68, 'ut', '264168193620', 'mayer.kyler@example.net', '(175)762-0988x8688', '422 Bayer Valleys\nGeneralport, WA 22437', 1, '1972-02-03 21:48:56', '2018-03-06 15:23:01');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (69, 'facilis', '203077484619', 'nicholaus.shanahan@example.org', '428.559.2473x7199', '79769 Morgan Roads\nFelipaside, NH 68189-4241', 0, '2000-10-22 08:46:26', '1983-03-21 17:20:23');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (70, 'temporibus', '632119381324', 'dicki.jackeline@example.org', '893-447-0012', '90625 Stamm Estates\nSouth Wilsonbury, IA 63052', 1, '2005-09-30 04:25:26', '1980-04-11 07:56:07');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (71, 'cupiditate', '947222383480', 'bhowe@example.org', '1-150-689-4298x67754', '86719 Asha Trail\nWittingshire, OH 85712-5382', 0, '2014-11-11 13:14:56', '1972-01-19 11:40:36');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (72, 'odit', '372452272431', 'harmony79@example.net', '(918)774-8703', '1586 Gusikowski Causeway\nBatztown, OK 49608-1146', 0, '2013-06-30 17:14:54', '2020-11-16 22:46:55');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (73, 'et', '597002646185', 'schaden.anastacio@example.net', '(607)486-0039x120', '1477 Vaughn Meadows\nEmelyville, GA 82378', 1, '1987-08-30 23:56:44', '2020-07-29 14:43:03');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (74, 'possimus', '199207458677', 'wyman.derek@example.com', '263.109.2094', '959 Paige Court Suite 807\nMrazbury, FL 12385-7688', 1, '1998-06-22 16:19:42', '1970-12-03 22:36:14');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (75, 'laboriosam', '789269271886', 'madeline.daniel@example.com', '326-533-4215x7188', '996 Catherine Spur Suite 707\nColumbusfort, KY 27159', 1, '1976-06-01 18:51:54', '2004-10-05 02:14:36');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (76, 'ut', '381957969203', 'aschoen@example.org', '1-422-779-9195x188', '22071 Fahey Fords\nLilaburgh, PA 40253-1276', 1, '2015-03-22 05:54:29', '1975-12-05 22:42:04');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (77, 'et', '217792329528', 'asa19@example.com', '309-878-0314x68638', '708 Bogisich Extension\nLake Casandra, ID 54556', 1, '1987-01-12 16:20:14', '1985-11-29 12:47:31');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (78, 'eius', '710616342847', 'emonahan@example.com', '188-844-1179x7396', '902 Grimes Square Suite 228\nLoganburgh, OH 01345', 1, '2004-05-05 09:30:47', '1998-05-07 13:54:07');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (79, 'qui', '687132478273', 'litzy19@example.org', '(115)344-9123', '104 Lakin Lights\nEast Dejon, MA 54415-7495', 0, '1972-04-11 10:43:30', '1993-05-01 09:32:09');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (80, 'autem', '089928384484', 'jayce53@example.net', '(420)594-1212', '013 Crawford Track\nNorth Eveline, AK 31516-9891', 0, '1985-12-18 17:14:02', '1999-04-15 19:44:33');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (81, 'non', '984804750673', 'wiza.dayana@example.com', '1-739-227-9614', '7109 Upton Point\nOliverberg, CT 03920-0009', 1, '2013-06-27 02:46:47', '2006-06-05 09:04:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (82, 'et', '895506643491', 'piper79@example.net', '(683)979-8263x666', '46660 Gavin Roads Suite 248\nTerrillmouth, OK 76689', 1, '1997-02-14 15:31:11', '1997-05-22 07:17:17');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (83, 'nobis', '016342238668', 'mazie.lindgren@example.org', '743.222.2805', '8407 Kovacek Glen\nEast Sabina, IL 68627-6160', 1, '1990-04-15 07:09:34', '1971-05-17 13:37:12');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (84, 'voluptatem', '634074026821', 'hyatt.cletus@example.com', '(296)515-2896', '2621 Amaya Bridge Apt. 185\nSouth Missourihaven, NC 00314-5848', 0, '2001-05-24 20:36:24', '2018-12-20 15:23:22');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (85, 'quis', '196655428966', 'ara40@example.com', '(991)747-8994x0448', '1052 Stoltenberg Well Apt. 691\nHalleburgh, MA 72674-0167', 0, '2006-12-10 12:05:35', '2011-01-21 13:46:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (86, 'enim', '748002747365', 'toy.aurelio@example.org', '1-026-892-0460', '0852 Beer Harbors Suite 546\nSouth Stephenhaven, WV 31269', 1, '1975-02-24 20:18:27', '2014-07-30 03:20:05');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (87, 'dolorem', '583450107553', 'schiller.hulda@example.com', '848-386-3641', '81869 Kristina Underpass Suite 688\nMosciskiton, TN 71066-3249', 0, '2010-04-03 05:10:15', '1993-07-22 23:55:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (88, 'accusantium', '785266042468', 'wbartoletti@example.org', '(410)578-8249', '2507 Wiley Canyon\nStephaniestad, AK 92007-7324', 1, '1994-08-27 06:17:28', '1994-01-21 12:12:50');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (89, 'maxime', '693407450561', 'kihn.clotilde@example.com', '411-683-7152x62202', '252 Gerhold Cliffs\nSchmelerville, DE 80199', 0, '1975-09-03 15:38:41', '1988-06-12 17:39:13');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (90, 'assumenda', '119013895548', 'katelyn91@example.net', '1-295-732-9460x150', '5379 Clint Wall Suite 230\nMargarettaton, CO 71737', 1, '1982-04-29 19:21:42', '1994-12-24 15:30:03');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (91, 'esse', '443207901879', 'pagac.ebba@example.net', '+21(6)6803030214', '482 Hilll Ports Suite 692\nEllisberg, LA 27439', 0, '2003-03-19 11:28:53', '1979-04-08 03:46:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (92, 'quam', '674997727675', 'maude29@example.com', '+69(6)0329793703', '36849 Stephen Court\nProhaskamouth, ND 05863', 0, '1994-05-26 21:52:11', '2019-12-06 15:40:12');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (93, 'qui', '605703853717', 'pharris@example.net', '965-924-2037x75560', '3503 Rigoberto Vista\nNorth Vivienne, NC 82539-7969', 1, '1973-12-08 05:29:07', '2010-09-05 01:53:41');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (94, 'voluptatem', '704742132333', 'mya69@example.net', '(019)362-9891x645', '8706 Maida Lights\nPort Armaniville, UT 41002', 0, '1972-08-01 22:54:14', '2009-03-14 05:34:29');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (95, 'corrupti', '672113737394', 'reagan82@example.org', '(963)402-5028', '27930 Barrows Highway Suite 888\nLemkestad, SD 42407-2874', 0, '1991-07-29 16:47:57', '1995-07-10 21:16:52');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (96, 'aut', '755766606779', 'kayla.bergnaum@example.com', '02742506149', '67144 Berge Vista Apt. 092\nHoracehaven, KY 17648', 0, '2019-06-25 21:42:01', '2020-02-27 21:51:25');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (97, 'assumenda', '060817509985', 'manuela13@example.com', '(320)149-0641x4044', '50154 Federico Springs Apt. 469\nWest Eloytown, DC 93458-2116', 1, '2006-12-01 08:04:19', '1995-07-30 20:37:33');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (98, 'error', '159214371303', 'ernest.weissnat@example.net', '(228)903-2940', '287 Erdman Locks Apt. 722\nEast Kian, OH 86296-9593', 0, '2016-10-01 20:33:57', '1998-06-15 13:53:28');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (99, 'laborum', '176611090812', 'abbigail.bradtke@example.net', '+83(2)5776032530', '20848 Albina Neck\nPort Rodolfo, CT 18302', 1, '1981-11-15 09:50:28', '1989-04-13 13:31:40');
INSERT INTO `organizations` (`id`, `name`, `inn`, `email`, `phone`, `address`, `is_chipping`, `created_at`, `updated_at`) VALUES (100, 'sed', '455824732302', 'dameon41@example.com', '(520)936-0765', '78513 Kautzer Isle\nNorth Lelaside, RI 21705-2260', 0, '2002-01-25 11:20:35', '2008-09-17 08:08:11');


#
# TABLE STRUCTURE FOR: owners
#

DROP TABLE IF EXISTS `owners`;

CREATE TABLE `owners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя владельца',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия владельца',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Адрес владельца',
  `show_contacts` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Показывать контакты владельца',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Владельцы животных';

INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (1, 'Una', 'Lemke', 'ronaldo.halvorson@example.org', '110-795-5400x6971', '232 Altenwerth Spring\nEunicetown, AL 18431-6279', 1, '1973-08-14 11:15:27', '1981-11-25 21:40:06');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (2, 'Bobby', 'Robel', 'koepp.alba@example.net', '508.281.4342', '4567 Gilbert Corners\nLynchmouth, WY 00573', 0, '1975-01-10 18:34:15', '1996-02-08 20:01:11');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (3, 'Larue', 'Jaskolski', 'franecki.kyra@example.com', '(703)688-2562x73964', '13028 Strosin Estates Suite 697\nLake Lola, KS 36263-3337', 1, '1987-07-11 12:13:19', '2011-03-27 18:23:54');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (4, 'Jamie', 'Torp', 'fredy.o\'hara@example.com', '09338161973', '024 Yundt Mission Apt. 552\nEsperanzafurt, SD 04552-9762', 1, '1989-09-02 02:27:36', '1985-08-24 22:50:33');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (5, 'Leda', 'Boehm', 'savannah.wilkinson@example.com', '729.331.1282', '108 Leonard Springs Suite 403\nLeannonshire, HI 94315', 0, '1985-07-11 04:48:20', '1987-07-02 07:18:57');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (6, 'Ernesto', 'Ernser', 'marco.lakin@example.org', '06537882204', '537 Auer Isle\nChrisbury, AZ 80374-6281', 0, '1986-04-04 19:55:59', '2004-04-12 06:33:36');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (7, 'Rozella', 'Crooks', 'alexa48@example.com', '1-445-375-4162', '163 Koch Port\nEast Bradleyland, MT 53784-2246', 1, '1977-01-29 07:50:57', '2013-10-30 15:53:47');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (8, 'Fernando', 'Prohaska', 'alessandra05@example.com', '189.601.2319x068', '01639 Aliyah Stravenue Suite 454\nIsomport, MD 15355-3549', 0, '2002-01-03 09:44:58', '1978-08-18 09:22:40');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (9, 'Marina', 'Kutch', 'okuneva.annetta@example.com', '010.825.9055x1231', '36488 Marguerite Roads Suite 717\nSouth Maeve, SC 98577', 1, '1991-07-22 21:23:49', '2014-01-24 23:27:59');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (10, 'Laurine', 'Heathcote', 'kreiger.josephine@example.com', '138-576-5270', '92920 Hayley Overpass\nLake Mellie, MI 59695', 0, '1997-10-10 10:19:58', '1977-03-14 18:29:04');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (11, 'Leonora', 'Schowalter', 'd\'amore.corrine@example.com', '931.132.9337x110', '8697 Herzog Land\nKuhnhaven, MO 65497-0461', 1, '2016-12-26 05:23:52', '2008-10-25 17:56:56');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (12, 'Candida', 'Marquardt', 'xswaniawski@example.org', '(392)669-9024', '929 Hegmann Causeway Apt. 127\nDuncanmouth, AK 49535', 1, '1992-06-18 19:29:48', '1991-06-03 17:48:33');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (13, 'Jermey', 'Quitzon', 'lwunsch@example.net', '585.121.6913x3762', '44610 Adela Ports\nBentonport, MN 81954', 1, '1997-05-19 22:48:40', '1988-11-10 06:23:00');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (14, 'Estevan', 'Yost', 'fabbott@example.org', '(147)226-8776x10026', '76193 Rosalee Unions\nYundtstad, ID 89890-0443', 1, '1974-04-26 10:38:13', '2016-11-29 17:16:38');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (15, 'Yesenia', 'Littel', 'arlie.schowalter@example.com', '252-705-0379x681', '08488 Emelie Mount Apt. 313\nSouth Elnora, NC 95959-9728', 0, '1981-03-27 19:09:05', '2018-05-02 07:27:55');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (16, 'Dolores', 'Thiel', 'mitchell.justyn@example.org', '673.048.6035x5655', '427 Johns Route Apt. 058\nRyanmouth, GA 76962', 0, '1971-02-15 16:05:18', '1982-09-10 23:27:05');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (17, 'Agustin', 'Spinka', 'carolyne98@example.com', '109.531.4447x4729', '8314 Raynor Lights\nSouth Krystal, DE 42520', 1, '2004-06-11 19:36:32', '1991-06-01 02:54:22');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (18, 'Christophe', 'Schulist', 'mathew.witting@example.org', '199.732.3169x185', '4156 Wiegand Prairie Apt. 467\nLake Mavis, FL 68456', 1, '2019-07-03 04:41:37', '1976-07-09 16:31:16');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (19, 'Gia', 'Schuster', 'gulgowski.lolita@example.com', '1-543-190-8619', '68732 Amalia Pines\nMaxwellburgh, WI 75600-9030', 1, '1976-09-06 11:35:06', '1995-01-30 08:49:35');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (20, 'Jamaal', 'Herman', 'madalyn.glover@example.com', '(529)155-1783x4202', '88046 Altenwerth Valley\nKayleechester, NJ 01481-4031', 0, '1973-09-24 05:19:36', '1973-10-17 07:45:21');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (21, 'Trever', 'Lemke', 'naomi16@example.com', '1-736-918-5477x491', '9584 Rafael Row Apt. 739\nNew Jarrell, GA 26597', 0, '2011-07-12 16:42:00', '2019-07-19 11:42:04');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (22, 'Mariane', 'Kirlin', 'earnest.greenholt@example.org', '02241746291', '65964 Terry Meadows Apt. 345\nMuellerstad, CA 22580', 0, '1990-04-08 04:35:19', '1999-04-19 21:25:51');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (23, 'Alycia', 'McDermott', 'tessie.wunsch@example.org', '987.774.4283', '11935 Waelchi Centers Suite 883\nAprilfurt, NJ 86799-1879', 0, '2004-06-11 04:29:27', '2001-08-04 13:54:29');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (24, 'Tomas', 'Lehner', 'austin.hackett@example.com', '153.026.1679x6469', '34538 Hilpert Forest Apt. 678\nSouth Pauline, IL 36058', 0, '2007-01-12 00:59:31', '1980-06-13 13:27:40');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (25, 'Reynold', 'Crist', 'chanelle33@example.com', '(322)188-1973x569', '1628 Marks Mountain Apt. 353\nJacobiberg, TN 13171-3379', 0, '1994-09-26 23:38:27', '1994-09-05 23:32:01');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (26, 'Nicholaus', 'Wisoky', 'qreinger@example.com', '(797)036-5512x29916', '08092 Bridgette Camp Apt. 203\nCleveshire, SC 56952-6614', 1, '2012-03-10 18:45:33', '1979-07-17 09:58:57');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (27, 'Riley', 'Purdy', 'derek.breitenberg@example.org', '1-329-352-7514x152', '632 Heaney Station\nEast Abbie, WI 58420-4321', 1, '1997-08-02 19:31:17', '2015-09-20 19:12:59');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (28, 'Armani', 'Donnelly', 'johnston.adam@example.net', '073.314.4321', '768 Zemlak Station\nTurnerfurt, HI 37837', 0, '1990-11-19 08:36:45', '1988-12-20 05:43:08');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (29, 'Jana', 'Welch', 'bashirian.winnifred@example.org', '687.600.8543', '61956 Retta Well\nNew Russelville, FL 69306', 1, '1978-09-22 00:51:43', '1997-06-06 00:53:19');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (30, 'Dax', 'Brakus', 'ebraun@example.org', '(508)039-8768x2571', '4015 Norris Valley Apt. 963\nWest Glennie, MO 84916', 1, '1985-03-05 13:50:47', '1993-07-08 13:56:24');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (31, 'Natasha', 'Dach', 'jast.claudine@example.net', '1-445-449-6558x30760', '973 Gutkowski Groves Apt. 560\nRyleighstad, LA 72573-1589', 0, '1994-05-25 00:56:04', '2011-06-13 15:45:02');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (32, 'Fern', 'Eichmann', 'ylockman@example.org', '(647)178-8610x56723', '488 Erich Isle Apt. 881\nNorth Ollieville, IA 97059-0092', 0, '2011-07-09 11:44:22', '2013-04-17 21:43:26');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (33, 'Era', 'Satterfield', 'hgleichner@example.net', '1-799-069-6791x662', '0262 Thompson Burg Apt. 230\nSouth Rosemary, MO 48422-8071', 0, '2007-12-05 01:04:31', '1986-11-25 02:24:30');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (34, 'Amparo', 'Muller', 'parker.cynthia@example.org', '689-827-0214x66268', '504 Manuel Trace Suite 036\nPort Elza, MT 72454', 0, '2007-07-14 07:58:59', '2001-04-09 19:40:51');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (35, 'Alfredo', 'Ruecker', 'reichel.trent@example.net', '08633472683', '80376 Gislason Crescent\nMayfort, VA 66004', 1, '1982-06-15 17:41:17', '1978-07-24 06:01:34');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (36, 'Calista', 'Bechtelar', 'eleonore35@example.net', '434-257-5817x61551', '024 Herman Mews Suite 258\nEthaview, DE 71043', 1, '1995-12-12 23:47:39', '1973-11-26 19:53:06');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (37, 'Terry', 'Runolfsson', 'emmanuelle.marvin@example.org', '223.350.7408', '45678 Karli Causeway Suite 679\nEdisonbury, NM 66860-1412', 0, '1977-05-02 01:53:02', '1972-11-05 14:10:06');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (38, 'Aylin', 'Grady', 'hillary22@example.org', '1-311-445-8355', '70941 Kyra Road\nEast Kaileyview, TX 99762-7880', 1, '1987-08-26 01:33:47', '1976-05-16 02:55:25');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (39, 'Ana', 'Jacobson', 'hubert.lynch@example.net', '02563282556', '7410 Durgan Inlet\nNew Laurine, NV 11469', 0, '2020-05-28 00:12:17', '1973-07-01 08:34:27');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (40, 'Coralie', 'Mante', 'catalina17@example.org', '1-056-729-9563x3511', '7140 Schumm Square Apt. 750\nNorth Madysonport, MN 68621', 0, '2008-02-18 09:35:43', '2018-06-17 02:24:02');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (41, 'Enos', 'Bechtelar', 'dayne.sporer@example.org', '(170)557-5754', '844 Romaguera Extensions Apt. 902\nLemketown, DC 93423-4603', 1, '1971-02-15 10:25:16', '1985-09-18 06:07:37');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (42, 'Andy', 'Greenfelder', 'elenor43@example.org', '596.870.2341x3057', '9985 King Wall\nEast Gregoria, WY 41694-9292', 0, '2004-12-05 11:56:02', '2020-04-29 22:51:25');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (43, 'Lamont', 'Bashirian', 'avery71@example.net', '(812)668-2140', '5789 Hodkiewicz Estates Apt. 925\nNew Lilianefurt, ND 53232-9945', 1, '1988-05-28 22:13:58', '1990-10-12 03:28:18');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (44, 'Maud', 'Anderson', 'stark.fanny@example.com', '(191)531-8497', '56835 Carroll Forks Suite 835\nNorth Verlamouth, WV 28970', 0, '2011-05-01 09:39:01', '1997-06-23 10:46:44');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (45, 'Rose', 'Lebsack', 'colin65@example.com', '(812)083-5263x68362', '87298 Turcotte Forest\nCarmelaside, WI 87289', 0, '2019-12-13 19:22:17', '1991-05-15 04:37:53');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (46, 'Elyse', 'Pacocha', 'anya.bartoletti@example.com', '1-924-305-7563', '5978 Fatima Parkway Apt. 121\nWest Lisa, WV 72365-5003', 1, '1993-02-24 22:10:13', '1985-05-18 02:36:17');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (47, 'Vladimir', 'Sporer', 'ernie.wilderman@example.org', '(667)358-9951', '263 Tatyana Club\nFriedaville, CT 80185', 0, '2020-10-23 14:52:17', '1994-10-18 09:12:37');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (48, 'Cesar', 'Lesch', 'ankunding.keagan@example.org', '524-335-0456x4080', '99587 Gerda Locks\nPort Myrnafort, NY 77723', 1, '1996-07-09 12:34:18', '2008-09-14 16:57:06');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (49, 'Meda', 'Zieme', 'judd30@example.org', '1-410-077-7209x4722', '09975 Adrian Valleys Suite 855\nNew Dayanaside, GA 94018', 1, '2001-11-04 19:10:46', '2016-05-04 21:23:25');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (50, 'Kurt', 'Dach', 'murazik.ryleigh@example.com', '1-303-038-2531x2958', '231 Jordi Unions Apt. 510\nEast Cristalchester, CT 41753', 1, '1987-04-18 15:30:53', '1983-07-12 09:53:14');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (51, 'Ned', 'Oberbrunner', 'kutch.santa@example.net', '+29(3)2563443160', '7609 Johnston Wall Suite 236\nSouth Norbertofort, VT 13070', 1, '1991-10-26 00:08:34', '2003-03-15 11:39:46');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (52, 'Reina', 'Hane', 'lubowitz.alysa@example.net', '101.983.5943x8513', '3644 Leanne Gateway Suite 417\nClementinetown, NV 27317', 0, '2002-05-15 00:33:13', '1982-03-28 13:44:00');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (53, 'Trycia', 'Schinner', 'angel.buckridge@example.com', '1-246-693-8689x3902', '80126 Frami Club\nBrooklynberg, KS 07305-3802', 0, '1994-05-21 00:50:27', '2010-01-18 13:44:24');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (54, 'Ambrose', 'McKenzie', 'nrodriguez@example.net', '1-604-627-8358x87054', '2507 Watsica Dale\nFelipeport, MO 52591-6578', 1, '2001-04-04 13:02:42', '2007-10-12 20:27:30');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (55, 'Nicolas', 'Waelchi', 'rosalind67@example.org', '940-389-8811x806', '847 Strosin Motorway\nWest Myrtieton, HI 27839', 0, '1980-08-27 22:31:33', '1995-08-03 03:46:19');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (56, 'Esperanza', 'Crona', 'iquitzon@example.com', '(452)565-9184x39247', '413 Fritz Land\nNew Karianefurt, MO 64437-1174', 0, '2019-06-04 13:02:48', '1988-07-31 15:18:31');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (57, 'Sigmund', 'Price', 'king.alden@example.com', '285.505.9100', '7815 Lorna Route Apt. 112\nMariefurt, NY 06366-4027', 1, '1976-03-05 20:53:14', '2009-06-05 17:17:35');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (58, 'Carmella', 'Larkin', 'amuller@example.org', '986-849-4001x2746', '0535 Brock Overpass\nPort Magnolia, MI 82655-1366', 0, '2012-07-03 02:39:25', '2009-06-28 16:04:15');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (59, 'Reese', 'Cummings', 'fadel.melvin@example.com', '1-368-590-3668x484', '4798 Wilderman Plains Apt. 647\nWest Larissa, DC 12799', 1, '1980-09-26 04:38:09', '1987-08-29 09:42:04');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (60, 'Shaun', 'Willms', 'cbauch@example.org', '+41(4)1939689509', '62229 Nienow Flat Suite 582\nSouth Alekville, WV 16029-1029', 1, '1989-11-09 13:38:06', '1984-02-17 18:42:18');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (61, 'Marilyne', 'Schroeder', 'cwolff@example.net', '1-516-242-0317x5158', '7172 Murray Valley\nEast Kurtisburgh, ND 96840-0060', 1, '1998-03-15 15:31:21', '1994-01-29 18:04:59');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (62, 'Elouise', 'Williamson', 'gaston06@example.org', '1-719-202-7739x7454', '59409 Blanda Tunnel\nWest Marilieport, MI 64910', 1, '2012-09-27 11:35:42', '2004-01-31 22:51:09');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (63, 'Maybelle', 'Jacobson', 'hattie60@example.net', '004-016-5581x8656', '237 McLaughlin Mills Apt. 407\nLarissahaven, TN 39801', 0, '2013-04-05 07:57:36', '1977-07-25 17:41:13');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (64, 'Alvena', 'Smitham', 'elliott13@example.com', '1-835-656-7158x2337', '9710 Margarett Road Apt. 871\nGarrettton, IN 94946', 1, '2018-11-25 11:34:58', '1979-01-28 15:58:01');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (65, 'Emma', 'Veum', 'vicente08@example.com', '244-569-3248x53783', '8912 Yundt Radial\nNorth Abbieborough, NC 34033-6091', 0, '1974-03-05 08:31:31', '2006-06-11 16:04:46');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (66, 'Anabelle', 'Lehner', 'daphnee25@example.com', '628-289-2536x4724', '58289 Macejkovic Square\nStarkburgh, VT 53820', 0, '1990-02-10 17:13:25', '1982-10-16 13:38:14');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (67, 'Blanca', 'Ryan', 'rey13@example.org', '940-883-7549', '891 Kara Mission\nIdaton, WI 38639-0785', 1, '1974-03-09 19:45:13', '2006-10-05 18:27:11');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (68, 'Earnest', 'Gerlach', 'dickens.thurman@example.net', '475.839.6895x79561', '3902 Nikolaus Park Suite 380\nEast Antoniaview, IN 60632-2734', 1, '2001-08-29 21:27:12', '1991-10-14 08:14:31');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (69, 'Dianna', 'Lowe', 'jaeden.zieme@example.net', '07795714929', '76365 Sheldon Point Suite 399\nStaceyshire, MA 71085-2586', 0, '1987-04-16 23:35:31', '1994-03-19 17:06:48');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (70, 'Jedediah', 'Schamberger', 'prohaska.arch@example.com', '997.275.2949x40856', '619 Stokes Plaza Suite 102\nWhiteside, FL 89847-4218', 0, '1991-04-07 22:03:57', '1975-05-16 13:26:28');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (71, 'Korbin', 'Schuppe', 'vadams@example.net', '06572880864', '665 Russel Expressway Apt. 190\nRudolphburgh, WV 24094', 0, '1981-03-10 09:36:29', '2009-02-16 21:11:08');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (72, 'Shane', 'Renner', 'alexandra84@example.org', '062-928-4356x301', '02578 Kerluke Valleys\nEarlside, WY 31110', 0, '2006-11-10 07:43:41', '1999-01-18 15:13:49');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (73, 'Ambrose', 'Jenkins', 'kitty93@example.net', '(260)080-9840x285', '114 Ankunding Unions Suite 565\nJerroldburgh, CT 89341', 1, '2002-01-12 20:41:57', '1970-10-25 21:46:36');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (74, 'Israel', 'Doyle', 'dach.raven@example.org', '01287222890', '8460 Marquardt Glens Suite 701\nKunzestad, GA 92822', 0, '1986-01-07 21:28:42', '2012-05-09 11:44:57');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (75, 'Dennis', 'Kuhn', 'schaefer.ned@example.org', '379.527.6232x63383', '015 Wehner Villages Suite 635\nFerryville, MI 56846-7976', 1, '1973-01-18 07:34:00', '2017-01-19 02:11:06');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (76, 'Concepcion', 'Emmerich', 'kendra.rowe@example.net', '03725946499', '58589 Kuphal Rest Suite 892\nNew Rae, OH 97953-3564', 1, '1989-07-09 17:23:47', '2000-05-02 12:11:30');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (77, 'Kale', 'Nicolas', 'leonardo08@example.com', '1-680-853-3515x544', '96931 Alysa Rapids Apt. 439\nEugeneport, TX 29201-9930', 0, '2016-07-29 17:49:39', '1991-09-30 14:31:49');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (78, 'Jo', 'Bayer', 'dale25@example.com', '267.068.9519x47265', '80623 Maggio Run\nWest Chasitymouth, LA 81875', 0, '2011-03-04 04:54:19', '1999-07-12 09:44:33');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (79, 'Alyson', 'Legros', 'tnolan@example.org', '09774809310', '3363 Klein Grove Suite 401\nTedborough, NY 46661-0030', 1, '1997-09-06 01:41:25', '1989-03-20 06:21:14');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (80, 'Clint', 'Macejkovic', 'dicki.alycia@example.com', '1-287-590-2696x4603', '11308 Lucie Turnpike\nDanielamouth, MS 27490', 1, '2014-10-24 07:18:26', '1988-03-31 23:04:28');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (81, 'Kristian', 'Connelly', 'maci59@example.org', '(389)254-2207', '621 Kling Viaduct Suite 915\nLake Loyce, DE 93604', 1, '2002-10-30 16:04:07', '1992-06-24 08:59:49');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (82, 'Francis', 'Kreiger', 'judd18@example.org', '042-153-6782', '010 Milford Loop Suite 944\nWest Okey, OH 00188', 0, '1989-07-30 22:02:24', '2007-06-05 05:05:02');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (83, 'Dayana', 'Sawayn', 'ntremblay@example.net', '019-411-8533x343', '756 Dewayne Summit Suite 654\nWest Heath, ME 70347-4534', 0, '1990-12-30 18:26:59', '1989-08-13 19:21:52');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (84, 'Solon', 'Rempel', 'dietrich.shana@example.net', '362-810-1322', '593 Devante Neck\nCreminhaven, OH 08707-8283', 0, '2008-09-06 11:38:46', '1976-10-30 19:29:19');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (85, 'Joshuah', 'Pacocha', 'lesch.amie@example.net', '(501)089-4620x006', '9434 Shanel Park Suite 753\nSouth Tressaton, ND 60215', 0, '1988-03-16 12:33:13', '2019-08-18 04:03:41');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (86, 'Elenora', 'Kshlerin', 'marvin.melba@example.net', '116.722.9027', '557 Juston Village\nLisetteville, UT 23332', 1, '1975-06-19 15:06:08', '1992-10-15 00:52:05');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (87, 'Cruz', 'Cormier', 'imogene60@example.net', '08541890190', '2374 Mossie Road\nLake Rocio, NY 52227', 0, '1997-05-19 13:39:04', '1980-09-28 10:05:35');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (88, 'Emelia', 'Nitzsche', 'violette.kuphal@example.com', '851.603.7727', '7141 Christy Bridge\nWest Queenie, ID 66162-2529', 1, '2012-06-06 22:49:55', '1982-03-18 02:04:38');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (89, 'Herminio', 'Johnson', 'reed96@example.org', '448.080.5179', '75683 Meggie Passage\nLaurenmouth, ME 04646-4213', 0, '1987-01-09 14:00:41', '2019-03-07 09:19:51');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (90, 'Savion', 'Hagenes', 'angie.jacobs@example.net', '1-060-359-6770x929', '44785 Nikolaus Throughway\nWest Janessa, MT 82893-3610', 0, '2000-04-22 20:59:57', '1990-08-03 18:49:26');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (91, 'Mathew', 'Kiehn', 'd\'amore.rosa@example.com', '099-360-4397x08853', '159 Dare Mountains\nNew Jamirfurt, TX 72118-0580', 0, '2012-12-05 09:17:15', '1976-02-22 18:15:04');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (92, 'Stacy', 'Heaney', 'johnpaul.langworth@example.net', '1-647-242-6675x96958', '36138 Kutch Inlet Suite 688\nLangoshborough, NM 19926-1349', 1, '1991-03-27 06:10:17', '1973-03-09 04:46:57');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (93, 'Franz', 'Friesen', 'brendan.stoltenberg@example.org', '+17(7)2000519954', '414 Loraine Park\nWest Faustinoland, SD 01681', 1, '1971-07-17 15:02:16', '1992-07-19 04:40:58');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (94, 'Michelle', 'Mante', 'thompson.burdette@example.net', '1-076-061-2229x7696', '95923 Jaiden Parks\nSouth Golda, DE 53371', 0, '2007-02-22 15:44:10', '2002-03-29 04:30:58');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (95, 'Lila', 'Kshlerin', 'yschowalter@example.org', '+91(1)5839466488', '3608 Frederik Summit\nNew Stuartchester, NE 74918-7174', 1, '2002-12-28 05:06:36', '2015-01-23 14:01:13');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (96, 'Greg', 'Lehner', 'aiyana58@example.org', '980-063-8117', '74318 McLaughlin Wall Suite 005\nVerdaview, ID 52581-3338', 0, '2016-05-14 05:40:28', '2016-07-31 10:07:57');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (97, 'Ollie', 'Robel', 'albin95@example.org', '+57(2)0906264919', '175 Polly Wall Apt. 239\nTillmanburgh, WY 99815', 0, '2010-01-29 13:37:56', '1996-07-02 02:18:35');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (98, 'Wendell', 'Langworth', 'bogisich.rae@example.com', '(938)944-1474x0045', '49217 Milton Isle\nOtiliachester, WI 54805-6061', 0, '1986-07-20 03:48:56', '2020-05-06 03:47:17');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (99, 'Van', 'Gulgowski', 'njacobson@example.net', '623.988.3679x89860', '598 Kunze Wells Apt. 481\nSouth Velda, AL 65371', 0, '2014-06-27 01:51:35', '1995-04-19 15:04:26');
INSERT INTO `owners` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `show_contacts`, `created_at`, `updated_at`) VALUES (100, 'Hunter', 'Barrows', 'wlittle@example.net', '08577617341', '40182 Molly Expressway\nAnnalisehaven, CT 03503-2217', 0, '2016-03-31 15:15:39', '1998-02-17 11:55:12');


#
# TABLE STRUCTURE FOR: parents
#

DROP TABLE IF EXISTS `parents`;

CREATE TABLE `parents` (
  `animal_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор животного',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Идентификатор животного',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`animal_id`,`parent_id`) COMMENT 'Первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Родители животного';

INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (1, 62, '2013-12-13 22:51:25');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (2, 51, '1992-12-19 18:44:07');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (2, 57, '1990-04-05 13:38:24');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (3, 44, '2018-11-16 22:26:04');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (3, 45, '2007-04-25 21:50:47');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (3, 57, '2011-01-25 23:31:53');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (4, 31, '2003-09-15 10:42:13');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (4, 43, '1990-02-11 06:31:05');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (4, 49, '1971-01-17 00:29:56');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (5, 34, '1992-09-09 07:57:09');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (5, 70, '1986-07-07 07:23:55');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (7, 48, '2017-07-13 12:08:13');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (8, 68, '1971-06-15 12:04:02');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (9, 33, '2003-02-19 19:57:29');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (11, 30, '1979-02-21 12:45:53');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (11, 33, '2015-03-08 16:14:24');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (11, 54, '2009-02-11 02:28:57');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (11, 66, '1992-10-23 04:45:14');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (12, 34, '1985-01-29 01:44:14');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (12, 57, '1988-08-24 12:52:07');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (13, 34, '2011-10-29 05:39:05');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (13, 50, '2001-11-06 03:50:48');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (13, 70, '2007-10-14 03:49:38');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (14, 41, '2011-11-19 20:54:08');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (14, 53, '1994-08-17 06:23:41');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (16, 43, '2019-12-25 08:23:34');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (16, 69, '1998-03-23 04:26:37');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (19, 63, '1973-11-28 06:06:12');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (20, 31, '1989-08-15 22:35:49');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (20, 47, '1998-02-10 05:27:58');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (20, 51, '1988-01-05 17:33:12');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (21, 54, '1979-03-22 11:05:38');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (22, 51, '1987-08-28 04:35:49');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (22, 63, '1978-06-07 22:44:10');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (23, 46, '2005-02-03 03:59:47');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (23, 48, '1987-04-11 09:14:07');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (23, 56, '2000-11-04 04:57:17');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (24, 41, '2019-08-09 04:11:54');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (25, 51, '1983-09-29 03:37:14');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (25, 64, '1980-10-30 19:59:48');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (26, 37, '2009-05-15 09:25:34');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (26, 40, '2002-04-01 21:27:24');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 39, '1987-04-16 14:17:09');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 40, '2019-07-11 04:35:01');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 43, '1985-10-03 18:58:55');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 61, '1987-08-23 05:52:57');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 63, '2016-12-27 20:24:00');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (27, 66, '1972-09-24 18:31:00');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (28, 40, '1993-05-25 04:19:09');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (29, 35, '1975-08-19 14:37:28');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (29, 37, '2011-10-02 04:46:20');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (29, 66, '1970-12-13 16:25:34');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (30, 49, '2019-05-12 05:22:15');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (32, 47, '1975-01-17 08:12:36');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (32, 69, '1993-01-09 12:18:09');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (33, 46, '2015-07-27 02:22:15');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (33, 54, '2001-11-12 20:43:21');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (33, 65, '2018-07-11 07:25:55');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (35, 31, '1990-12-15 00:34:51');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (38, 30, '1976-05-28 19:28:46');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (38, 47, '1981-10-15 13:19:15');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (38, 55, '1985-05-22 16:32:33');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 33, '2010-07-18 08:58:48');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 35, '1990-10-21 16:51:21');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 37, '2019-02-28 07:45:32');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 54, '1983-08-31 12:26:16');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 56, '1995-04-01 20:34:17');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 59, '2014-09-06 07:11:40');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 61, '2018-01-06 23:19:15');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (39, 62, '1982-01-11 00:24:22');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (40, 36, '1984-08-09 16:48:33');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (40, 43, '2020-08-20 07:59:16');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (41, 36, '2012-12-07 14:42:15');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (41, 62, '1972-01-06 10:57:25');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (41, 69, '1995-04-23 01:58:01');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (42, 31, '1998-02-08 22:52:26');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (42, 33, '1996-10-08 01:36:35');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (42, 37, '1984-12-28 19:04:27');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (42, 46, '1987-02-15 10:04:21');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (42, 67, '1981-06-29 18:13:33');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (43, 31, '1974-01-19 18:00:01');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (43, 58, '1975-10-13 07:43:08');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (44, 48, '1979-12-05 09:05:19');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (44, 57, '1997-01-23 16:16:51');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (45, 38, '1997-06-12 09:07:01');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (46, 44, '2012-05-17 02:01:01');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (46, 63, '1994-05-01 16:38:37');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (46, 68, '2020-07-04 23:54:13');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (47, 40, '1974-02-22 06:21:55');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (47, 47, '2012-05-22 09:07:36');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (48, 39, '2011-05-24 13:13:14');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (49, 52, '2002-06-18 16:28:54');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (49, 63, '1972-06-15 13:34:24');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (50, 46, '1991-11-22 23:01:10');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (50, 65, '1997-07-18 06:30:45');
INSERT INTO `parents` (`animal_id`, `parent_id`, `created_at`) VALUES (50, 68, '1981-01-23 08:50:05');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `animal_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на животное',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Фотографии животных';

INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 'application/vnd.sun.xml.impress', 8418, NULL, '1982-03-01 08:56:47', '2018-08-07 12:19:07');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 'application/x-tex-tfm', 918, NULL, '2002-02-19 22:47:04', '2012-05-07 14:38:16');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 'application/x-msbinder', 5416, NULL, '1973-10-27 19:40:00', '1999-05-24 21:23:46');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 'application/vnd.trid.tpt', 26223727, NULL, '1979-08-21 06:44:16', '2005-04-05 00:28:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 'application/vnd.vcx', 56769943, NULL, '1977-09-13 04:15:26', '2000-01-23 06:24:39');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 6, 'application/vnd.syncml.dm+xml', 49620, NULL, '1975-09-21 19:07:27', '1970-07-19 16:46:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 7, 'application/vnd.denovo.fcselayout-link', 0, NULL, '1981-09-18 23:46:35', '2005-09-23 17:53:35');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 8, 'video/vnd.mpegurl', 5054758, NULL, '2019-12-02 09:32:18', '2007-01-28 10:46:39');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 9, 'text/vnd.in3d.3dml', 9, NULL, '1998-11-08 00:48:35', '1994-06-25 22:29:01');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 10, 'application/vnd.oasis.opendocument.graphics', 99, NULL, '1973-04-16 10:04:22', '2020-03-01 11:02:38');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 11, 'text/prs.lines.tag', 47019, NULL, '2004-06-17 01:09:25', '2004-03-24 02:35:05');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 12, 'text/turtle', 6238693, NULL, '1973-04-16 04:09:11', '1980-03-12 10:55:40');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 13, 'video/x-msvideo', 6799894, NULL, '1975-10-21 12:06:50', '1988-06-01 06:18:29');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 14, 'application/atom+xml', 0, NULL, '1979-07-12 18:15:36', '1986-01-16 20:38:33');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 15, 'image/x-rgb', 0, NULL, '1981-01-30 10:29:11', '2011-06-20 14:29:55');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 16, 'text/x-uuencode', 472050346, NULL, '2013-05-19 14:08:13', '2004-05-30 19:22:12');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 17, 'video/jpm', 0, NULL, '2020-10-08 18:27:22', '2018-01-20 01:49:28');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 18, 'image/vnd.xiff', 2752457, NULL, '1984-03-01 05:01:04', '2001-06-29 23:37:22');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 19, 'application/x-7z-compressed', 0, NULL, '1988-04-19 01:39:59', '1986-12-05 02:53:13');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 20, 'model/vnd.mts', 81651, NULL, '1993-02-23 07:34:32', '2016-10-17 21:02:58');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 21, 'application/vnd.oasis.opendocument.graphics', 938699, NULL, '2013-06-22 06:36:31', '2002-09-03 02:39:29');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 22, 'image/cgm', 4, NULL, '2010-08-24 17:51:01', '1995-02-12 14:47:09');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 23, 'application/vnd.ufdl', 692360, NULL, '1979-03-09 19:35:27', '1981-07-09 17:17:00');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 24, 'application/vnd.dece.zip', 77, NULL, '2008-02-19 11:08:33', '2013-10-16 08:30:56');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 25, 'application/vnd.ahead.space', 6201027, NULL, '1998-08-02 10:44:40', '1973-08-31 06:11:15');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 26, 'text/richtext', 24, NULL, '2006-05-10 21:10:00', '1989-02-05 19:38:41');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 27, 'application/vnd.adobe.air-application-installer-package+zip', 2482495, NULL, '1985-03-17 01:32:43', '1978-10-10 00:56:59');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 28, 'application/vnd.fdf', 514556116, NULL, '1998-07-11 07:55:26', '1997-12-12 21:16:34');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 29, 'application/vnd.ms-powerpoint.slideshow.macroenabled.12', 5915102, NULL, '2006-06-29 16:59:31', '2011-02-12 13:53:55');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 30, 'application/vnd.sun.xml.draw.template', 5897, NULL, '2012-07-16 16:09:29', '1991-03-01 04:51:20');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 31, 'application/x-rar-compressed', 686, NULL, '2015-11-06 02:25:02', '1978-06-14 04:28:18');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 32, 'text/x-nfo', 0, NULL, '1991-12-11 07:04:07', '2009-10-16 22:39:53');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 33, 'application/omdoc+xml', 75502242, NULL, '1981-11-05 04:20:03', '2011-06-23 16:21:01');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 34, 'text/vnd.dvb.subtitle', 39, NULL, '1977-07-27 06:58:17', '1997-06-16 23:08:48');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 35, 'application/x-sv4crc', 85, NULL, '1996-08-22 14:11:43', '1973-02-18 12:05:48');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 36, 'application/x-sql', 37807, NULL, '1999-08-19 05:27:51', '2001-09-03 18:12:43');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 37, 'application/x-sh', 0, NULL, '2019-09-23 10:21:56', '1993-05-09 02:15:38');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 38, 'video/mp4', 9238591, NULL, '1970-06-18 07:08:25', '2018-04-16 12:37:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 39, 'application/vnd.fdf', 56611, NULL, '1976-04-18 16:22:40', '1985-10-27 17:50:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 40, 'model/x3d+binary', 94090, NULL, '1977-03-25 21:34:17', '1988-12-14 17:50:08');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 41, 'application/vnd.fdf', 70512, NULL, '2009-12-12 20:07:21', '1999-06-25 03:11:45');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 42, 'video/h264', 14367993, NULL, '2006-12-25 18:13:10', '2012-05-30 08:58:52');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 43, 'image/svg+xml', 3, NULL, '2001-04-15 03:55:28', '2010-06-13 09:12:48');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 44, 'application/vnd.trueapp', 60492176, NULL, '1971-11-10 18:23:26', '2000-02-06 03:45:44');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 45, 'application/lost+xml', 33854, NULL, '2001-11-04 15:57:38', '2005-10-08 10:00:39');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 46, 'application/vnd.openxmlformats-officedocument.wordprocessingml.template', 137014, NULL, '2007-01-04 22:55:00', '2007-04-09 03:53:56');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 47, 'application/vnd.fdf', 666392718, NULL, '1974-03-05 07:18:46', '1975-10-11 07:09:48');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 48, 'application/mathml+xml', 88665, NULL, '2007-06-02 02:25:44', '1973-08-04 08:19:31');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 49, 'application/xml-dtd', 38, NULL, '1987-10-23 07:11:25', '2013-07-05 05:13:08');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 50, 'application/vnd.sun.xml.impress', 870, NULL, '1981-05-25 13:55:37', '1997-11-08 18:04:22');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 51, 'image/x-pcx', 0, NULL, '2010-02-04 20:31:40', '1986-01-05 00:24:16');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 52, 'audio/basic', 200, NULL, '1990-05-04 05:13:27', '1972-07-07 09:29:06');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 53, 'application/vnd.ecowin.chart', 137, NULL, '1992-07-07 21:00:22', '1983-04-20 06:06:13');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 54, 'image/x-tga', 73818, NULL, '2013-04-05 05:17:42', '1999-07-28 00:43:11');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 55, 'application/xv+xml', 2081, NULL, '2013-02-05 23:34:35', '2001-07-01 01:21:01');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 56, 'application/vnd.wap.wbxml', 4620632, NULL, '1986-07-21 05:35:24', '2014-09-10 01:51:54');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 57, 'audio/x-mpegurl', 5, NULL, '1999-05-09 17:00:38', '2009-07-26 04:20:58');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 58, 'video/mpeg', 659847, NULL, '1987-09-03 21:22:28', '1991-05-01 21:43:49');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 59, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 67508, NULL, '2017-11-01 17:51:59', '1989-02-03 20:14:13');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 60, 'application/vnd.llamagraphics.life-balance.desktop', 372059693, NULL, '1997-02-08 03:51:10', '1973-12-04 00:38:26');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 61, 'application/x-font-woff', 1131, NULL, '1984-06-16 19:35:03', '2013-09-24 01:36:24');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 62, 'application/x-cpio', 550793772, NULL, '1998-08-29 07:24:48', '1986-03-04 16:37:42');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 63, 'application/x-7z-compressed', 433445, NULL, '2019-06-28 21:42:28', '2018-11-28 00:57:35');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 64, 'application/vnd.immervision-ivp', 597, NULL, '1970-07-08 19:33:39', '2003-07-09 18:09:58');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 65, 'video/x-fli', 0, NULL, '1975-02-02 12:06:13', '2014-01-05 13:53:21');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 66, 'application/vnd.ezpix-album', 336066466, NULL, '1973-10-27 12:33:24', '2011-07-11 05:25:26');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 67, 'audio/x-mpegurl', 80524469, NULL, '1990-05-17 05:11:16', '1984-02-28 19:16:51');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 68, 'application/x-ustar', 231142, NULL, '1981-07-01 05:03:18', '1990-05-23 09:04:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 69, 'application/vnd.pvi.ptid1', 1185, NULL, '2020-05-30 10:51:09', '2002-01-28 03:04:18');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 70, 'application/vnd.stepmania.stepchart', 0, NULL, '2007-02-03 16:43:31', '2001-02-09 23:33:46');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 71, 'application/vnd.ms-excel.sheet.macroenabled.12', 4482675, NULL, '1981-08-03 02:26:55', '2001-08-30 03:54:39');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 72, 'application/mets+xml', 268, NULL, '2015-04-04 02:42:18', '1981-06-15 22:00:47');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 73, 'video/x-ms-vob', 385810, NULL, '1974-04-15 11:03:58', '1988-03-26 19:59:08');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 74, 'application/rtf', 998, NULL, '1974-11-16 17:21:43', '1994-01-01 08:42:24');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 75, 'application/vnd.kde.karbon', 0, NULL, '1985-04-15 00:10:31', '1980-11-06 09:05:38');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 76, 'text/x-nfo', 8, NULL, '2000-04-29 02:41:48', '2014-04-05 11:04:54');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 77, 'application/x-tcl', 461158, NULL, '1981-11-30 18:14:26', '1977-12-29 16:08:49');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 78, 'application/java-vm', 0, NULL, '1990-09-23 07:11:00', '1985-08-21 18:38:04');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 79, 'application/pskc+xml', 3534, NULL, '1991-04-17 19:53:50', '2018-01-23 18:00:26');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 80, 'application/vnd.denovo.fcselayout-link', 194551, NULL, '2013-11-07 03:18:37', '1971-06-14 03:10:38');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 81, 'audio/adpcm', 103979455, NULL, '2012-10-15 06:17:39', '1975-05-17 03:09:59');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 82, 'image/x-freehand', 0, NULL, '2018-06-13 14:02:18', '1972-08-29 17:10:12');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 83, 'application/vnd.smaf', 3, NULL, '1997-04-21 17:38:25', '1971-01-13 03:57:17');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 84, 'application/x-subrip', 957, NULL, '1977-04-05 01:56:30', '1976-10-26 17:47:48');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 85, 'application/x-cfs-compressed', 964, NULL, '1992-07-08 02:06:29', '1976-01-06 04:46:40');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 86, 'application/vnd.recordare.musicxml', 9, NULL, '1994-04-19 11:47:59', '1992-03-11 12:28:24');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 87, 'application/xml-dtd', 0, NULL, '1973-03-17 04:18:12', '1982-06-22 19:38:12');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 88, 'video/x-ms-vob', 36120, NULL, '2018-03-24 18:41:14', '1986-06-13 19:16:23');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 89, 'application/mods+xml', 395679007, NULL, '1994-08-11 04:12:33', '1981-09-16 21:12:25');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 90, 'image/x-portable-pixmap', 685225611, NULL, '1984-09-07 11:45:34', '2002-06-28 13:13:19');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 91, 'application/vnd.seemail', 12638059, NULL, '2003-07-07 23:43:10', '1982-07-05 17:28:49');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 92, 'text/vnd.curl.mcurl', 861669, NULL, '1994-09-06 13:25:13', '1973-11-18 10:03:56');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 93, 'image/x-freehand', 972476928, NULL, '2008-04-29 09:10:02', '1997-07-09 08:57:09');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 94, 'application/x-conference', 8, NULL, '1984-07-26 23:58:00', '2010-05-04 09:42:34');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 95, 'application/x-gramps-xml', 75466182, NULL, '2009-12-05 19:56:17', '1971-03-16 09:13:52');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 96, 'application/vnd.kenameaapp', 39, NULL, '1980-02-23 15:50:23', '2014-08-14 11:42:18');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 97, 'application/vnd.sun.xml.writer.template', 12980676, NULL, '1998-10-15 03:18:28', '2013-06-03 11:37:22');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 98, 'video/3gpp2', 79233711, NULL, '1989-01-11 11:34:40', '1990-06-15 01:02:57');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 99, 'application/vnd.openxmlformats-officedocument.presentationml.template', 893195295, NULL, '2004-06-01 17:25:02', '2008-02-10 21:05:31');
INSERT INTO `photos` (`id`, `animal_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 100, 'video/quicktime', 561, NULL, '2007-05-14 02:58:58', '1976-11-21 12:22:04');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи, вносящие данные в БД';

INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'raphaelle.gerlach@example.com', '302-689-1109x79446', '1987-12-06 00:19:34', '1996-07-01 23:15:19');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'florine.frami@example.org', '318.011.9556x58685', '1974-04-08 18:21:42', '2012-03-05 11:25:09');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'brad74@example.org', '(631)777-8086', '1987-07-26 17:35:25', '1970-01-24 14:34:21');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'fstokes@example.net', '1-800-700-3164x225', '2003-11-04 00:11:16', '2001-07-20 00:39:49');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'laverne.breitenberg@example.com', '1-964-378-1156', '1982-10-05 14:59:44', '1972-04-08 00:22:45');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'draynor@example.org', '(529)251-6604x1028', '2016-06-21 06:23:44', '1995-06-29 10:32:40');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'sunny31@example.net', '090.128.6909x74182', '1995-04-04 22:34:31', '1999-06-07 10:24:57');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'hayes.eve@example.net', '1-980-073-5215', '1981-07-23 11:17:33', '1997-08-23 13:28:18');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'katherine86@example.net', '(918)372-5754x226', '1976-12-22 07:09:50', '1984-12-19 04:31:37');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'ahmed.simonis@example.com', '+57(5)8176164137', '2016-02-09 23:24:19', '1993-04-09 04:05:08');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'ntoy@example.com', '180-944-9456x3463', '2006-11-17 08:46:26', '1994-04-02 04:05:07');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'annamae52@example.com', '09039385937', '2000-05-05 20:01:24', '2003-11-03 11:44:42');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'rodolfo.mcdermott@example.org', '467.606.9827x61838', '1996-12-09 11:14:24', '2008-08-27 20:12:46');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'feest.carolyn@example.org', '08093275082', '2000-01-07 05:47:06', '2016-03-27 21:19:22');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'ablock@example.org', '1-453-831-7095x2346', '2018-08-13 18:17:49', '1994-07-19 20:37:19');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'borer.rebeka@example.net', '905.988.3647', '2004-12-27 22:35:37', '1971-06-24 04:34:55');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'daphnee.schuppe@example.org', '1-006-575-9854', '1981-07-05 23:21:48', '1970-10-07 06:43:41');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'haag.uriel@example.net', '04875681093', '1986-05-07 15:50:24', '2016-11-01 01:42:11');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'donnell.shields@example.org', '1-598-389-9561', '2018-12-06 22:16:09', '1990-02-20 22:41:51');
INSERT INTO `users` (`id`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'kyla25@example.org', '023-940-1970', '1983-04-18 12:19:59', '1997-02-06 01:20:24');


