--------------------------------------------------------
  CREATE TABLE "DBADMIN"."DDL_AUDIT_LOG" 
   (	"TIMESTAMP" TIMESTAMP (6), 
	"USERNAME" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"MACHINE" VARCHAR2(30 BYTE), 
	"TERMINAL" VARCHAR2(30 BYTE), 
	"OPERATION" VARCHAR2(30 BYTE), 
	"OBJTYPE" VARCHAR2(30 BYTE), 
	"OBJNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DICT_SCHEMA_STATS
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."DICT_SCHEMA_STATS" 
   (	"STATID" VARCHAR2(30 BYTE), 
	"TYPE" CHAR(1 BYTE), 
	"VERSION" NUMBER, 
	"FLAGS" NUMBER, 
	"C1" VARCHAR2(30 BYTE), 
	"C2" VARCHAR2(30 BYTE), 
	"C3" VARCHAR2(30 BYTE), 
	"C4" VARCHAR2(30 BYTE), 
	"C5" VARCHAR2(30 BYTE), 
	"N1" NUMBER, 
	"N2" NUMBER, 
	"N3" NUMBER, 
	"N4" NUMBER, 
	"N5" NUMBER, 
	"N6" NUMBER, 
	"N7" NUMBER, 
	"N8" NUMBER, 
	"N9" NUMBER, 
	"N10" NUMBER, 
	"N11" NUMBER, 
	"N12" NUMBER, 
	"D1" DATE, 
	"R1" RAW(32), 
	"R2" RAW(32), 
	"CH1" VARCHAR2(1000 BYTE), 
	"CL1" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CL1") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table ERROR_LOG
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."ERROR_LOG" 
   (	"ERROR" VARCHAR2(30 BYTE), 
	"TIMESTAMP" DATE, 
	"USERNAME" VARCHAR2(30 BYTE), 
	"OSUSER" VARCHAR2(30 BYTE), 
	"MACHINE" VARCHAR2(64 BYTE), 
	"PROCESS" VARCHAR2(8 BYTE), 
	"PROGRAM" VARCHAR2(48 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INST
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."INST" 
   (	"IID" NUMBER, 
	"NET_SERVICE" VARCHAR2(30 BYTE), 
	"HOST" VARCHAR2(35 BYTE), 
	"LIFECYCLE_STAGE" VARCHAR2(35 BYTE), 
	"IPADDR" VARCHAR2(120 BYTE), 
	"VERSION" VARCHAR2(10 BYTE), 
	"EDITION" VARCHAR2(20 BYTE), 
	"DB_BLOCK_SIZE" NUMBER, 
	"CORES" NUMBER, 
	"CPU" NUMBER, 
	"SOCKETS" NUMBER, 
	"STATUS" VARCHAR2(15 BYTE), 
	"DBID" NUMBER, 
	"SID" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INST_PARAMETERS
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."INST_PARAMETERS" 
   (	"IID" NUMBER, 
	"PARAMETER" VARCHAR2(50 BYTE), 
	"VALUE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OBSOLETE
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."OBSOLETE" 
   (	"OBJECT_NAME" VARCHAR2(30 BYTE), 
	"NUM_ROWS" NUMBER, 
	"REFERENCED_BY" VARCHAR2(30 BYTE), 
	"LAST_KNOWN_USE" DATE, 
	"BYTES" NUMBER, 
	"TABLESPACE" VARCHAR2(30 BYTE), 
	"DEPENDENCIES" VARCHAR2(30 BYTE), 
	"CREATED" DATE, 
	"PARTITIONED" VARCHAR2(1 BYTE), 
	"DUPLICATE_OF" VARCHAR2(30 BYTE), 
	"OBJECT_TYPE" VARCHAR2(30 BYTE), 
	"STATUS" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "DBADMIN"."OBSOLETE"  IS 'Candidates for deletion.';
--------------------------------------------------------
--  DDL for Table TOAD_ASM_DISKGROUP_HIST
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" 
   (	"GROUP_NUMBER" NUMBER, 
	"NAME" VARCHAR2(30 CHAR), 
	"MON_DATE" DATE, 
	"TOTAL_MB" NUMBER, 
	"FREE_MB" NUMBER, 
	"HOT_USED_MB" NUMBER, 
	"COLD_USED_MB" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_ASM_DISK_HIST
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_ASM_DISK_HIST" 
   (	"GROUP_NUMBER" NUMBER, 
	"GROUP_NAME" VARCHAR2(30 CHAR), 
	"DISK_NUMBER" NUMBER, 
	"NAME" VARCHAR2(30 CHAR), 
	"PATH" VARCHAR2(256 CHAR), 
	"MON_DATE" DATE, 
	"OS_MB" NUMBER, 
	"TOTAL_MB" NUMBER, 
	"FREE_MB" NUMBER, 
	"HOT_USED_MB" NUMBER, 
	"COLD_USED_MB" NUMBER, 
	"READS" NUMBER, 
	"WRITES" NUMBER, 
	"READ_ERRS" NUMBER, 
	"WRITE_ERRS" NUMBER, 
	"READ_TIME" NUMBER, 
	"WRITE_TIME" NUMBER, 
	"BYTES_READ" NUMBER, 
	"BYTES_WRITTEN" NUMBER, 
	"HOT_READS" NUMBER, 
	"HOT_WRITES" NUMBER, 
	"HOT_BYTES_READ" NUMBER, 
	"HOT_BYTES_WRITTEN" NUMBER, 
	"COLD_READS" NUMBER, 
	"COLD_WRITES" NUMBER, 
	"COLD_BYTES_READ" NUMBER, 
	"COLD_BYTES_WRITTEN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_ASM_DISK_HIST" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_ASM_DISK_HIST" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_ASM_DISK_HIST" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_ASM_DISK_HIST" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_ASM_REF
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_ASM_REF" 
   (	"NAME" VARCHAR2(30 CHAR), 
	"VALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_ASM_REF" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_ASM_REF" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_ASM_REF" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_ASM_REF" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_DATA_FILES
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_DATA_FILES" 
   (	"FILE_ID" NUMBER, 
	"MON_DATE" DATE, 
	"TABLESPACE_NAME" VARCHAR2(30 BYTE), 
	"FILE_NAME" VARCHAR2(257 BYTE), 
	"BYTES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 5 PCTUSED 94 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_DATA_FILES" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_DATA_FILES" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_DATA_FILES" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_DATA_FILES" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_FILESTAT
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_FILESTAT" 
   (	"FILE_ID" NUMBER, 
	"MON_DATE" DATE, 
	"PHYRDS" CHAR(18 BYTE), 
	"PHYWRTS" CHAR(18 BYTE), 
	"PHYBLKRD" CHAR(18 BYTE), 
	"PHYBLKWRT" CHAR(18 BYTE), 
	"READTIM" CHAR(18 BYTE), 
	"WRITETIM" CHAR(18 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 5 PCTUSED 94 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_FILESTAT" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_FILESTAT" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_FILESTAT" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_FILESTAT" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_FREE_SPACE
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_FREE_SPACE" 
   (	"FILE_ID" NUMBER, 
	"MON_DATE" DATE, 
	"BYTES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 5 PCTUSED 94 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_FREE_SPACE" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_FREE_SPACE" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_FREE_SPACE" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_FREE_SPACE" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_REF
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_REF" 
   (	"NAME" VARCHAR2(30 BYTE), 
	"VALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_REF" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_REF" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_REF" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_REF" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TOAD_TABLESPACES
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TOAD_TABLESPACES" 
   (	"TABLESPACE_NAME" VARCHAR2(30 BYTE), 
	"MON_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 5 PCTUSED 94 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  GRANT UPDATE ON "DBADMIN"."TOAD_TABLESPACES" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_TABLESPACES" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_TABLESPACES" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_TABLESPACES" TO PUBLIC;
--------------------------------------------------------
--  DDL for Table TREND_TBL_MOD
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TREND_TBL_MOD" 
   (	"SERVER" VARCHAR2(30 BYTE), 
	"SCHEMA" VARCHAR2(30 BYTE), 
	"TABLE_NAME" VARCHAR2(30 BYTE), 
	"LAST_ANALYZED" DATE, 
	"SAMPLE_TAKEN" DATE, 
	"INSERTS" NUMBER, 
	"UPDATES" NUMBER, 
	"DELETES" NUMBER, 
	"NUM_ROWS" NUMBER, 
	"CHANGES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TREND_TBL_MOD_HIST
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."TREND_TBL_MOD_HIST" 
   (	"SERVER" VARCHAR2(30 BYTE), 
	"SCHEMA" VARCHAR2(30 BYTE), 
	"TABLE_NAME" VARCHAR2(30 BYTE), 
	"LAST_ANALYZED" DATE, 
	"SAMPLE_TAKEN" DATE, 
	"INSERTS" NUMBER, 
	"UPDATES" NUMBER, 
	"DELETES" NUMBER, 
	"NUM_ROWS" NUMBER, 
	"CHANGES" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_LOG
--------------------------------------------------------

  CREATE TABLE "DBADMIN"."USER_LOG" 
   (	"USER_IP" VARCHAR2(30 BYTE), 
	"MACHINE" VARCHAR2(100 BYTE), 
	"TERMINAL" VARCHAR2(30 BYTE), 
	"PORT" NUMBER(10,0), 
	"OSUSER" VARCHAR2(25 BYTE), 
	"USERNAME" VARCHAR2(25 BYTE), 
	"SESSION_ID" NUMBER(10,0), 
	"SID" NUMBER(10,0), 
	"LAST_PROGRAM" VARCHAR2(48 BYTE), 
	"LAST_ACTION" VARCHAR2(35 BYTE), 
	"LAST_MODULE" VARCHAR2(100 BYTE), 
	"LOGON_DATE" DATE, 
	"LOGON_TIME" VARCHAR2(10 BYTE), 
	"LOGOFF_DATE" DATE, 
	"LOGOFF_TIME" VARCHAR2(10 BYTE), 
	"ELAPSED_MINS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AUDITING" ;
--------------------------------------------------------
--  DDL for View TOAD_SPACE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBADMIN"."TOAD_SPACE" ("TABLESPACE", "FREE_MEGS", "USED_MEGS", "ALLOC_MEGS", "PCT_FREE", "PCT_USED") AS 
  SELECT tdf.tablespace_name,
       ROUND(SUM(NVL(tfs.bytes,0))/1048576),
       ROUND((SUM(tdf.bytes)-SUM(NVL(tfs.bytes,0)))/1048576),
       SUM(tdf.BYTES)/1048576,
       ROUND(SUM(NVL(tfs.bytes,0))/SUM(tdf.bytes),2),
       1-ROUND(SUM(NVL(tfs.bytes,0))/SUM(tdf.bytes),2)
FROM   toad_data_files tdf, toad_free_space tfs
WHERE  tdf.file_id  = tfs.file_id (+)
AND    tdf.mon_date = tfs.mon_date (+)
AND    tdf.mon_date <= SYSDATE
GROUP BY tdf.tablespace_name
;
  GRANT UPDATE ON "DBADMIN"."TOAD_SPACE" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_SPACE" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_SPACE" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_SPACE" TO PUBLIC;
--------------------------------------------------------
--  DDL for View TOAD_SPACE_HIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBADMIN"."TOAD_SPACE_HIST" ("FILE_ID", "TABLESPACE", "MDATE", "USEDSPACE") AS 
  SELECT a.file_id, a.tsp, a.mdate, GREATEST(ROUND(SUM(a.space)/1048576), 0)
FROM (SELECT   tdf.file_id file_id,
               tdf.tablespace_name tsp,
               tdf.mon_date mdate,
               SUM(tdf.bytes) - SUM(NVL(tfs.bytes,0)) space
      FROM     toad_data_files tdf, toad_free_space tfs
      WHERE    tdf.file_id  = tfs.file_id (+)
      AND      tdf.mon_date = tfs.mon_date (+)
      GROUP BY tdf.file_id,
               tdf.tablespace_name,
               tdf.mon_date ) a
GROUP BY file_id, tsp, mdate
;
  GRANT UPDATE ON "DBADMIN"."TOAD_SPACE_HIST" TO PUBLIC;
  GRANT SELECT ON "DBADMIN"."TOAD_SPACE_HIST" TO PUBLIC;
  GRANT INSERT ON "DBADMIN"."TOAD_SPACE_HIST" TO PUBLIC;
  GRANT DELETE ON "DBADMIN"."TOAD_SPACE_HIST" TO PUBLIC;
--------------------------------------------------------
--  DDL for Index DICT_SCHEMA_STATS
--------------------------------------------------------

  CREATE INDEX "DBADMIN"."DICT_SCHEMA_STATS" ON "DBADMIN"."DICT_SCHEMA_STATS" ("STATID", "TYPE", "C5", "C1", "C2", "C3", "C4", "VERSION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IP_UK01
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."IP_UK01" ON "DBADMIN"."INST_PARAMETERS" ("IID", "PARAMETER", "VALUE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_IL0001172360C00026$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."SYS_IL0001172360C00026$$" ON "DBADMIN"."DICT_SCHEMA_STATS" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index TOAD_ASM_DISKGROUP_HIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_ASM_DISKGROUP_HIST_PK" ON "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" ("GROUP_NUMBER", "MON_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_ASM_DISK_HIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_ASM_DISK_HIST_PK" ON "DBADMIN"."TOAD_ASM_DISK_HIST" ("GROUP_NUMBER", "DISK_NUMBER", "MON_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_DATA_FILES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_DATA_FILES_PK" ON "DBADMIN"."TOAD_DATA_FILES" ("FILE_ID", "MON_DATE") 
  PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_DATA_FILES_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_DATA_FILES_UK" ON "DBADMIN"."TOAD_DATA_FILES" ("TABLESPACE_NAME", "FILE_NAME", "MON_DATE") 
  PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_FILESTAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_FILESTAT_PK" ON "DBADMIN"."TOAD_FILESTAT" ("FILE_ID", "MON_DATE") 
  PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_FREE_SPACE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_FREE_SPACE_PK" ON "DBADMIN"."TOAD_FREE_SPACE" ("FILE_ID", "MON_DATE") 
  PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TOAD_TABLESPACES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TOAD_TABLESPACES_PK" ON "DBADMIN"."TOAD_TABLESPACES" ("TABLESPACE_NAME", "MON_DATE") 
  PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TREND_TBL_MOD_HIST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBADMIN"."TREND_TBL_MOD_HIST_PK" ON "DBADMIN"."TREND_TBL_MOD_HIST" ("SERVER", "SCHEMA", "TABLE_NAME", "SAMPLE_TAKEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger AUDIT_DDL_CHANGES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBADMIN"."AUDIT_DDL_CHANGES" 
   after create OR drop OR alter or truncate
      on limsuser.schema
BEGIN
  INSERT INTO dbadmin.ddl_audit_log VALUES
        (SYSDATE,
         SYS_CONTEXT('USERENV', 'SESSION_USER'),
         SYS_CONTEXT('USERENV', 'OS_USER'),
         SYS_CONTEXT('USERENV', 'HOST'),
         SYS_CONTEXT('USERENV', 'TERMINAL'),
         ORA_SYSEVENT,
         ORA_DICT_OBJ_TYPE,
         ORA_DICT_OBJ_NAME
        );
END;
/
ALTER TRIGGER "DBADMIN"."AUDIT_DDL_CHANGES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_LOGOFF_TG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBADMIN"."USER_LOGOFF_TG" 
		before logoff on database
		begin
		-- Update the user port
		  update dbadmin.user_log
			 set port =
                 (select  port
                    from  v$session
				   where  sys_context('userenv','sessionid') = audsid
				     and  sys_context('userenv','sid') = sid
				 )
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		 -- Update the last action accessed
		  update dbadmin.user_log
			 set last_action =
			     (select  action
				    from  v$session
				   where  sys_context('userenv','sessionid') = audsid
				     and  sys_context('userenv','sid') = sid
				 )
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		-- Update the last program accessed
		  update dbadmin.user_log
			 set last_program =
			     (select program
				   from v$session
				  where sys_context('userenv','sessionid') = audsid
				     and  sys_context('userenv','sid') = sid
				 )
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		-- Update the last module accessed
		  update dbadmin.user_log
			 set last_module =
			     (select module
				    from v$session
				   where sys_context('userenv','sessionid') = audsid
				     and  sys_context('userenv','sid') = sid
				 )
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		-- Update the logoff date
		  update dbadmin.user_log
			 set logoff_date = sysdate
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		-- Update the logoff time
		  update dbadmin.user_log
			 set logoff_time = to_char(sysdate, 'hh24:mi:ss')
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
		-- Compute the elapsed minutes
		  update dbadmin.user_log
			 set elapsed_mins =
                 round((logoff_date - logon_date)*1440)
           where sys_context('userenv','sessionid') = session_id
		     and sys_context('userenv','sid') = sid;
END;
/
ALTER TRIGGER "DBADMIN"."USER_LOGOFF_TG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_LOGON_TG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DBADMIN"."USER_LOGON_TG" 
		after logon on database
		begin
		  insert into dbadmin.user_log values (
			sys_context('userenv','ip_address')
			,sys_context('userenv','host')
			,sys_context('userenv','terminal')
			,null
			,sys_context('userenv','os_user')
			,user
			,sys_context('userenv','sessionid')
			,sys_context('userenv','sid')
			,null
			,null
			,null
			,sysdate
			,to_char(sysdate,'hh24:mi:ss')
			,null
			,null
			,null
			);
		end;
/
ALTER TRIGGER "DBADMIN"."USER_LOGON_TG" ENABLE;

--------------------------------------------------------
--  DDL for Package TOAD_ASM_SPACEMAN
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBADMIN"."TOAD_ASM_SPACEMAN" IS
  PROCEDURE CAPTURE;
  PROCEDURE RESET;
END;

/

  GRANT EXECUTE ON "DBADMIN"."TOAD_ASM_SPACEMAN" TO PUBLIC;
--------------------------------------------------------
--  DDL for Package TOAD_SPACEMAN
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "DBADMIN"."TOAD_SPACEMAN" IS
  PROCEDURE CAPTURE;
  PROCEDURE RESET;
END;

/

  GRANT EXECUTE ON "DBADMIN"."TOAD_SPACEMAN" TO PUBLIC;
--------------------------------------------------------
--  DDL for Package Body TOAD_ASM_SPACEMAN
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBADMIN"."TOAD_ASM_SPACEMAN" IS

  Procedure Reset is
  Begin
    /* DELETE DATA FROM ALL TABLES */
    Delete from toad_asm_diskgroup_hist;
    Delete from toad_asm_disk_hist;

    /* LOAD REAL DATA FOR TODAY */
    TOAD_ASM_SPACEMAN.CAPTURE;

    /* LOAD DUMMY DATA FOR 60 DAYS */
    For I IN 1..60 Loop
      insert into toad_asm_diskgroup_hist
      select group_number, name, trunc(mon_date - I), total_mb,
             round(free_mb) + ((round(Total_mb) - Round(free_mb)) * (i+1)/100), hot_used_mb, cold_used_mb
      from   toad_asm_diskgroup_hist 
      where  mon_date = trunc(sysdate);
      
      insert into toad_asm_disk_hist
      select group_number, group_name, disk_number, name, path, trunc(mon_date - I), os_mb, 
             total_mb, round(free_mb) + ((round(Total_mb) - Round(free_mb)) * (i+1)/100), hot_used_mb, cold_used_mb, 
             reads, writes, read_errs, write_errs, read_time, write_time, 
             bytes_read, bytes_written, hot_reads, hot_writes, hot_bytes_read, 
             hot_bytes_written, cold_reads, cold_writes, cold_bytes_read, 
             cold_bytes_written
      from   toad_asm_disk_hist
      where  mon_date = trunc(sysdate);
    End loop;
    Commit;
  END Reset;

  PROCEDURE Capture AS
    V_MON_DATE      DATE;
    NumDaysToRemove NUMBER;
    
    CURSOR History_Cur IS
      SELECT Value
      FROM   TOAD_ASM_REF
      WHERE  Name = 'Space Manager History Limit';
  BEGIN
    /* SAVE TODAYS DATE */
    V_MON_DATE := TRUNC(SYSDATE);
    
    /* RETRIEVE THE NUMBER OF DAYS TO REMOVE */
    Open  History_Cur;
    Fetch History_Cur 
    Into  NumDaysToRemove;

    /* Delete data older than user specified days,
      Also delete earlier runs from today, if they exist */
    Delete from toad_asm_diskgroup_hist 
    where       (MON_DATE < V_MON_DATE - NumDaysToRemove) or
                (MON_DATE = V_MON_DATE);
    Delete from toad_asm_disk_hist 
    where       (MON_DATE < V_MON_DATE - NumDaysToRemove) or
                (MON_DATE = V_MON_DATE);
              
    /* Delete data for nonexistent disks and disk groups */
    delete from toad_asm_diskgroup_hist
    where  group_number in (select distinct group_number
                            from   sys.v_$asm_diskgroup
                            minus  select distinct group_number
                            from   toad_asm_diskgroup_hist);
    delete from toad_asm_disk_hist
    where  (group_number, disk_number) in (select distinct group_number, disk_number
                                           from   sys.v_$asm_disk
                                           minus  select distinct group_number, disk_number
                                           from   toad_asm_disk_hist);
    
    /* insert new disk data */
    insert into toad_asm_disk_hist
    select d.group_number, g.name, d.disk_number, d.name, d.path, v_mon_date, d.os_mb, 
           d.total_mb, d.free_mb, d.hot_used_mb, d.cold_used_mb, 
           d.reads, d.writes, d.read_errs, d.write_errs, d.read_time, d.write_time, 
           d.bytes_read, d.bytes_written, d.hot_reads, d.hot_writes, d.hot_bytes_read, 
           d.hot_bytes_written, d.cold_reads, 0 cold_writes, 0 cold_bytes_read, 
           0 cold_bytes_written
    from   v$asm_disk d, v$asm_diskgroup g
    where  d.group_number = g.group_number; 
    
 
    /* insert new disk group data */
    insert into toad_asm_diskgroup_hist
    select group_number, name, v_mon_date, total_mb, free_mb, hot_used_mb, cold_used_mb
    from  v$asm_diskgroup;
    COMMIT;
  END CAPTURE;

END TOAD_ASM_SPACEMAN;

/

  GRANT EXECUTE ON "DBADMIN"."TOAD_ASM_SPACEMAN" TO PUBLIC;
--------------------------------------------------------
--  DDL for Package Body TOAD_SPACEMAN
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "DBADMIN"."TOAD_SPACEMAN" IS
PROCEDURE RESET AS
BEGIN
  /* DELETE DATA FROM ALL TABLES */
  DELETE FROM TOAD_TABLESPACES;

  /* LOAD REAL DATA FOR TODAY */
  TOAD_SPACEMAN.CAPTURE;

  /* LOAD DUMMY DATA FOR 60 DAYS */
  FOR I IN 1..60 LOOP
    INSERT INTO TOAD_TABLESPACES
    SELECT TABLESPACE_NAME, TRUNC(MON_DATE-I)
    FROM TOAD_TABLESPACES WHERE MON_DATE = TRUNC(SYSDATE);

    INSERT INTO TOAD_DATA_FILES
    SELECT FILE_ID, TRUNC(MON_DATE-I), TABLESPACE_NAME, FILE_NAME, ROUND(BYTES*(1-I/100))
    FROM TOAD_DATA_FILES WHERE MON_DATE = TRUNC(SYSDATE);

    INSERT INTO TOAD_FREE_SPACE
    SELECT FILE_ID, TRUNC(MON_DATE-I), ROUND(BYTES*(1+I/100))
    FROM TOAD_FREE_SPACE WHERE MON_DATE = TRUNC(SYSDATE);

    INSERT INTO TOAD_FILESTAT
    SELECT FILE_ID, TRUNC(MON_DATE-I), PHYRDS, PHYWRTS,
    PHYBLKRD, PHYBLKWRT, READTIM, WRITETIM
    FROM TOAD_FILESTAT WHERE MON_DATE = TRUNC(SYSDATE);

  END LOOP;
  COMMIT;
END RESET;

PROCEDURE CAPTURE AS
  V_MON_DATE    DATE    := NULL;
  V_ROW_SIZE    INTEGER := 100000;
  NumDaysToRemove NUMBER;
  CURSOR History_Cur IS
    SELECT Value
      FROM TOAD_REF
     WHERE Name = 'Space Manager History Limit';
BEGIN
  /* SAVE TODAYS DATE */
  V_MON_DATE := TRUNC(SYSDATE);
  /* RETRIEVE THE NUMBER OF DAYS TO REMOVE */
  OPEN History_Cur;
  FETCH History_Cur INTO NumDaysToRemove;

  /* DELETE DATA OLDER THAN USER SPECIFIED DAYS */
  DELETE FROM TOAD_TABLESPACES WHERE MON_DATE < V_MON_DATE - NumDaysToRemove;
  /* DELETE PRE-EXISTING DATA FOR CURRENT DAY */
  DELETE FROM TOAD_TABLESPACES WHERE MON_DATE = V_MON_DATE;
  /* DELETE DATA FOR NONEXISTENT TABLESPACES */
  DELETE FROM TOAD_TABLESPACES X
  WHERE NOT EXISTS (SELECT 1 FROM DBA_TABLESPACES D
  WHERE X.TABLESPACE_NAME = D.TABLESPACE_NAME);
  --/* DELETE DATA FOR NONEXISTENT DATA FILES */
  --DELETE FROM TOAD_DATA_FILES X
  -- WHERE NOT EXISTS (SELECT 1 FROM DBA_DATA_FILES D
  --                    WHERE X.TABLESPACE_NAME = D.TABLESPACE_NAME
  --                      AND X.FILE_NAME       = D.FILE_NAME);
  /* INSERT NEW TABLESPACES FOUND */
  INSERT INTO TOAD_TABLESPACES
  SELECT TABLESPACE_NAME, V_MON_DATE
    FROM DBA_TABLESPACES;

  /* INSERT NEW DATA FILES FOUND */
  INSERT INTO TOAD_DATA_FILES
  SELECT FILE_ID, V_MON_DATE, TABLESPACE_NAME, FILE_NAME, BYTES
    FROM DBA_DATA_FILES;

  /* COLLECT CURRENT FREE SPACE DATA */
  INSERT INTO TOAD_FREE_SPACE
  SELECT FILE_ID, V_MON_DATE, SUM(BYTES)
    FROM DBA_FREE_SPACE
   GROUP BY FILE_ID, TRUNC(SYSDATE);

  /* COLLECT CURRENT IO RATE DATA */
  INSERT INTO TOAD_FILESTAT
  SELECT FILE#, V_MON_DATE, PHYRDS, PHYWRTS,
         PHYBLKRD, PHYBLKWRT, READTIM, WRITETIM
    FROM V$FILESTAT;
  COMMIT;

END CAPTURE;

END TOAD_SPACEMAN;

/

  GRANT EXECUTE ON "DBADMIN"."TOAD_SPACEMAN" TO PUBLIC;
--------------------------------------------------------
--  DDL for Synonymn AUD$
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "DBADMIN"."AUD$" FOR "SYS"."AUD$";
--------------------------------------------------------
--  DDL for Synonymn TTM
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "DBADMIN"."TTM" FOR "DBADMIN"."TREND_TBL_MOD";
--------------------------------------------------------
--  DDL for Synonymn TTMH
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "DBADMIN"."TTMH" FOR "DBADMIN"."TREND_TBL_MOD_HIST";

--------------------------------------------------------
--  Constraints for Table INST
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."INST" MODIFY ("DB_BLOCK_SIZE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("IID" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("NET_SERVICE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("HOST" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("LIFECYCLE_STAGE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("IPADDR" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST" MODIFY ("VERSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INST_PARAMETERS
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."INST_PARAMETERS" ADD CONSTRAINT "IP_UK01" UNIQUE ("IID", "PARAMETER", "VALUE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DBADMIN"."INST_PARAMETERS" MODIFY ("IID" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST_PARAMETERS" MODIFY ("PARAMETER" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."INST_PARAMETERS" MODIFY ("VALUE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TOAD_ASM_DISKGROUP_HIST
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_ASM_DISKGROUP_HIST" ADD CONSTRAINT "TOAD_ASM_DISKGROUP_HIST_PK" PRIMARY KEY ("GROUP_NUMBER", "MON_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOAD_ASM_DISK_HIST
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_ASM_DISK_HIST" ADD CONSTRAINT "TOAD_ASM_DISK_HIST_PK" PRIMARY KEY ("GROUP_NUMBER", "DISK_NUMBER", "MON_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOAD_DATA_FILES
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" MODIFY ("FILE_ID" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" MODIFY ("MON_DATE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" MODIFY ("TABLESPACE_NAME" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" MODIFY ("FILE_NAME" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" ADD CONSTRAINT "TOAD_DATA_FILES_PK" PRIMARY KEY ("FILE_ID", "MON_DATE")
  USING INDEX PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOAD_FILESTAT
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("FILE_ID" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("MON_DATE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("PHYRDS" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("PHYWRTS" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("PHYBLKRD" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("PHYBLKWRT" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("READTIM" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" MODIFY ("WRITETIM" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" ADD CONSTRAINT "TOAD_FILESTAT_PK" PRIMARY KEY ("FILE_ID", "MON_DATE")
  USING INDEX PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOAD_FREE_SPACE
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_FREE_SPACE" MODIFY ("FILE_ID" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FREE_SPACE" MODIFY ("MON_DATE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FREE_SPACE" MODIFY ("BYTES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_FREE_SPACE" ADD CONSTRAINT "TOAD_FREE_SPACE_PK" PRIMARY KEY ("FILE_ID", "MON_DATE")
  USING INDEX PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOAD_TABLESPACES
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_TABLESPACES" MODIFY ("TABLESPACE_NAME" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_TABLESPACES" MODIFY ("MON_DATE" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TOAD_TABLESPACES" ADD CONSTRAINT "TOAD_TABLESPACES_PK" PRIMARY KEY ("TABLESPACE_NAME", "MON_DATE")
  USING INDEX PCTFREE 5 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TREND_TBL_MOD
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("SERVER" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("SCHEMA" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("INSERTS" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("UPDATES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("DELETES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD" MODIFY ("CHANGES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TREND_TBL_MOD_HIST
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("SERVER" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("SCHEMA" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("TABLE_NAME" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("INSERTS" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("UPDATES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("DELETES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" MODIFY ("CHANGES" NOT NULL ENABLE);
  ALTER TABLE "DBADMIN"."TREND_TBL_MOD_HIST" ADD CONSTRAINT "TREND_TBL_MOD_HIST_PK" PRIMARY KEY ("SERVER", "SCHEMA", "TABLE_NAME", "SAMPLE_TAKEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOAD_DATA_FILES
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_DATA_FILES" ADD CONSTRAINT "TOAD_DATA_FILES_FK" FOREIGN KEY ("TABLESPACE_NAME", "MON_DATE")
	  REFERENCES "DBADMIN"."TOAD_TABLESPACES" ("TABLESPACE_NAME", "MON_DATE") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOAD_FILESTAT
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_FILESTAT" ADD CONSTRAINT "TOAD_FILESTAT_FK" FOREIGN KEY ("FILE_ID", "MON_DATE")
	  REFERENCES "DBADMIN"."TOAD_DATA_FILES" ("FILE_ID", "MON_DATE") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOAD_FREE_SPACE
--------------------------------------------------------

  ALTER TABLE "DBADMIN"."TOAD_FREE_SPACE" ADD CONSTRAINT "TOAD_FREE_SPACE_FK" FOREIGN KEY ("FILE_ID", "MON_DATE")
	  REFERENCES "DBADMIN"."TOAD_DATA_FILES" ("FILE_ID", "MON_DATE") ON DELETE CASCADE ENABLE;
