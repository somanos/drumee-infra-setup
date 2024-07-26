-- -------------------------------------------------------------
-- ! DO NOT EDIT !
-- Config file automatically generated by <infra-helper>
-- Date : <%= date %>
-- -------------------------------------------------------------

DROP TABLE IF EXISTS `configs`;
CREATE TABLE `configs` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(2048) DEFAULT NULL,
  `type` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

insert into configs values('db_host', "localhost", 'varchar');
insert into configs values('fs_host', "localhost", 'varchar');
insert into configs values('icon', "<%= default_ico %>/", 'varchar');
insert into configs values('page_length', "20", 'integer');
insert into configs values('mfs_root', "<%= data_dir %>/mfs/", 'varchar');

