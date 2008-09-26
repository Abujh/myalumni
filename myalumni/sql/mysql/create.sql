CREATE TABLE MYALUMNI_SYSTEM_GROUP_TBL (
  XLATGROUP_ID VARCHAR(40)  NOT NULL  ,
  DESCRIPTION VARCHAR(150)  NOT NULL  ,
  MINLEN INTEGER  NOT NULL  ,
  MAXLEN INTEGER  NOT NULL  ,
  UPDATEABLE CHAR(1)  NOT NULL    ,
PRIMARY KEY(XLATGROUP_ID)  ,
UNIQUE INDEX MYALUMNI_SYSTEM_GROUP_TBL_index4300(XLATGROUP_ID));



CREATE TABLE MYALUMNI_SYSCONFIG_TBL (
  SYSCONFIG_ID VARCHAR(40)  NOT NULL  ,
  SESSION_TIMEOUT VARCHAR(6)  NULL  ,
  RSS_HEADER VARCHAR(35)  NULL  ,
  RSS_URL VARCHAR(250)  NULL  ,
  SERVER_URL VARCHAR(250)  NULL  ,
  ALBUM_URL VARCHAR(250)  NULL  ,
  FORUM_URL VARCHAR(250)  NULL  ,
  ORG_FIRST_YEAR INTEGER  NULL  ,
  ORG_NAME VARCHAR(40)  NULL  ,
  ORG_SHORT_NAME VARCHAR(20)  NULL  ,
  ORG_EMAIL VARCHAR(100)  NULL  ,
  ORG_ABOUT_US TEXT  NULL  ,
  ORG_INTRO TEXT  NULL  ,
  HAS_DORMITORY CHAR(1)  NULL  ,
  BIRTHDAY_NOTIFICATION CHAR(1)  NULL  ,
  LASTMODIFICATION CHAR(1)  NULL  ,
  LOGO_FILE_NAME VARCHAR(200)  NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NULL    ,
PRIMARY KEY(SYSCONFIG_ID));



CREATE TABLE MYALUMNI_PRIVATE_MESSAGE_TBL (
  MESSAGE_ID VARCHAR(40)  NOT NULL  ,
  MESSAGE_FROM_USER_ID VARCHAR(40)  NOT NULL  ,
  MESSAGE_TO_USER_ID VARCHAR(40)  NOT NULL  ,
  FOLDER_NAME VARCHAR(30)  NOT NULL  ,
  PRIORITY CHAR(1)  NOT NULL  ,
  SUBJECT VARCHAR(60)  NOT NULL  ,
  MESSAGE_DATE TIMESTAMP  NOT NULL  ,
  IP_ADDRESS VARCHAR(40)  NOT NULL  ,
  MESSAGE_TEXT VARCHAR(4000)  NOT NULL  ,
  MESSAGE_STATUS CHAR(1)  NOT NULL  ,
  GUEST_EMAIL VARCHAR(50)  NULL  ,
  GUEST_NAME VARCHAR(40)  NULL  ,
  COPY_ME CHAR(1)  NOT NULL  ,
  TO_WEBMASTER CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(MESSAGE_ID)  ,
INDEX MYALUMNI_PRIVATE_MESSAGE_TBL_index4284(MESSAGE_ID, MESSAGE_STATUS, MESSAGE_FROM_USER_ID, MESSAGE_TO_USER_ID));



CREATE TABLE MYALUMNI_SCROLL_TBL (
  SCROLL_ID VARCHAR(40)  NOT NULL  ,
  SCROLL_TEXT VARCHAR(200)  NOT NULL  ,
  PRIORITY CHAR(1)  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(SCROLL_ID)  ,
UNIQUE INDEX MYALUMNI_SCROLL_TBL_index4298(SCROLL_ID));



CREATE TABLE MYALUMNI_REMINISCE_TBL (
  REMINISCE_ID VARCHAR(40)  NOT NULL  ,
  FROM_YEAR VARCHAR(4)  NULL  ,
  TO_YEAR VARCHAR(4)  NULL  ,
  SLANG VARCHAR(200)  NOT NULL  ,
  PRONOUNCE VARCHAR(200)  NOT NULL  ,
  MEANING VARCHAR(2000)  NOT NULL  ,
  AUTHOR_ID VARCHAR(40)  NOT NULL  ,
  REMINISCE_STATUS CHAR(1)  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(REMINISCE_ID));



CREATE TABLE MYALUMNI_ERRORLOG_TBL (
  ERRORLOG_ID VARCHAR(40)  NOT NULL  ,
  ERROR_MESSAGE VARCHAR(4000)  NULL  ,
  STACK_TRACE VARCHAR(4000)  NULL  ,
  ERROR_DATE TIMESTAMP  NULL  ,
  CAUSE VARCHAR(200)  NULL  ,
  LOGGED_BY VARCHAR(40)  NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(ERRORLOG_ID));



CREATE TABLE MYALUMNI_CLASS_NEWS_TBL (
  CLASS_NEWS_ID VARCHAR(40)  NOT NULL  ,
  SUBJECT VARCHAR(50)  NOT NULL  ,
  NEWS VARCHAR(4000)  NOT NULL  ,
  FROM_CLASS_YEAR INTEGER  NOT NULL  ,
  TO_CLASS_YEAR INTEGER  NOT NULL  ,
  AUTHOR_ID VARCHAR(40)  NOT NULL  ,
  NEWS_STATUS CHAR(1)  NOT NULL  ,
  SYSTEM_NEWS CHAR(1)  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(CLASS_NEWS_ID)  ,
UNIQUE INDEX MYALUMNI_CLASS_NEWS_TBL_index4296(CLASS_NEWS_ID));



CREATE TABLE MYALUMNI_FRONTPAGELINK_TBL (
  LINK_ID VARCHAR(40)  NOT NULL  ,
  LINK_LABEL VARCHAR(40)  NULL  ,
  LINK_URL VARCHAR(200)  NULL  ,
  IMPORTANT CHAR(1)  NULL  ,
  LINK_STATUS CHAR(1)  NULL  ,
  LASTMODIFICATION CHAR(1)  NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NULL    ,
PRIMARY KEY(LINK_ID));



CREATE TABLE MYALUMNI_MEMBERS_TBL (
  MEMBER_ID VARCHAR(40)  NOT NULL  ,
  USER_NAME VARCHAR(40)  NOT NULL  ,
  MEMBER_STATUS VARCHAR(20)  NOT NULL  ,
  MEMBER_PASSWORD VARCHAR(40)  NOT NULL  ,
  EMAIL VARCHAR(60)  NULL  ,
  FIRST_IP_ADDRESS VARCHAR(40)  NOT NULL  ,
  LAST_IP_ADDRESS VARCHAR(40)  NOT NULL  ,
  CREATION_DATE TIMESTAMP  NOT NULL  ,
  LAST_LOGON_DATE TIMESTAMP  NOT NULL  ,
  ACTIVATION_CODE VARCHAR(40)  NULL  ,
  SIGNATURE VARCHAR(70)  NULL  ,
  TITLE VARCHAR(30)  NOT NULL  ,
  AVATAR VARCHAR(200)  NULL  ,
  FIRST_NAME VARCHAR(70)  NOT NULL  ,
  LAST_NAME VARCHAR(70)  NOT NULL  ,
  MAIDEN_NAME VARCHAR(70)  NULL  ,
  NICK_NAME VARCHAR(70)  NULL  ,
  GENDER CHAR(1)  NOT NULL  ,
  ADDRESS VARCHAR(200)  NULL  ,
  FIRST_EMAIL VARCHAR(60)  NOT NULL  ,
  COUNTRY VARCHAR(70)  NOT NULL  ,
  PHONE VARCHAR(200)  NULL  ,
  OCCUPATION VARCHAR(100)  NULL  ,
  WEBSITE VARCHAR(200)  NULL  ,
  FAV_URL_1 VARCHAR(200)  NULL  ,
  FAV_URL_2 VARCHAR(200)  NULL  ,
  YEAR_IN INTEGER  NOT NULL  ,
  YEAR_OUT INTEGER  NOT NULL  ,
  IS_ADMIN CHAR(1)  NOT NULL  ,
  DORMITORY VARCHAR(40)  NULL  ,
  COMMENTS VARCHAR(1000)  NULL  ,
  ADMIN_COMMENTS VARCHAR(1000)  NULL  ,
  DOB DATE  NULL  ,
  HIDE_EMAIL CHAR(1)  NOT NULL  ,
  HIDE_ADDRESS CHAR(1)  NOT NULL  ,
  HIDE_PHONE CHAR(1)  NOT NULL  ,
  HIDE_IM CHAR(1)  NOT NULL  ,
  PROMPT_CHANGE CHAR(1)  NOT NULL  ,
  LASTMODIFICATION VARCHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(MEMBER_ID)  ,
INDEX MYALUMNI_MEMBERS_TBL_index4278(USER_NAME)  ,
INDEX MYALUMNI_MEMBERS_TBL_index4279(MEMBER_ID)  ,
UNIQUE INDEX MYALUMNI_MEMBERS_TBL_index4289(USER_NAME, MEMBER_ID));



CREATE TABLE MYALUMNI_LOGINHISTORY_TBL (
  LOGINHISTORY_ID VARCHAR(40)  NOT NULL  ,
  REQUEST_TIME TIMESTAMP  NULL  ,
  USER_NAME VARCHAR(40)  NULL  ,
  SOURCE_IP VARCHAR(50)  NOT NULL  ,
  LOGIN_STATUS CHAR(1)  NOT NULL  ,
  USER_AGENT VARCHAR(15)  NULL  ,
  REASON_CODE CHAR(2)  NOT NULL    ,
PRIMARY KEY(LOGINHISTORY_ID));



CREATE TABLE MYALUMNI_SYSTEM_LOOKUP_TBL (
  LOOKUP_ID VARCHAR(40)  NOT NULL  ,
  XLATGROUP_ID VARCHAR(40)  NOT NULL  ,
  THE_LABEL VARCHAR(150)  NOT NULL  ,
  THE_STATUS CHAR(1)  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(LOOKUP_ID)  ,
INDEX MYALUMNI_SYSTEM_LOOKUP_TBL_index4286(LOOKUP_ID)  ,
UNIQUE INDEX MYALUMNI_SYSTEM_LOOKUP_TBL_index4302(LOOKUP_ID),
  FOREIGN KEY(XLATGROUP_ID)
    REFERENCES MYALUMNI_SYSTEM_GROUP_TBL(XLATGROUP_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE MYALUMNI_MESSAGE_FOLDER_TBL (
  MESSAGE_FOLDER_ID VARCHAR(40)  NOT NULL  ,
  MEMBER_ID VARCHAR(40)  NOT NULL  ,
  FOLDER_NAME VARCHAR(30)  NOT NULL  ,
  FOLDER_ORDER INTEGER  NOT NULL  ,
  FOLDER_CREATION_DATE TIMESTAMP  NOT NULL  ,
  FOLDER_MODIFICATION_DATE TIMESTAMP  NOT NULL  ,
  LASTMODIFICATION CHAR(1)  NOT NULL  ,
  LASTMODIFIED_BY VARCHAR(40)  NOT NULL  ,
  LASTMODIFIED_DATE TIMESTAMP  NOT NULL    ,
PRIMARY KEY(MESSAGE_FOLDER_ID)  ,
UNIQUE INDEX MYALUMNI_MESSAGE_FOLDER_TBL_index4291(FOLDER_NAME, MEMBER_ID),
  FOREIGN KEY(MEMBER_ID)
    REFERENCES MYALUMNI_MEMBERS_TBL(MEMBER_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE MYALUMNI_MEMBER_INSTANT_MESSENGER_TBL (
  MEMBER_IM_ID VARCHAR(45)  NOT NULL  ,
  LOOKUP_ID VARCHAR(40)  NOT NULL  ,
  MEMBER_ID VARCHAR(40)  NOT NULL    ,
PRIMARY KEY(MEMBER_IM_ID),
  FOREIGN KEY(MEMBER_ID)
    REFERENCES MYALUMNI_MEMBERS_TBL(MEMBER_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(LOOKUP_ID)
    REFERENCES MYALUMNI_SYSTEM_LOOKUP_TBL(LOOKUP_ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




