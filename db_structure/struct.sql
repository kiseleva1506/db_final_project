DROP DATABASE IF EXISTS animal_id;
CREATE DATABASE animal_id;
USE animal_id;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  email varchar(100) NOT NULL COMMENT 'Почта',
  phone varchar(100) NOT NULL COMMENT 'Телефон',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  UNIQUE KEY phone (phone)
) COMMENT 'Пользователи, вносящие данные в БД';

DROP TABLE IF EXISTS owners;
CREATE TABLE owners (
  id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  first_name varchar(100) NOT NULL COMMENT 'Имя владельца',
  last_name varchar(100) NOT NULL COMMENT 'Фамилия владельца',
  email varchar(100) NOT NULL COMMENT 'Почта',
  phone varchar(100) NOT NULL COMMENT 'Телефон',
  address varchar(255) NOT NULL COMMENT 'Адрес владельца',
  show_contacts bool NOT NULL DEFAULT False COMMENT 'Показывать контакты владельца',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  UNIQUE KEY phone (phone)
) COMMENT 'Владельцы животных'; 

DROP TABLE IF EXISTS animals;
CREATE TABLE animals (
  id int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  name varchar(255) NOT NULL COMMENT 'Кличка животного',
  chip varchar(50) NOT NULL COMMENT 'Номер чипа',
  kind_id tinyint UNSIGNED NOT NULL COMMENT 'Вид животного',
  breed_id smallint UNSIGNED COMMENT 'Порода животного',
  gender_id tinyint UNSIGNED NOT NULL COMMENT 'Пол животного',
  owner_type ENUM('person','organization') COMMENT 'Тип владельца: человек или организация',
  owner_id int UNSIGNED COMMENT 'Идентификатор владельца',
  chipping_organization_id smallint UNSIGNED NOT NULL COMMENT 'Идентификатор чипировавшей организации',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY chip (chip)
) COMMENT 'Животные';

DROP TABLE IF EXISTS kinds;
CREATE TABLE kinds (
  id tinyint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  name varchar(100) NOT NULL COMMENT 'Вид животного',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (id)
) COMMENT 'Виды животных';

DROP TABLE IF EXISTS breeds;
CREATE TABLE breeds (
  id tinyint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  kind_id tinyint UNSIGNED NOT NULL COMMENT 'Вид животного',
  name varchar(100) NOT NULL COMMENT 'Порода животного',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (id)
) COMMENT 'Породы животных';

DROP TABLE IF EXISTS genders;
CREATE TABLE genders (
  id tinyint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  name varchar(100) NOT NULL COMMENT 'Пол животного',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (id)
) COMMENT 'Виды полов животных';

DROP TABLE IF EXISTS organizations;
CREATE TABLE organizations (
  id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  name varchar(255) NOT NULL COMMENT 'Наименование организации',
  inn varchar(100) NOT NULL COMMENT 'ИНН организации',
  email varchar(100) NOT NULL COMMENT 'Почта',
  phone varchar(100) NOT NULL COMMENT 'Телефон',
  address varchar(255) NOT NULL COMMENT 'Адрес владельца',
  is_chipping bool NOT NULL DEFAULT False COMMENT 'Чипирующая',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  UNIQUE KEY phone (phone),
  UNIQUE KEY inn (inn)
) COMMENT 'Организации, чипирующие животных'; 

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  animal_id int unsigned NOT NULL COMMENT 'Ссылка на животное',
  filename varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  size int NOT NULL COMMENT 'Размер файла',
  metadata json DEFAULT NULL COMMENT 'Метаданные файла',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
) COMMENT='Фотографии животных';

DROP TABLE IF EXISTS parents;
CREATE TABLE parents (
  animal_id int UNSIGNED NOT NULL COMMENT 'Идентификатор животного',
  parent_id int UNSIGNED NOT NULL COMMENT 'Идентификатор животного',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  PRIMARY KEY (animal_id, parent_id) COMMENT "Первичный ключ"
) COMMENT='Родители животного';

DROP TABLE IF EXISTS exchange_identifiers;
CREATE TABLE exchange_identifiers (
  table_name varchar(100) NOT NULL COMMENT 'Таблица сущности',
  origin_id int UNSIGNED NOT NULL COMMENT 'Идентификатор нашей сущности',
  target_id int UNSIGNED NOT NULL COMMENT 'Идентификатор сущности партнера',
  partner_id int UNSIGNED NOT NULL COMMENT 'Идентификатор партнера',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (table_name, origin_id, partner_id) COMMENT "Первичный ключ"
) COMMENT='Идентификаторы для обмена';





