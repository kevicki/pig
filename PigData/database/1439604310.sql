-- MySQL database dump
-- Created by MySQLReback. Power by Hintay.
--
-- 主机: 
-- 生成日期: 2015 年  08 月 15 日 10:05
-- MySQL版本: 5.5.24-CDB-3.0.0-log
-- PHP 版本: 5.4.40

--
-- 数据库: `pigcms`
--
-- -------------------------------------------------------


 /* 创建表结构 `tp_access` */
 DROP TABLE IF EXISTS `tp_access`;/* MySQLReback Separation */ CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_access_count` */
 DROP TABLE IF EXISTS `tp_access_count`;/* MySQLReback Separation */ CREATE TABLE `tp_access_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT 'alltoken',
  `module` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `update_time` int(10) unsigned NOT NULL,
  `create_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `controller` (`controller`) USING BTREE,
  KEY `action` (`action`) USING BTREE,
  KEY `count` (`count`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('1','aaaa','wap','zhaopim','filemd','1','1439276869','1439276869'),('2','alltoken','wap','zhaopim','filemd','1','1439276869','1439276869'),('3','twllsi1431226863','user','img','index','173','1439477502','1439292884'),('4','alltoken','user','img','index','3','1439304454','1439292884'),('5','twllsi1431226863','user','img','edit','132','1439476284','1439292890'),('6','alltoken','user','img','edit','3','1439304458','1439292890'),('7','twllsi1431226863','user','message','sendhistory','115','1439477528','1439292900'),('8','alltoken','user','message','sendhistory','1','1439292900','1439292900'),('9','twllsi1431226863','user','voiceresponse','index','7','1439371392','1439292904'),('10','alltoken','user','voiceresponse','index','1','1439292904','1439292904'),('11','twllsi1431226863','user','company','index','3','1439437586','1439292956'),('12','alltoken','user','company','index','1','1439292956','1439292956'),('13','twllsi1431226863','user','diymen','index','78','1439546927','1439292959'),('14','alltoken','user','diymen','index','30','1439304409','1439292959'),('15','twllsi1431226863','user','link','insert','29','1439370269','1439293001'),('16','alltoken','user','link','insert','25','1439305270','1439293001'),('17','twllsi1431226863','user','diymen','class_edit','24','1439477619','1439293011'),('18','alltoken','user','diymen','class_edit','13','1439304383','1439293011'),('19','twllsi1431226863','wap','store','select','8','1439293306','1439293072'),('20','alltoken','wap','store','select','8','1439293306','1439293072'),('21','twllsi1431226863','wap','store','cats','21','1439434174','1439293101'),('22','alltoken','wap','store','cats','14','1439305453','1439293101'),('23','twllsi1431226863','user','link','shop','5','1439298507','1439293164'),('24','alltoken','user','link','shop','5','1439298507','1439293164'),('25','twllsi1431226863','user','link','shopcats','2','1439293323','1439293173'),('26','alltoken','user','link','shopcats','2','1439293323','1439293173'),('27','twllsi1431226863','wap','store','products','11','1439434048','1439293219'),('28','alltoken','wap','store','products','7','1439305484','1439293219'),('29','twllsi1431226863','wap','store','my','3','1439297827','1439293271'),('30','alltoken','wap','store','my','3','1439297827','1439293272'),('31','twllsi1431226863','wap','store','product','1','1439293280','1439293280'),('32','alltoken','wap','store','product','1','1439293280','1439293280'),('33','twllsi1431226863','wap','store','addproducttocart','1','1439293283','1439293283'),('34','alltoken','wap','store','addproducttocart','1','1439293283','1439293283'),('35','twllsi1431226863','wap','store','cart','1','1439293283','1439293283'),('36','alltoken','wap','store','cart','1','1439293283','1439293283'),('37','twllsi1431226863','wap','store','ordercart','1','1439293288','1439293288'),('38','alltoken','wap','store','ordercart','1','1439293288','1439293288'),('39','twllsi1431226863','wap','alipay','pay','1','1439293298','1439293298'),('40','alltoken','wap','alipay','pay','1','1439293298','1439293298'),('41','twllsi1431226863','wap','alipay','go_pay','1','1439293300','1439293300'),('42','alltoken','wap','alipay','go_pay','1','1439293300','1439293300'),('43','twllsi1431226863','user','store','index','1','1439293445','1439293445'),('44','alltoken','user','store','index','1','1439293445','1439293445'),('45','twllsi1431226863','user','store','orders','2','1439293487','1439293480'),('46','alltoken','user','store','orders','2','1439293487','1439293480'),('47','twllsi1431226863','user','store','deleteorder','1','1439293485','1439293485'),('48','alltoken','user','store','deleteorder','1','1439293485','1439293485'),('49','twllsi1431226863','wap','photo','index','44','1439592131','1439293497'),('50','alltoken','wap','photo','index','17','1439298844','1439293497'),('51','twllsi1431226863','wap','photo','plist','68','1439592135','1439293501'),('52','alltoken','wap','photo','plist','46','1439298998','1439293501'),('53','twllsi1431226863','wap','forum','index','30','1439536988','1439293523'),('54','alltoken','wap','forum','index','15','1439305460','1439293523'),('55','twllsi1431226863','wap','forum','comment','9','1439474801','1439293534'),('56','alltoken','wap','forum','comment','5','1439295314','1439293534'),('57','twllsi1431226863','wap','forum','mymessage','1','1439293638','1439293638'),('58','alltoken','wap','forum','mymessage','1','1439293638','1439293638'),('59','twllsi1431226863','user','person_card','index','1','1439293669','1439293669'),('60','alltoken','user','person_card','index','1','1439293669','1439293669'),('61','twllsi1431226863','user','forum','index','1','1439293674','1439293674'),('62','alltoken','user','forum','index','1','1439293674','1439293674'),('63','twllsi1431226863','user','forum','config','3','1439293949','1439293676'),('64','alltoken','user','forum','config','3','1439293949','1439293676'),('65','twllsi1431226863','user','upyun','upload','39','1439474493','1439293682'),('66','alltoken','user','upyun','upload','18','1439297854','1439293682'),('67','twllsi1431226863','user','attachment','my','34','1439365095','1439293684');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('68','alltoken','user','attachment','my','6','1439297874','1439293684');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('69','twllsi1431226863','user','attachment','index','15','1439305124','1439293687'),('70','alltoken','user','attachment','index','15','1439305124','1439293687'),('71','twllsi1431226863','wap','forum','otheruser','7','1439433895','1439293764'),('72','alltoken','wap','forum','otheruser','6','1439295248','1439293764'),('73','twllsi1431226863','wap','fanssign','index','34','1439591385','1439293789'),('74','alltoken','wap','fanssign','index','14','1439305504','1439293789'),('75','twllsi1431226863','wap','fanssign','addsign','13','1439591390','1439293792'),('76','alltoken','wap','fanssign','addsign','5','1439305489','1439293792'),('77','twllsi1431226863','user','forum','set','2','1439293947','1439293847'),('78','alltoken','user','forum','set','2','1439293947','1439293847'),('79','twllsi1431226863','user','photo','index','7','1439298913','1439294023'),('80','alltoken','user','photo','index','7','1439298913','1439294023'),('81','twllsi1431226863','user','photo','add','3','1439294387','1439294030'),('82','alltoken','user','photo','add','3','1439294387','1439294030'),('83','twllsi1431226863','user','photo','edit','1','1439294412','1439294412'),('84','alltoken','user','photo','edit','1','1439294412','1439294412'),('85','twllsi1431226863','user','photo','config','1','1439294940','1439294940'),('86','alltoken','user','photo','config','1','1439294940','1439294940'),('87','twllsi1431226863','user','photo','list_add','40','1439297746','1439294963'),('88','alltoken','user','photo','list_add','40','1439297746','1439294963'),('89','twllsi1431226863','user','photo','list_edit','4','1439295283','1439295059'),('90','alltoken','user','photo','list_edit','4','1439295283','1439295059'),('91','twllsi1431226863','user','photo','list_del','14','1439297257','1439295251'),('92','alltoken','user','photo','list_del','14','1439297257','1439295251'),('93','twllsi1431226863','user','classify','index','6','1439305139','1439297778'),('94','alltoken','user','classify','index','6','1439305139','1439297778'),('95','twllsi1431226863','user','flash','index','12','1439304923','1439297823'),('96','alltoken','user','flash','index','12','1439304923','1439297823'),('97','twllsi1431226863','user','flash','add','1','1439297836','1439297836'),('98','alltoken','user','flash','add','1','1439297836','1439297836'),('99','twllsi1431226863','user','flash','insert','1','1439297958','1439297958'),('100','alltoken','user','flash','insert','1','1439297958','1439297958'),('101','twllsi1431226863','user','flash','edit','7','1439304912','1439297969'),('102','alltoken','user','flash','edit','7','1439304912','1439297969'),('103','twllsi1431226863','wap','share','sharedata','1','1439298015','1439298015'),('104','alltoken','wap','share','sharedata','1','1439298015','1439298015'),('105','twllsi1431226863','user','link','panorama','1','1439298055','1439298055'),('106','alltoken','user','link','panorama','1','1439298055','1439298055'),('107','twllsi1431226863','user','flash','upsave','4','1439304921','1439298321'),('108','alltoken','user','flash','upsave','4','1439304921','1439298321'),('109','twllsi1431226863','wap','index','index','33','1439441354','1439298602'),('110','alltoken','wap','index','index','8','1439305296','1439298602'),('111','twllsi1431226863','user','seniorscene','highlive','10','1439437670','1439299011'),('112','alltoken','user','seniorscene','highlive','5','1439305549','1439299011'),('113','twllsi1431226863','user','link','commondetail','4','1439305273','1439304278'),('114','alltoken','user','link','commondetail','4','1439305273','1439304278'),('115','twllsi1431226863','user','home','set','1','1439304597','1439304597'),('116','alltoken','user','home','set','1','1439304597','1439304597'),('117','twllsi1431226863','user','classify','add','4','1439305108','1439304943'),('118','alltoken','user','classify','add','4','1439305108','1439304943'),('119','twllsi1431226863','user','classify','insert','3','1439305137','1439304989'),('120','alltoken','user','classify','insert','3','1439305137','1439304989'),('121','twllsi1431226863','user','classify','edit','1','1439305005','1439305005'),('122','alltoken','user','classify','edit','1','1439305005','1439305005'),('123','twllsi1431226863','user','classify','upsave','1','1439305009','1439305009'),('124','alltoken','user','classify','upsave','1','1439305009','1439305009'),('125','twllsi1431226863','user','catemenu','index','8','1439305278','1439305151'),('126','alltoken','user','catemenu','index','8','1439305278','1439305151'),('127','twllsi1431226863','user','catemenu','edit','5','1439305267','1439305159'),('128','alltoken','user','catemenu','edit','5','1439305267','1439305159'),('129','twllsi1431226863','user','catemenu','upsave','5','1439305276','1439305167'),('130','alltoken','user','catemenu','upsave','5','1439305276','1439305167'),('131','twllsi1431226863','user','catemenu','del','1','1439305214','1439305214'),('132','alltoken','user','catemenu','del','1','1439305214','1439305214'),('133','twllsi1431226863','user','catemenu','add','1','1439305219','1439305219'),('134','alltoken','user','catemenu','add','1','1439305219','1439305219');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('135','twllsi1431226863','user','catemenu','insert','1','1439305260','1439305260');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('136','alltoken','user','catemenu','insert','1','1439305260','1439305260'),('137','alltoken','wap','photo','index','10','1439392079','1439335022'),('138','alltoken','wap','photo','plist','6','1439391992','1439335025'),('139','alltoken','wap','store','cats','3','1439381062','1439335082'),('140','alltoken','wap','store','products','1','1439335084','1439335084'),('141','alltoken','wap','forum','index','1','1439338778','1439338778'),('142','alltoken','user','seniorscene','highlive','4','1439381778','1439343265'),('143','alltoken','user','voiceresponse','index','6','1439371392','1439343332'),('144','twllsi1431226863','user','img','multi','22','1439476249','1439343333'),('145','alltoken','user','img','multi','19','1439372695','1439343333'),('146','alltoken','user','img','index','139','1439384637','1439343344'),('147','alltoken','user','img','edit','102','1439384615','1439343348'),('148','alltoken','user','message','sendhistory','93','1439384665','1439343388'),('149','twllsi1431226863','user','message','index','82','1439477526','1439343392'),('150','alltoken','user','message','index','65','1439384663','1439343392'),('151','twllsi1431226863','user','templatemsg','index','1','1439343395','1439343395'),('152','alltoken','user','templatemsg','index','1','1439343395','1439343395'),('153','alltoken','user','diymen','index','30','1439385047','1439343405'),('154','twllsi1431226863','user','text','add','3','1439352416','1439343451'),('155','alltoken','user','text','add','3','1439352416','1439343451'),('156','twllsi1431226863','user','img','add','20','1439473391','1439343497'),('157','alltoken','user','img','add','15','1439368044','1439343497'),('158','alltoken','user','upyun','upload','14','1439368188','1439343634'),('159','alltoken','user','attachment','my','28','1439365095','1439343641'),('160','twllsi1431226863','user','img','insert','4','1439473397','1439343994'),('161','alltoken','user','img','insert','3','1439368224','1439343994'),('162','twllsi1431226863','user','message','message_fans','71','1439369561','1439344018'),('163','alltoken','user','message','message_fans','71','1439369561','1439344018'),('164','twllsi1431226863','user','message','img','53','1439477517','1439344269'),('165','alltoken','user','message','img','44','1439384647','1439344269'),('166','twllsi1431226863','user','img','upsave','61','1439477499','1439344580'),('167','alltoken','user','img','upsave','50','1439384635','1439344580'),('168','twllsi1431226863','user','message','preview','114','1439477539','1439344590'),('169','alltoken','user','message','preview','90','1439384683','1439344590'),('170','twllsi1431226863','user','message','getopenid','42','1439477536','1439344599'),('171','alltoken','user','message','getopenid','34','1439384680','1439344599'),('172','twllsi1431226863','user','message','del','26','1439476092','1439344742'),('173','alltoken','user','message','del','20','1439384609','1439344742'),('174','twllsi1431226863','user','message','tosendall','8','1439380347','1439345083'),('175','alltoken','user','message','tosendall','8','1439380347','1439345083'),('176','twllsi1431226863','user','function','welcome','8','1439364509','1439349481'),('177','alltoken','user','function','welcome','8','1439364509','1439349481'),('178','twllsi1431226863','user','index','index','11','1439360013','1439349626'),('179','alltoken','user','index','index','11','1439360013','1439349626'),('180','alltoken','wap','index','index','11','1439391647','1439350478'),('181','alltoken','wap','fanssign','index','7','1439394197','1439350567'),('182','twllsi1431226863','user','text','index','2','1439437602','1439352410'),('183','alltoken','user','text','index','1','1439352410','1439352410'),('184','twllsi1431226863','user','sms','index','2','1439358737','1439358733'),('185','alltoken','user','sms','index','2','1439358737','1439358733'),('186','twllsi1431226863','user','wechat_group','index','1','1439361755','1439361755'),('187','alltoken','user','wechat_group','index','1','1439361755','1439361755'),('188','twllsi1431226863','user','wechat_group','showexternalpic','10','1439361759','1439361756'),('189','alltoken','user','wechat_group','showexternalpic','10','1439361759','1439361756'),('190','alltoken','user','link','insert','4','1439370269','1439367263'),('191','twllsi1431226863','user','img','multisave','1','1439369504','1439369504'),('192','alltoken','user','img','multisave','1','1439369504','1439369504'),('193','twllsi1431226863','user','link','img','2','1439370272','1439370221'),('194','alltoken','user','link','img','2','1439370272','1439370221'),('195','twllsi1431226863','user','diymen','class_add','2','1439370276','1439370227'),('196','alltoken','user','diymen','class_add','2','1439370276','1439370227'),('197','twllsi1431226863','wap','index','content','10','1439471503','1439370300'),('198','alltoken','wap','index','content','6','1439376161','1439370300'),('199','alltoken','user','diymen','class_edit','6','1439385021','1439370393'),('200','twllsi1431226863','user','img','diytool','5','1439477412','1439372242'),('201','alltoken','user','img','diytool','3','1439373004','1439372242');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('202','alltoken','wap','fanssign','addsign','3','1439394189','1439381077');/* MySQLReback Separation */
 /* 插入数据 `tp_access_count` */
 INSERT INTO `tp_access_count` VALUES ('203','twllsi1431226863','wap','index','lists','5','1439434157','1439381128'),('204','alltoken','wap','index','lists','2','1439381133','1439381128'),('205','alltoken','user','company','index','1','1439381248','1439381248'),('206','alltoken','wap','forum','index','11','1439477403','1439400210'),('207','alltoken','wap','forum','comment','4','1439474801','1439400261'),('208','alltoken','wap','index','index','14','1439441354','1439400421'),('209','alltoken','wap','photo','index','14','1439477145','1439400503'),('210','alltoken','wap','photo','plist','14','1439474899','1439400512'),('211','alltoken','wap','fanssign','index','11','1439478454','1439433594'),('212','alltoken','wap','store','cats','4','1439434174','1439433599'),('213','alltoken','wap','store','products','3','1439434048','1439433603'),('214','alltoken','wap','index','lists','3','1439434157','1439433626'),('215','alltoken','wap','fanssign','addsign','4','1439477124','1439433805'),('216','alltoken','wap','forum','otheruser','1','1439433895','1439433895'),('217','alltoken','user','img','index','31','1439477502','1439435759'),('218','alltoken','user','img','edit','27','1439476284','1439435762'),('219','alltoken','user','img','upsave','11','1439477499','1439437530'),('220','alltoken','user','company','index','1','1439437586','1439437586'),('221','alltoken','user','img','multi','3','1439476249','1439437601'),('222','alltoken','user','text','index','1','1439437602','1439437602'),('223','alltoken','user','seniorscene','highlive','1','1439437670','1439437670'),('224','twllsi1431226863','user','img','del','1','1439437787','1439437787'),('225','alltoken','user','img','del','1','1439437787','1439437787'),('226','alltoken','user','diymen','index','15','1439477653','1439446403'),('227','alltoken','user','diymen','class_edit','5','1439477619','1439446429'),('228','alltoken','wap','index','content','4','1439471503','1439471419'),('229','alltoken','user','img','add','5','1439473391','1439472709'),('230','alltoken','user','upyun','upload','7','1439474493','1439472760'),('231','alltoken','user','message','sendhistory','21','1439477528','1439473373'),('232','alltoken','user','message','index','17','1439477526','1439473375'),('233','alltoken','user','message','img','9','1439477517','1439473379'),('234','alltoken','user','img','insert','1','1439473397','1439473397'),('235','alltoken','user','message','preview','24','1439477539','1439473423'),('236','alltoken','user','message','getopenid','8','1439477536','1439473426'),('237','alltoken','user','message','del','6','1439476092','1439473795'),('238','alltoken','user','img','diytool','2','1439477412','1439477282'),('239','twllsi1431226863','wap','card','index','2','1439486068','1439486068'),('240','alltoken','wap','card','index','2','1439486068','1439486068'),('241','twllsi1431226863','wap','userinfo','index','2','1439486224','1439486078'),('242','alltoken','wap','userinfo','index','2','1439486224','1439486078'),('243','twllsi1431226863','wap','card','card','5','1439486213','1439486149'),('244','alltoken','wap','card','card','5','1439486213','1439486149'),('245','twllsi1431226863','wap','card','showcode','5','1439486213','1439486149'),('246','alltoken','wap','card','showcode','5','1439486213','1439486149'),('247','twllsi1431226863','wap','card','my_coupon','4','1439486210','1439486154'),('248','alltoken','wap','card','my_coupon','4','1439486210','1439486154'),('249','twllsi1431226863','wap','card','cardintro','2','1439486236','1439486165'),('250','alltoken','wap','card','cardintro','2','1439486236','1439486165'),('251','twllsi1431226863','wap','card','signscore','2','1439486182','1439486174'),('252','alltoken','wap','card','signscore','2','1439486182','1439486174'),('253','twllsi1431226863','wap','card','addsign','1','1439486180','1439486180'),('254','alltoken','wap','card','addsign','1','1439486180','1439486180'),('255','twllsi1431226863','wap','card','cards','1','1439486187','1439486187'),('256','alltoken','wap','card','cards','1','1439486187','1439486187'),('257','twllsi1431226863','wap','card','notice','1','1439486218','1439486218'),('258','alltoken','wap','card','notice','1','1439486218','1439486218'),('259','twllsi1431226863','wap','card','companydetail','1','1439486249','1439486249'),('260','alltoken','wap','card','companydetail','1','1439486249','1439486249'),('261','alltoken','wap','forum','index','3','1439536988','1439517503'),('262','alltoken','wap','fanssign','index','1','1439517528','1439517528'),('263','alltoken','wap','photo','index','1','1439535452','1439535452'),('264','alltoken','user','diymen','index','3','1439546927','1439546881'),('265','alltoken','wap','fanssign','index','1','1439591385','1439591385'),('266','alltoken','wap','fanssign','addsign','1','1439591390','1439591390'),('267','alltoken','wap','photo','index','2','1439592131','1439591401'),('268','alltoken','wap','photo','plist','2','1439592135','1439591408');/* MySQLReback Separation */
 /* 创建表结构 `tp_activity` */
 DROP TABLE IF EXISTS `tp_activity`;/* MySQLReback Separation */ CREATE TABLE `tp_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '活动开始图片',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '兑奖信息',
  `sttxt` varchar(200) NOT NULL COMMENT '活动主题',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '活动规则',
  `endtite` varchar(60) NOT NULL COMMENT '结束公告',
  `endpicurl` varchar(100) NOT NULL COMMENT '结束图片地址',
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖人数',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL COMMENT '二等奖奖品数量',
  `secondlucknums` int(1) NOT NULL COMMENT '三等奖中奖人数',
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL COMMENT '预计参与人数',
  `canrqnums` int(2) NOT NULL COMMENT '个人抽奖次数限制',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL COMMENT '四等奖奖品',
  `fournums` int(11) NOT NULL COMMENT '四等奖奖品数量',
  `fourlucknums` int(11) NOT NULL COMMENT '四等奖中奖人数',
  `five` varchar(50) NOT NULL COMMENT '五等奖奖品',
  `fivenums` int(11) NOT NULL COMMENT '5奖品数量',
  `fivelucknums` int(11) NOT NULL COMMENT '5中间人数',
  `six` varchar(50) NOT NULL COMMENT '六等奖奖品',
  `sixnums` int(11) NOT NULL COMMENT '6奖品数量',
  `sixlucknums` int(11) NOT NULL COMMENT '6中奖人数',
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `backmp3` varchar(100) NOT NULL COMMENT '背景音乐',
  `hpic` varchar(150) NOT NULL COMMENT '首页背景图片',
  `xpic` varchar(150) NOT NULL COMMENT '兑奖页面宣传图片',
  `mpic` varchar(150) NOT NULL COMMENT '我的盒子背景图片',
  `optime` int(11) NOT NULL COMMENT '需要分享的次数',
  `focus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_adma` */
 DROP TABLE IF EXISTS `tp_adma`;/* MySQLReback Separation */ CREATE TABLE `tp_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_agent` */
 DROP TABLE IF EXISTS `tp_agent`;/* MySQLReback Separation */ CREATE TABLE `tp_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `isnav` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_agent_expenserecords` */
 DROP TABLE IF EXISTS `tp_agent_expenserecords`;/* MySQLReback Separation */ CREATE TABLE `tp_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_agent_function` */
 DROP TABLE IF EXISTS `tp_agent_function`;/* MySQLReback Separation */ CREATE TABLE `tp_agent_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_agent_function` */
 INSERT INTO `tp_agent_function` VALUES ('1','1','0','天气查询','tianqi','天气查询服务:例  城市名+天气','1','1','1'),('2','1','0','糗事','qiushi','糗事　直接发送糗事','1','1','1'),('3','1','0','计算器','jishuan','计算器使用方法　例：计算50-50　，计算100*100','1','1','1'),('4','4','0','朗读','langdu','朗读＋关键词　例：朗读pigcms多用户营销系统','1','1','1'),('5','3','0','健康指数查询','jiankang','健康指数查询　健康＋高，＋重　例：健康170,65','1','1','1'),('6','1','0','快递查询','kuaidi','快递＋快递名＋快递号　例：快递顺丰117215889174','1','1','1'),('7','1','0','笑话','xiaohua','笑话　直接发送笑话','1','1','1'),('8','2','0','藏头诗','changtoushi',' 藏头诗+关键词　例：藏头诗我爱你','1','1','1'),('9','1','0','陪聊','peiliao','聊天　直接输入聊天关键词即可','1','1','1'),('10','1','0','聊天','liaotian','聊天　直接输入聊天关键词即可','1','1','1'),('11','3','0','周公解梦','mengjian','周公解梦　梦见+关键词　例如:梦见父母','1','1','1'),('12','2','0','语音翻译','yuyinfanyi','翻译＋关键词 例：翻译你好','1','1','1'),('13','2','0','火车查询','huoche','火车查询　火车＋城市＋目的地　例火车上海南京','1','1','1'),('14','2','0','公交查询','gongjiao','公交＋城市＋公交编号　例：上海公交774','1','1','1'),('15','2','0','身份证查询','shenfenzheng','身份证＋号码　　例：身份证342423198803015568','1','1','1'),('16','1','0','手机归属地查询','shouji','手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13856017160','1','1','1'),('17','3','0','音乐查询','yinle','音乐＋音乐名  例：音乐爱你一万年','1','1','1'),('18','1','0','附近周边信息查询','fujin','附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店','1','1','1'),('19','4','0','公众小秘书','Paper','公众小秘书','2','1','1'),('20','3','0','淘宝店铺','taobao','输入淘宝＋关键词　即可访问淘宝3g手机店铺','2','1','1'),('21','4','0','会员资料管理','userinfo','会员资料管理　输入会员　即可参与','2','1','1'),('22','1','0','翻译','fanyi','翻译＋关键词 例：翻译你好','1','1','1'),('23','4','0','第三方接口','api','第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，','1','1','1'),('24','1','0','姓名算命','suanming','姓名算命 算命＋关键词　例：算命李白','1','1','1'),('25','3','0','百度百科','baike','百度百科　使用方法：百科＋关键词　例：百科北京','2','1','1'),('26','2','0','彩票查询','caipiao','回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球','1','1','1'),('27','4','0','照片墙','Zhaopianwall','活动开启后，在聊天窗口中直接发送图片，即可图片上墙！','2','1','1'),('28','4','0','RippleOS','RippleOS','RippleOS路由器','1','1','1'),('29','1','0','3G首页','shouye','输入首页,访问微3g 网站','1','1','1'),('30','1','0','DIY宣传页','adma','DIY宣传页,用于创建二维码宣传页权限开启','1','1','1'),('31','4','0','会员卡','huiyuanka','尊贵享受vip会员卡,回复会员卡即可领取会员卡','1','1','1'),('32','4','0','微名片','Vcard','微名片','2','1','1'),('33','4','0','账号审核','usernameCheck','正确的审核帐号方式是：审核+帐号','2','1','1'),('34','1','0','歌词查询','geci','歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风','1','1','1'),('35','2','0','域名whois查询','whois','域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等
 例：域名pigcms.com','1','1','1'),('36','1','0','通用预订系统','host_kev','通用预订系统 可用于酒店预订，ktv订房，旅游预订等。','2','1','1'),('37','4','0','自定义表单','diyform','自定义表单(用于报名，预约,留言)等','1','1','1'),('38','2','0','无线网络订餐','dx','无线网络订餐','1','1','1'),('39','2','0','在线商城','shop','在线商城,购买系统','1','1','1'),('40','2','0','在线团购系统','etuan','在线团购系统','1','1','1'),('41','4','0','自定义菜单','diymen_set','自定义菜单,一键生成轻app','1','1','1'),('42','4','0','幸运大转盘','choujiang','输入抽奖　即可参加幸运大转盘抽奖活动','2','1','1'),('43','4','0','抽奖','lottery','抽奖,输入抽奖即可参加幸运大转盘','1','1','1'),('44','4','0','刮刮卡','gua2','刮刮卡抽奖活动','1','1','1'),('45','4','0','全景','panorama','','1','1','1'),('46','4','0','婚庆喜帖','Wedding','','2','1','1'),('47','4','0','投票','Vote','','2','1','1'),('48','4','0','房产','estate','','2','1','1'),('49','4','0','3G相册','album','','1','1','1'),('50','4','0','砸金蛋','GoldenEgg','','2','1','1'),('51','4','0','水果机','LuckyFruit','','2','1','1'),('52','4','0','留言板','messageboard','','2','1','1'),('53','4','0','微汽车','car','','2','1','1'),('54','4','0','微信墙','wall','','1','1','1');/* MySQLReback Separation */
 /* 插入数据 `tp_agent_function` */
 INSERT INTO `tp_agent_function` VALUES ('55','4','0','摇一摇','shake','','1','1','1');/* MySQLReback Separation */
 /* 插入数据 `tp_agent_function` */
 INSERT INTO `tp_agent_function` VALUES ('56','4','0','微论坛','forum','','1','1','1'),('57','4','0','微医疗','medical','','1','1','1'),('58','4','0','群发消息','groupmessage','','1','1','1'),('59','4','0','分享统计','share','','1','1','1'),('60','4','0','酒店宾馆','hotel','','1','1','1'),('61','4','0','微教育','school','','1','1','1'),('62','4','0','微场景','Live','','2','1','1'),('63','1','0','微街景','Jiejing','','1','1','1'),('64','1','0','中秋吃月饼','Autumn','','1','1','1'),('65','1','0','摁死小情侣游戏','Lovers','回复 “小情侣” 即可参加','1','1','1'),('66','1','0','七夕走鹊桥','AppleGame','回复 “走鹊桥” 即可参与','1','1','1'),('67','1','0','微调研','Research','','1','1','1'),('68','1','0','一战到底','Problem','','1','1','1'),('69','1','0','微信签到','Signin','','1','1','1'),('70','1','0','现场活动','Scene','','1','1','1'),('71','1','0','微商圈','Market','','1','1','1'),('72','1','0','微预约','Custom','','1','1','1'),('73','1','0','祝福贺卡','Greeting_card','','1','1','1'),('74','1','0','微美容','beauty','','1','1','1'),('75','1','0','微健身','fitness','','1','1','1'),('76','1','0','微政务','gover','','1','1','1'),('77','1','0','微食品','food','','1','1','1'),('78','1','0','微旅游','travel','','1','1','1'),('79','1','0','微花店','flower','','1','1','1'),('80','1','0','微物业','property','','1','1','1'),('81','1','0','微KTV','ktv','','1','1','1'),('82','1','0','微酒吧','bar','','1','1','1'),('83','1','0','微装修','fitment','','1','1','1'),('84','1','0','微婚庆','buswedd','','1','1','1'),('85','1','0','微宠物','affections','','1','1','1'),('86','1','0','微家政','housekeeper','','1','1','1'),('87','1','0','微租赁','lease','','1','1','1'),('88','1','0','微游戏','Gamecenter','','1','1','1'),('89','1','0','百度直达号','Zhida','','1','1','1'),('90','1','0','微信红包','Red_packet','','1','1','1'),('91','1','0','惩罚台','Punish','','1','1','1'),('92','1','0','邀请函','Invite','','1','1','1'),('93','1','0','拆礼盒','Autumns','','1','1','1'),('94','1','0','高级模板','AdvanceTpl','','1','1','1'),('95','1','0','群发消息','Message','','1','1','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_agent_price` */
 DROP TABLE IF EXISTS `tp_agent_price`;/* MySQLReback Separation */ CREATE TABLE `tp_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_alipay_config` */
 DROP TABLE IF EXISTS `tp_alipay_config`;/* MySQLReback Separation */ CREATE TABLE `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `mchid` varchar(100) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_alipay_config` */
 INSERT INTO `tp_alipay_config` VALUES ('twllsi1431226863','','','','','','694627f59907f99b256abdd901938fc3','','','','1240192202','1','a:10:{s:7:\"is_open\";s:1:\"1\";s:6:\"weixin\";a:10:{s:4:\"open\";s:1:\"1\";s:6:\"is_old\";s:1:\"0\";s:9:\"new_appid\";s:18:\"wx95a2ccf2f2fa0ebd\";s:5:\"mchid\";s:10:\"1240192202\";s:3:\"key\";s:32:\"Bolanshudian12345678Bolanbook123\";s:9:\"appsecret\";s:32:\"694627f59907f99b256abdd901938fc3\";s:5:\"appid\";s:0:\"\";s:10:\"paysignkey\";s:0:\"\";s:9:\"partnerid\";s:0:\"\";s:10:\"partnerkey\";s:0:\"\";}s:6:\"alipay\";a:4:{s:4:\"open\";s:1:\"0\";s:4:\"name\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:6:\"tenpay\";a:3:{s:4:\"open\";s:1:\"0\";s:9:\"partnerid\";s:0:\"\";s:10:\"partnerkey\";s:0:\"\";}s:8:\"allinpay\";a:3:{s:4:\"open\";s:1:\"0\";s:10:\"merchantId\";s:0:\"\";s:11:\"merchantKey\";s:0:\"\";}s:6:\"yeepay\";a:6:{s:4:\"open\";s:1:\"0\";s:15:\"merchantaccount\";s:0:\"\";s:18:\"merchantPrivateKey\";s:0:\"\";s:17:\"merchantPublicKey\";s:0:\"\";s:15:\"yeepayPublicKey\";s:0:\"\";s:15:\"product_catalog\";s:0:\"\";}s:7:\"CardPay\";a:1:{s:4:\"open\";s:1:\"0\";}s:5:\"daofu\";a:1:{s:4:\"open\";s:1:\"0\";}s:6:\"dianfu\";a:1:{s:4:\"open\";s:1:\"1\";}s:6:\"button\";s:0:\"\";}');/* MySQLReback Separation */
 /* 创建表结构 `tp_api` */
 DROP TABLE IF EXISTS `tp_api`;/* MySQLReback Separation */ CREATE TABLE `tp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_areply` */
 DROP TABLE IF EXISTS `tp_areply`;/* MySQLReback Separation */ CREATE TABLE `tp_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_areply` */
 INSERT INTO `tp_areply` VALUES ('2','','欢迎关注博览书店，很高兴为您服务/微笑','2','','1432162647','','twllsi1431226863','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_article` */
 DROP TABLE IF EXISTS `tp_article`;/* MySQLReback Separation */ CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` char(255) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `imgs` char(40) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_attribute` */
 DROP TABLE IF EXISTS `tp_attribute`;/* MySQLReback Separation */ CREATE TABLE `tp_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_autumns_box` */
 DROP TABLE IF EXISTS `tp_autumns_box`;/* MySQLReback Separation */ CREATE TABLE `tp_autumns_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '活动ID',
  `invite` int(11) NOT NULL,
  `boxdate` int(11) NOT NULL COMMENT '领取盒子的时间',
  `box` int(11) NOT NULL COMMENT '盒子样式',
  `wecha_id` varchar(60) NOT NULL,
  `prize` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `isprize` int(11) NOT NULL COMMENT '是否中奖',
  `isprizes` int(11) NOT NULL COMMENT '是否领奖',
  `prizedate` varchar(20) NOT NULL COMMENT '兑奖起始时间',
  `prizedates` varchar(20) NOT NULL COMMENT '兑奖结束时间',
  `lvprize` varchar(30) NOT NULL,
  `sn` varchar(13) NOT NULL,
  `sntime` int(11) NOT NULL COMMENT '奖品发放时间',
  `sendstutas` int(11) NOT NULL DEFAULT '0' COMMENT '是否发奖',
  `prtime` int(11) NOT NULL COMMENT '领奖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_autumns_ip` */
 DROP TABLE IF EXISTS `tp_autumns_ip`;/* MySQLReback Separation */ CREATE TABLE `tp_autumns_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_autumns_open` */
 DROP TABLE IF EXISTS `tp_autumns_open`;/* MySQLReback Separation */ CREATE TABLE `tp_autumns_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `time` int(11) NOT NULL COMMENT '分享次数',
  `isopen` int(11) NOT NULL COMMENT '是否打开',
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_banners` */
 DROP TABLE IF EXISTS `tp_banners`;/* MySQLReback Separation */ CREATE TABLE `tp_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` char(200) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_bargain` */
 DROP TABLE IF EXISTS `tp_bargain`;/* MySQLReback Separation */ CREATE TABLE `tp_bargain` (
  `pigcms_id` int(100) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `wxtitle` varchar(100) NOT NULL COMMENT '图文回复标题',
  `wxpic` varchar(100) NOT NULL COMMENT '图文回复图片',
  `wxinfo` varchar(200) DEFAULT NULL COMMENT '图文回复简单描述',
  `logoimg1` varchar(100) NOT NULL COMMENT '商品图片1',
  `logourl1` varchar(200) NOT NULL COMMENT '商品图片链接1',
  `logoimg2` varchar(100) DEFAULT NULL COMMENT '商品图片2',
  `logourl2` varchar(200) DEFAULT NULL COMMENT '商品图片链接2',
  `logoimg3` varchar(100) DEFAULT NULL COMMENT '商品图片3',
  `logourl3` varchar(200) DEFAULT NULL COMMENT '商品图片链接3',
  `info` mediumtext COMMENT '商品描述',
  `guize` mediumtext,
  `original` int(20) NOT NULL COMMENT '原价',
  `minimum` int(20) NOT NULL COMMENT '底价',
  `starttime` int(20) NOT NULL COMMENT '开始时间',
  `inventory` int(20) NOT NULL COMMENT '库存',
  `qdao` int(11) DEFAULT NULL COMMENT '前n刀',
  `qprice` int(20) DEFAULT NULL COMMENT '前n刀砍去多少钱',
  `dao` int(11) NOT NULL COMMENT '总共需要n刀',
  `pv` int(11) NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '开始-关闭',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `state` (`state`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_bargain_kanuser` */
 DROP TABLE IF EXISTS `tp_bargain_kanuser`;/* MySQLReback Separation */ CREATE TABLE `tp_bargain_kanuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `bargain_id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `friend` varchar(100) NOT NULL,
  `dao` int(20) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE,
  KEY `orderid` (`orderid`) USING BTREE,
  KEY `friend` (`friend`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_bargain_order` */
 DROP TABLE IF EXISTS `tp_bargain_order`;/* MySQLReback Separation */ CREATE TABLE `tp_bargain_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `bargain_id` int(11) NOT NULL,
  `bargain_name` varchar(100) DEFAULT NULL,
  `bargain_logoimg` varchar(100) DEFAULT NULL,
  `bargain_original` int(20) DEFAULT NULL,
  `bargain_minimum` int(20) DEFAULT NULL,
  `bargain_nowprice` int(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `endtime` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `orderid` varchar(255) NOT NULL,
  `state2` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`),
  KEY `token` (`token`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `bargain_id` (`bargain_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_behavior` */
 DROP TABLE IF EXISTS `tp_behavior`;/* MySQLReback Separation */ CREATE TABLE `tp_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('1','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431227163','Member_card_set','1','会员','0'),('2','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431227893','chat','6','用户关注','0'),('3','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431229144','home','2','首页','1'),('4','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431269834','chat','1','贺卡','0'),('5','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431269907','chat','1','来看','0'),('6','7','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431270125','Product','5','用户关注','0'),('7','3','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431271768','Member_card_set','1','会员','0'),('8','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-10','1431271772','chat','1','个人中心','0'),('9','7','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-11','1431358293','Product','2','用户关注','0'),('10','7','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431384692','Product','1','用户关注','0'),('11','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431384885','chat','1','走鹊桥','0'),('12','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431384918','chat','1','七夕','0'),('13','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431384932','chat','1','签到','0'),('14','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431384944','home','1','首页','1'),('15','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-12','1431385365','vCard','1','万水千山','0'),('16','0','twllsi1431226863','onHRmuBJhvmUblM7QEf9ecnd9Y7U','2015-05-12','1431422358','chat','1','你好','0'),('17','1','twllsi1431226863','onHRmuO2s8qXOw85iU-Xb8RSN_VY','2015-05-14','1431590177','vCard','2','用户关注','0'),('18','1','twllsi1431226863','onHRmuKJHTp6moCPMXDlAy68RLLI','2015-05-17','1431858610','vCard','2','用户关注','0'),('19','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-18','1431944407','vCard','1','用户关注','0'),('20','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-18','1431955560','vCard','7','用户关注','0'),('21','3','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-18','1431960473','Member_card_set','1','会员','0'),('22','13','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-19','1431965273','Product','2','用户关注','0'),('23','22','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-19','1431965897','Img','11','博览书店','0'),('24','22','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-19','1431965913','Img','3','用户关注','0'),('25','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-19','1431967327','Invite','15','用户关注','0'),('26','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-19','1431968677','Invite','9','用户关注','0'),('27','22','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-19','1431968791','Img','2','博览书店','0'),('28','1','twllsi1431226863','onHRmuJcpa291GRci5V7UxjoVk2Y','2015-05-19','1432033823','Invite','1','用户关注','0'),('29','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432076881','Invite','3','用户关注','0'),('30','14','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432078055','Product','28','用户关注','0'),('31','14','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-20','1432100135','Product','4','用户关注','0'),('32','22','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-20','1432100183','Img','1','博览书店','0'),('33','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432134395','Seckill','1','秒杀','0'),('34','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432134543','Seckill','2','用户关注','0'),('35','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432134994','Lottery','1','摁死小情侣','0'),('36','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-20','1432135957','Lottery','1','用户关注','0'),('37','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-20','1432137032','Lottery','2','用户关注','0'),('38','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432161693','Sign','4','用户关注','0'),('39','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432161949','chat','1','留言板','0'),('40','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432162086','chat','1','你是谁','0'),('41','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432162236','chat','1','哈哈','0'),('42','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432162243','chat','1','不告诉你','0'),('43','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432162262','chat','1','唱首歌给我听','0'),('44','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-21','1432162272','chat','1','跳舞吧','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('45','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-21','1432187394','Sign','1','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('46','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-22','1432249188','album','1','相册','1'),('47','1','twllsi1431226863','onHRmuD5eAyABVzl3tWBJKXtPjjs','2015-05-22','1432249672','Sign','4','用户关注','0'),('48','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-22','1432251112','Helping','5','用户关注','0'),('49','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-23','1432346608','Helping','3','用户关注','0'),('50','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-26','1432619512','Helping','4','用户关注','0'),('51','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-05-27','1432708456','Helping','1','用户关注','0'),('52','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-05-28','1432767268','Helping','2','用户关注','0'),('53','16','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','2015-05-31','1433051452','Helping','5','用户关注','0'),('54','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-02','1433238189','Helping','5','用户关注','0'),('55','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247600','chat','1','计算器','0'),('56','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247666','chat','1','50-20','0'),('57','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247678','chat','1','你好','0'),('58','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247685','chat','1','我们是什么','0'),('59','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247694','chat','1','你是什么','0'),('60','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247888','chat','3','手机18588872622','0'),('61','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433247907','chat','6','手机18588872322','0'),('62','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433248085','chat','1','哈哈','0'),('63','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-02','1433248095','chat','1','你好啊','0'),('64','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-03','1433282823','chat','1','最近有什么活动','0'),('65','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-03','1433282837','chat','1','书籍','0'),('66','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410169','chat','1','有什么好书','0'),('67','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410189','chat','1','有什么好书？','0'),('68','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410214','chat','1','这个星期有什么活动','0'),('69','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410268','chat','1','还有吗','0'),('70','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410279','chat','1','有什么？','0'),('71','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410294','chat','1','活动呀？','0'),('72','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410313','chat','1','有什么推荐','0'),('73','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410345','chat','1','新书','0'),('74','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-06-04','1433410357','chat','1','有什么新书？','0'),('75','0','twllsi1431226863','onHRmuFwfs_FcUG1uLjDKzkPti-4','2015-06-06','1433559765','chat','1','有什么活动','0'),('76','16','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','2015-06-06','1433560040','Helping','2','用户关注','0'),('77','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-06','1433564426','Helping','4','用户关注','0'),('78','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-06','1433564491','chat','1','卡咯','0'),('79','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-06-06','1433564860','Lottery','1','摁死小情侣','0'),('80','16','twllsi1431226863','onHRmuFwfs_FcUG1uLjDKzkPti-4','2015-06-06','1433572277','Helping','2','用户关注','0'),('81','16','twllsi1431226863','onHRmuJy0GwK-7dLt23VwxqMRuLM','2015-06-06','1433588264','Helping','1','用户关注','0'),('82','0','twllsi1431226863','onHRmuNp2ALbeBTemyGPoIXCRXSo','2015-06-10','1433904974','chat','1','兼职','0'),('83','0','twllsi1431226863','onHRmuNp2ALbeBTemyGPoIXCRXSo','2015-06-10','1433904983','chat','1','校园兼职','0'),('84','16','twllsi1431226863','onHRmuNp2ALbeBTemyGPoIXCRXSo','2015-06-10','1433905012','Helping','2','用户关注','0'),('85','16','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','2015-06-11','1434021750','Helping','1','用户关注','0'),('86','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434445993','chat','1','老板在吗','0'),('87','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446011','chat','1','你收旧书吗','0'),('88','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446069','chat','1','你看看这些书','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('89','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446072','chat','1','你要吗','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('90','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446082','chat','1','不收吗','0'),('91','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446158','chat','1','之前从你这买的参考书也不要嘛','0'),('92','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446160','chat','1','吗','0'),('93','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446189','chat','1','？？？','0'),('94','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','2015-06-16','1434446246','chat','1','美国文学简史学习指南这类的你收吗','0'),('95','16','twllsi1431226863','onHRmuBTD41pLrLghzzhhXR3JrVc','2015-06-19','1434711528','Helping','2','用户关注','0'),('96','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782696','chat','1','你好，请问你们招收暑期工吗','0'),('97','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782739','chat','1','我没有操心你们，我只是操心我自己','0'),('98','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782779','chat','1','只是问一下，干嘛用这种态度','0'),('99','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782790','chat','1','伪文艺','0'),('100','16','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782855','Helping','1','用户关注','0'),('101','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782918','chat','1','无聊','0'),('102','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782929','chat','1','没说你','0'),('103','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782938','chat','1','我就说我自己','0'),('104','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782942','chat','1','行了吧','0'),('105','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782952','chat','1','我不懂','0'),('106','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434782959','chat','1','忘了爱','0'),('107','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783010','chat','1','你们这些工作就是陪人聊天么','0'),('108','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783020','chat','2','太没意思了','0'),('109','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783038','chat','1','看得出，纯属一逗比','0'),('110','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783142','chat','1','你还抽不出时间，我看你闲着没事干','0'),('111','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783160','chat','1','真棒，太棒了','0'),('112','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783200','chat','1','我问你哦','0'),('113','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783212','chat','1','我要问你问题','0'),('114','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783581','chat','1','你是个人还是机器吖','0'),('115','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783588','chat','1','哦','0'),('116','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783606','chat','1','要是个人多好','0'),('117','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783615','chat','1','没有','0'),('118','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783634','chat','1','要是你是个帅哥多好','0'),('119','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783642','chat','1','我知道','0'),('120','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783653','chat','1','你不是帅哥我知道','0'),('121','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783670','chat','1','棺材见了都会打开盖','0'),('122','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783682','chat','1','我读书少','0'),('123','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783696','chat','1','你哪里毕业的','0'),('124','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783703','chat','1','谢谢','0'),('125','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783712','chat','1','我家是北大','0'),('126','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783727','chat','1','还有清华都是我家的','0'),('127','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783792','chat','1','还有什么，你还想有什么，一个机器人需要像人那么烦吗','0'),('128','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783832','chat','1','我就知道复杂一点的东西你就不懂，你还是让你老板把你换了吧，你也该回家了','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('129','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783871','chat','1','简单来说，就是，你，不中用了','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('130','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434783883','chat','1','说明你太低端了','0'),('131','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798912','chat','1','好无聊','0'),('132','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798924','chat','1','没地方玩','0'),('133','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798930','chat','1','玩什么','0'),('134','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798941','chat','1','随便','0'),('135','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798946','chat','1','嗯','0'),('136','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798955','chat','1','我说了你决定','0'),('137','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798964','chat','1','赶紧的','0'),('138','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434798984','chat','1','你不是说你决定玩什么吗','0'),('139','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434799000','chat','1','玩些什么','0'),('140','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434799015','chat','1','健你妹','0'),('141','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-20','1434799440','chat','1','讨厌死你了','0'),('142','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434839601','chat','3','嗨','0'),('143','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434850028','chat','1','没意思','0'),('144','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434850048','chat','1','讲吧','0'),('145','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434850084','chat','1','笑话','0'),('146','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434850739','chat','1','哈','0'),('147','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434896500','chat','1','怎么那么迟','0'),('148','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434896583','chat','1','什么意思啊','0'),('149','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898061','chat','1','你好','0'),('150','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898071','chat','1','我怎么好了','0'),('151','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898074','chat','1','我不好','0'),('152','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898094','chat','1','你给奖我中好吗','0'),('153','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434898104','chat','1','有个美女要跟你说话','0'),('154','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-21','1434898115','chat','1','周荔青','0'),('155','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898137','chat','1','谢谢你 我不需要忘情水','0'),('156','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898151','chat','1','为什么你要和我说话……','0'),('157','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898803','chat','1','表白咯','0'),('158','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898808','chat','1','你喜欢我咯','0'),('159','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434898820','chat','1','跟你不认识的','0'),('160','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899032','chat','1',' 嗯','0'),('161','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899037','chat','1','考虑一下','0'),('162','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899045','chat','1','但我不喜欢你','0'),('163','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899048','chat','1','不要考虑了','0'),('164','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899059','chat','1','你死心吧','0'),('165','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899306','chat','1','好累','0'),('166','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899309','chat','1','累爱啊','0'),('167','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899316','chat','1','超累啊','0'),('168','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899327','chat','1','你还说爱我','0'),('169','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899350','chat','1','觉得你很没有用','0'),('170','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899397','chat','1','噁心','0'),('171','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899402','chat','1','并不需要','0'),('172','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899420','chat','1','算了呗','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('173','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899570','chat','1','你一次回复我两句好吗','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('174','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899583','chat','1','没有a ','0'),('175','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899587','chat','1','a','0'),('176','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899593','chat','1','b','0'),('177','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899604','chat','1','d','0'),('178','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899611','chat','1','f','0'),('179','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899768','chat','1','h','0'),('180','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899840','chat','1','j','0'),('181','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899843','chat','1','k','0'),('182','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899846','chat','1','l','0'),('183','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899848','chat','1','m','0'),('184','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434899850','chat','1','n','0'),('185','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434900518','chat','1','你去吃屎吧','0'),('186','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434900535','chat','1','有病啊那刻','0'),('187','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434900539','chat','1','呵呵','0'),('188','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434900543','chat','1','关键字','0'),('189','1','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-21','1434900547','Invite','1','博览','0'),('190','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903319','chat','1','浮生物语','0'),('191','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903347','chat','1','有第一部吗？','0'),('192','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903376','chat','1','有吗','0'),('193','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903408','chat','1','在大石博览书店吗？','0'),('194','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903422','chat','1','不是','0'),('195','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','2015-06-22','1434903438','chat','1','不喜欢','0'),('196','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935038','chat','1','起床','0'),('197','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935047','chat','1','嗯','0'),('198','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935058','chat','1','有点累','0'),('199','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935792','chat','1','地理位置','0'),('200','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935797','chat','1','你好','0'),('201','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935805','chat','1','好哦','0'),('202','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935809','chat','1','但我','0'),('203','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-06-22','1434935824','chat','1','你有病吧……','0'),('204','16','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','2015-06-22','1434965135','Helping','1','用户关注','0'),('205','16','twllsi1431226863','onHRmuBFftTQTDlonGu1eivuOPNY','2015-06-22','1434973896','Helping','2','用户关注','0'),('206','16','twllsi1431226863','onHRmuPJnS3ptOC8sbtYbAcXWYrg','2015-06-25','1435199780','Helping','5','用户关注','0'),('207','22','twllsi1431226863','onHRmuPJnS3ptOC8sbtYbAcXWYrg','2015-06-25','1435199836','Img','1','博览书店','0'),('208','16','twllsi1431226863','onHRmuLZj6tyjlmVWnvejHbnkU6o','2015-06-27','1435390649','Helping','2','用户关注','0'),('209','0','twllsi1431226863','onHRmuHBgjdfWYaQkf3x3Sj24ciI','2015-06-27','1435415933','chat','1','招聘','0'),('210','0','twllsi1431226863','onHRmuHBgjdfWYaQkf3x3Sj24ciI','2015-06-27','1435415947','chat','1','傻瓜','0'),('211','0','twllsi1431226863','onHRmuHBgjdfWYaQkf3x3Sj24ciI','2015-06-27','1435415987','chat','1','你是我心中的你吗','0'),('212','16','twllsi1431226863','onHRmuDxjcFPlNwGRLcpvAg5okqw','2015-06-29','1435583511','Helping','1','用户关注','0'),('213','16','twllsi1431226863','onHRmuPM3B8EFwtv00FkHVahFjLk','2015-07-08','1436356751','Helping','3','用户关注','0'),('214','16','twllsi1431226863','onHRmuOpMGfTab3UEIAawGLJqhak','2015-07-08','1436357207','Helping','1','用户关注','0'),('215','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-09','1436394894','Helping','2','用户关注','0'),('216','16','twllsi1431226863','onHRmuIqwG37qg0dgiYswnCbz4OA','2015-07-09','1436424164','Helping','1','用户关注','0'),('217','16','twllsi1431226863','onHRmuMPGrZlOf907MRoLzDao6Xc','2015-07-09','1436452725','Helping','1','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('218','16','twllsi1431226863','onHRmuOpMGfTab3UEIAawGLJqhak','2015-07-10','1436489306','Helping','1','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('219','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-11','1436598568','Helping','1','用户关注','0'),('220','16','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-07-12','1436693392','Helping','2','用户关注','0'),('221','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','2015-07-12','1436693405','chat','1','x','0'),('222','16','twllsi1431226863','onHRmuIloEzDCoNFch0PacyF4CS0','2015-07-13','1436773606','Helping','3','用户关注','0'),('223','16','twllsi1431226863','onHRmuNJaUHXp6G70ZBnADLI_Nm4','2015-07-15','1436936787','Helping','1','用户关注','0'),('224','16','twllsi1431226863','onHRmuNzbydOsEX3FiQL61pB_4SM','2015-07-17','1437071715','Helping','1','用户关注','0'),('225','16','twllsi1431226863','onHRmuHOMziAIGbnqE5mz1RSpef0','2015-07-17','1437110811','Helping','4','用户关注','0'),('226','16','twllsi1431226863','onHRmuPOyq4N1tWU3UdFrMuPb2rk','2015-07-18','1437228949','Helping','4','用户关注','0'),('227','16','twllsi1431226863','onHRmuI8QJzJeqpD8ia-wKETRElE','2015-07-22','1437547462','Helping','4','用户关注','0'),('228','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840077','Helping','5','用户关注','0'),('229','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840357','chat','1','新书','0'),('230','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840379','chat','1','最近新书？','0'),('231','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840404','chat','1','秘密花园','0'),('232','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840427','chat','1','有没有秘密花园？','0'),('233','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840450','chat','1','有没有秘密花园','0'),('234','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840460','chat','1','有没有','0'),('235','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840482','chat','1','还有','0'),('236','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840509','chat','1','有什么推荐','0'),('237','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-07-26','1437840535','chat','1','性价比','0'),('238','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-27','1438009171','Helping','1','用户关注','0'),('239','16','twllsi1431226863','onHRmuBLxSVTKg3xMDqAK2Iz2_88','2015-07-28','1438045061','Helping','1','用户关注','0'),('240','16','twllsi1431226863','onHRmuPOyq4N1tWU3UdFrMuPb2rk','2015-07-28','1438090382','Helping','1','用户关注','0'),('241','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-30','1438222348','chat','1','有没有','0'),('242','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-30','1438222356','chat','1','有没有秘密花园','0'),('243','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-30','1438222365','chat','1','还有','0'),('244','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-30','1438222373','chat','1','有什么推荐','0'),('245','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-07-30','1438222382','chat','1','性价比','0'),('246','16','twllsi1431226863','onHRmuDQxc3V8ostR4XsXGVx6iaI','2015-07-31','1438334700','Helping','1','用户关注','0'),('247','16','twllsi1431226863','onHRmuFo6gTCT3H8MBbYd_y4YJKs','2015-08-01','1438360157','Helping','4','用户关注','0'),('248','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-01','1438396702','Helping','4','用户关注','0'),('249','16','twllsi1431226863','onHRmuJBYmpp1rHh2AYbEWGQOqak','2015-08-01','1438406449','Helping','1','用户关注','0'),('250','16','twllsi1431226863','onHRmuOCs7jcLkwmiotxd5w4dAXE','2015-08-02','1438485252','Helping','2','用户关注','0'),('251','16','twllsi1431226863','onHRmuLBgXVwoM5NW3OtKwokPq8o','2015-08-02','1438499695','Helping','1','用户关注','0'),('252','16','twllsi1431226863','onHRmuGfq-P9cNyKkHjS4MaXdSVI','2015-08-02','1438519038','Helping','2','用户关注','0'),('253','22','twllsi1431226863','onHRmuGfq-P9cNyKkHjS4MaXdSVI','2015-08-02','1438519058','Img','1','博览书店','0'),('254','16','twllsi1431226863','onHRmuPrPWliw3wZO4cJRUeMWQ_A','2015-08-03','1438567690','Helping','3','用户关注','0'),('255','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-03','1438585466','Helping','1','用户关注','0'),('256','0','twllsi1431226863','onHRmuPrPWliw3wZO4cJRUeMWQ_A','2015-08-03','1438602167','chat','1','hi','0'),('257','3','twllsi1431226863','onHRmuPrPWliw3wZO4cJRUeMWQ_A','2015-08-03','1438602179','Member_card_set','1','绑定会员卡','0'),('258','0','twllsi1431226863','onHRmuF3tHrZ7QKiggvfSlQxjorw','2015-08-03','1438603008','chat','4','我在书店买的练习册买错了能换吗','0'),('259','16','twllsi1431226863','onHRmuF3tHrZ7QKiggvfSlQxjorw','2015-08-03','1438603037','Helping','5','用户关注','0'),('260','16','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438608935','Helping','5','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('261','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609091','chat','1','招聘','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('262','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609150','chat','1','收银员','0'),('263','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609209','chat','1','你们应聘收银员吗？','0'),('264','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609346','chat','1','你们书店招收银员吗？','0'),('265','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609385','chat','1','恩','0'),('266','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609678','chat','1','想问你们招收银员的工作区域具体是在那个位置？','0'),('267','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609693','chat','1','？','0'),('268','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609779','chat','1','你们公司不是在招聘吗？想问问你们招不招收银员','0'),('269','22','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','2015-08-03','1438609867','Img','1','博览书店','0'),('270','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-04','1438638210','Helping','15','用户关注','0'),('271','22','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-04','1438638258','Img','3','博览书店','0'),('272','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-04','1438643534','chat','1','微网站','0'),('273','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-04','1438643546','chat','1','网站','0'),('274','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-04','1438643612','home','1','首页','1'),('275','16','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-04','1438694506','Helping','1','用户关注','0'),('276','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438727632','home','2','首页','1'),('277','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438728461','chat','1','商家','0'),('278','15','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438728849','Product','8','用户关注','0'),('279','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438729121','home','1','主页','1'),('280','22','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438733181','Img','1','博览书店','0'),('281','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-05','1438752983','Panorama','2','用户关注','0'),('282','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438811516','Panorama','2','用户关注','0'),('283','19','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438815473','Product','12','用户关注','0'),('284','22','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438815709','Img','1','博览书店','0'),('285','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438815868','home','1','主页','1'),('286','19','twllsi1431226863','onHRmuDcnVZKr07-0gdxQkoNSknI','2015-08-06','1438837639','Product','7','用户关注','0'),('287','27','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438867703','Product','8','用户关注','0'),('288','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438871932','chat','1','预约','0'),('289','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-06','1438871940','chat','1','微预约','0'),('290','1','twllsi1431226863','onHRmuNgqpxURQCC-QS7NCR750oY','2015-08-07','1438878597','Custom','3','用户关注','0'),('291','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-07','1438898848','home','1','首页','1'),('292','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-07','1438915453','Custom','2','用户关注','0'),('293','1','twllsi1431226863','onHRmuDXK_rH_WUKkl7xeNrgr8wU','2015-08-07','1438922743','Custom','3','用户关注','0'),('294','1','twllsi1431226863','onHRmuO_Od1rAtH6EniASrqQv16g','2015-08-07','1438930034','Custom','2','用户关注','0'),('295','1','twllsi1431226863','onHRmuADaak92lxaJf2nu8EFIb34','2015-08-07','1438952247','Custom','8','用户关注','0'),('296','1','twllsi1431226863','onHRmuBsJeUGkT0OfpK0f0CrAWsk','2015-08-07','1438952250','Custom','4','用户关注','0'),('297','1','twllsi1431226863','onHRmuBXphndJTAiS7kSX6pzY4hQ','2015-08-08','1438995578','Custom','2','用户关注','0'),('298','1','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','2015-08-08','1438998760','Custom','1','用户关注','0'),('299','1','twllsi1431226863','onHRmuElVClSOAT1llROvWc1V6aU','2015-08-08','1439000064','Custom','2','用户关注','0'),('300','1','twllsi1431226863','onHRmuMqu5DelI0z7SPFsWli34XU','2015-08-09','1439062192','Custom','6','用户关注','0'),('301','1','twllsi1431226863','onHRmuIqwG37qg0dgiYswnCbz4OA','2015-08-09','1439088560','Custom','1','用户关注','0'),('302','1','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','2015-08-09','1439119081','Custom','4','用户关注','0'),('303','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-09','1439131644','Custom','2','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('304','1','twllsi1431226863','onHRmuDcnVZKr07-0gdxQkoNSknI','2015-08-10','1439171140','Custom','3','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('305','1','twllsi1431226863','onHRmuBXphndJTAiS7kSX6pzY4hQ','2015-08-10','1439211325','Custom','2','用户关注','0'),('306','23','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-11','1439293070','Img','53','用户关注','0'),('307','23','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','2015-08-11','1439293787','Img','1','用户关注','0'),('308','23','twllsi1431226863','onHRmuI7vFQTrNevc60FaLjIQc08','2015-08-11','1439295132','Img','4','用户关注','0'),('309','23','twllsi1431226863','onHRmuJrhck9V-aOSAt8S8FDbEDg','2015-08-11','1439297751','Img','5','用户关注','0'),('310','23','twllsi1431226863','onHRmuDXK_rH_WUKkl7xeNrgr8wU','2015-08-11','1439305473','Img','3','用户关注','0'),('311','23','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-12','1439332567','Img','18','用户关注','0'),('312','23','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-12','1439350473','Img','2','用户关注','0'),('313','25','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-12','1439360472','Img','4','用户关注','0'),('314','1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-12','1439369599','Multi','11','用户关注','0'),('315','1','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-12','1439370676','Multi','1','用户关注','0'),('316','23','twllsi1431226863','onHRmuDcnVZKr07-0gdxQkoNSknI','2015-08-12','1439380527','Img','1','用户关注','0'),('317','23','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','2015-08-12','1439381049','Img','5','用户关注','0'),('318','23','twllsi1431226863','onHRmuCxdTrvctZE7Psx038IijUo','2015-08-12','1439381564','Img','2','用户关注','0'),('319','23','twllsi1431226863','onHRmuACXK4uZBftSzUJIFFtLMlw','2015-08-12','1439384838','Img','1','用户关注','0'),('320','23','twllsi1431226863','onHRmuJDi5nhWapWU4BgiPw_p_gw','2015-08-12','1439387111','Img','2','用户关注','0'),('321','23','twllsi1431226863','onHRmuFwYUp1l1rQzEVIn70Ou_cI','2015-08-12','1439388203','Img','1','用户关注','0'),('322','23','twllsi1431226863','onHRmuBXphndJTAiS7kSX6pzY4hQ','2015-08-12','1439389223','Img','2','用户关注','0'),('323','23','twllsi1431226863','onHRmuEZx7-e5eub6rjzGbYMKOWg','2015-08-12','1439390387','Img','1','用户关注','0'),('324','23','twllsi1431226863','onHRmuL_-GomnSNMXrmpWntIb6uM','2015-08-12','1439391634','Img','1','用户关注','0'),('325','23','twllsi1431226863','onHRmuPqG2jQHR6doZdYwZitWTB8','2015-08-12','1439391981','Img','1','用户关注','0'),('326','23','twllsi1431226863','onHRmuFnyDwTGQ63OZ9atJXJI1Qs','2015-08-12','1439392075','Img','3','用户关注','0'),('327','23','twllsi1431226863','onHRmuI7vFQTrNevc60FaLjIQc08','2015-08-12','1439394179','Img','1','用户关注','0'),('328','23','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-13','1439400069','Img','6','用户关注','0'),('329','23','twllsi1431226863','onHRmuOcPbBs1be-OxSd8cLBlvb4','2015-08-13','1439427257','Img','2','用户关注','0'),('330','23','twllsi1431226863','onHRmuHB7GTZH5Qzpm7_JdKT1XfA','2015-08-13','1439428350','Img','1','用户关注','0'),('331','23','twllsi1431226863','onHRmuJ8yewpt2iNGzLnqblckY6Y','2015-08-13','1439433503','Img','4','用户关注','0'),('332','23','twllsi1431226863','onHRmuKCpYSrDw6ODqL4hg09u6Rc','2015-08-13','1439433747','Img','24','用户关注','0'),('333','23','twllsi1431226863','onHRmuH2jASN1oLhreBkNI_MfH3w','2015-08-13','1439441353','Img','6','用户关注','0'),('334','23','twllsi1431226863','onHRmuL3zrpxtzrIejGM8T4fu5vg','2015-08-13','1439442005','Img','1','用户关注','0'),('335','23','twllsi1431226863','onHRmuLgP5Ne_0ZyQkkM8MGYpYFU','2015-08-13','1439442443','Img','2','用户关注','0'),('336','23','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-13','1439446893','Img','3','用户关注','0'),('337','23','twllsi1431226863','onHRmuL_-GomnSNMXrmpWntIb6uM','2015-08-13','1439448523','Img','4','用户关注','0'),('338','23','twllsi1431226863','onHRmuHTl-dXsn6D_X3jGMJPVuCc','2015-08-13','1439448768','Img','2','用户关注','0'),('339','23','twllsi1431226863','onHRmuJUyiIz7Lxi2uTNwJAumi-A','2015-08-13','1439450001','Img','6','用户关注','0'),('340','23','twllsi1431226863','onHRmuMYLpNB8Xeq_WBi81eWjykk','2015-08-13','1439457022','Img','1','用户关注','0'),('341','23','twllsi1431226863','onHRmuGhE79yRiiNlYBZny-JR35U','2015-08-13','1439458702','Img','13','用户关注','0'),('342','23','twllsi1431226863','onHRmuOZBK5IKqBEdgSVae4zVgdc','2015-08-13','1439465036','Img','2','用户关注','0'),('343','27','twllsi1431226863','onHRmuL3zrpxtzrIejGM8T4fu5vg','2015-08-13','1439474781','Img','3','用户关注','0'),('344','27','twllsi1431226863','onHRmuOuerZGxpl9vT6vRHi9NjYM','2015-08-13','1439477108','Img','3','用户关注','0'),('345','27','twllsi1431226863','onHRmuJH-Hcd24AWfdARYhkV8QOg','2015-08-13','1439477400','Img','5','用户关注','0'),('346','27','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','2015-08-13','1439477664','Img','5','用户关注','0'),('347','27','twllsi1431226863','onHRmuFEYONZ_rGXk4mnQvTl59-U','2015-08-13','1439478346','Img','5','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('348','27','twllsi1431226863','onHRmuOZBK5IKqBEdgSVae4zVgdc','2015-08-13','1439478781','Img','1','用户关注','0');/* MySQLReback Separation */
 /* 插入数据 `tp_behavior` */
 INSERT INTO `tp_behavior` VALUES ('349','27','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','2015-08-13','1439480063','Img','6','用户关注','0'),('350','3','twllsi1431226863','onHRmuF4pgKcwuRnpyPGEuPDnR4E','2015-08-14','1439486058','Member_card_set','1','发截图拿会员卡','0'),('351','27','twllsi1431226863','onHRmuF4pgKcwuRnpyPGEuPDnR4E','2015-08-14','1439486279','Img','2','用户关注','0'),('352','27','twllsi1431226863','onHRmuAIAHpIuVidhqDOleYfjazE','2015-08-14','1439512078','Img','2','用户关注','0'),('353','27','twllsi1431226863','onHRmuPrJjaImdUGNOBYnqid7Wds','2015-08-14','1439517333','Img','7','用户关注','0'),('354','27','twllsi1431226863','onHRmuL3zrpxtzrIejGM8T4fu5vg','2015-08-14','1439531115','Img','1','用户关注','0'),('355','27','twllsi1431226863','onHRmuATA-W4a4dxYwONsTuxCAMc','2015-08-14','1439531527','Img','2','用户关注','0'),('356','27','twllsi1431226863','onHRmuOWnXNIW2Ex5CFBBE-N0F2w','2015-08-14','1439535102','Img','4','用户关注','0'),('357','27','twllsi1431226863','onHRmuMYLpNB8Xeq_WBi81eWjykk','2015-08-14','1439536475','Img','1','用户关注','0'),('358','27','twllsi1431226863','onHRmuCi5yYzvtlzDTjoJ6jKNtTA','2015-08-14','1439536915','Img','3','用户关注','0'),('359','27','twllsi1431226863','onHRmuOuerZGxpl9vT6vRHi9NjYM','2015-08-14','1439536971','Img','2','用户关注','0'),('360','27','twllsi1431226863','onHRmuPrRHaiRsIl1utv-BjlRkSo','2015-08-14','1439540289','Img','2','用户关注','0'),('361','27','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','2015-08-15','1439591382','Img','5','用户关注','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_broker` */
 DROP TABLE IF EXISTS `tp_broker`;/* MySQLReback Separation */ CREATE TABLE `tp_broker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(20) CHARACTER SET utf8 NOT NULL,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `picurl` varchar(250) CHARACTER SET utf8 NOT NULL,
  `imgreply` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '消息回复图片',
  `invitecode` char(16) CHARACTER SET utf8 NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `ruledesc` text CHARACTER SET utf8 NOT NULL,
  `registration` text CHARACTER SET utf8 NOT NULL,
  `isdel` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1表示已删除',
  `addtime` int(11) NOT NULL,
  `uptime` int(11) NOT NULL COMMENT '更新时间',
  `bgimg` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT '背景图片',
  `rinfo` varchar(500) CHARACTER SET utf8 NOT NULL COMMENT '消息回复简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_client` */
 DROP TABLE IF EXISTS `tp_broker_client`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推挤人id 推挤人idbroker_user表id',
  `verifyuid` int(11) NOT NULL DEFAULT '0' COMMENT '顾问id 推挤人idbroker_user表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `cname` varchar(90) CHARACTER SET utf8 NOT NULL COMMENT '客户名称',
  `ctel` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '客户手机号',
  `proid` int(11) NOT NULL DEFAULT '0' COMMENT 'broker_item表id',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '备注',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `wecha_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_commission` */
 DROP TABLE IF EXISTS `tp_broker_commission`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_commission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned NOT NULL,
  `tjuid` int(11) unsigned NOT NULL,
  `tjname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `clientid` int(11) unsigned NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_tel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `client_status` tinyint(1) unsigned NOT NULL COMMENT '客户目前状态',
  `proid` int(11) unsigned NOT NULL,
  `proname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `verifyname` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问名字',
  `verifytel` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '置业顾问电话',
  `money` decimal(10,2) unsigned NOT NULL COMMENT '金额',
  `status` tinyint(1) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_item` */
 DROP TABLE IF EXISTS `tp_broker_item`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(10) unsigned NOT NULL COMMENT 'broker表id',
  `xmname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `xmtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1现金2百分比',
  `xmnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '佣金额度',
  `xmimg` varchar(300) CHARACTER SET utf8 NOT NULL COMMENT '图片url',
  `tourl` varchar(300) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '跳转地址url',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_optionlog` */
 DROP TABLE IF EXISTS `tp_broker_optionlog`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_optionlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bid` int(10) unsigned NOT NULL,
  `tjuid` int(11) NOT NULL COMMENT '推荐人',
  `logstr` varchar(100) CHARACTER SET utf8 NOT NULL,
  `addtime` int(11) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_translation` */
 DROP TABLE IF EXISTS `tp_broker_translation`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_translation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '身份介绍',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0普通1经纪人2其他',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 插入数据 `tp_broker_translation` */
 INSERT INTO `tp_broker_translation` VALUES ('1','公司员工','0'),('2','大众经纪人','0'),('3','中介公司','0'),('4','代理公司','0'),('5','合作伙伴','0'),('6','老业主','1'),('7','产品顾问','2');/* MySQLReback Separation */
 /* 创建表结构 `tp_broker_user` */
 DROP TABLE IF EXISTS `tp_broker_user`;/* MySQLReback Separation */ CREATE TABLE `tp_broker_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `bid` int(11) NOT NULL,
  `tel` varchar(12) CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `identity` tinyint(1) unsigned NOT NULL COMMENT 'broker_translation表id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1禁用',
  `is_verify` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置业顾问',
  `identitylog` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '身份变更记录',
  `identitycode` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '身份证号',
  `company` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '公司名称',
  `recommendnum` int(10) unsigned NOT NULL COMMENT '推荐人数',
  `totalcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '可提取佣金',
  `extractcash` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '以提取出的佣金',
  `bank_truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '银行开户姓名',
  `bank_cardnum` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '银行卡号',
  `bank_name` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '银行名称',
  `wecha_id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'openid',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_busines` */
 DROP TABLE IF EXISTS `tp_busines`;/* MySQLReback Separation */ CREATE TABLE `tp_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(50) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_busines_comment` */
 DROP TABLE IF EXISTS `tp_busines_comment`;/* MySQLReback Separation */ CREATE TABLE `tp_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_busines_main` */
 DROP TABLE IF EXISTS `tp_busines_main`;/* MySQLReback Separation */ CREATE TABLE `tp_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_busines_pic` */
 DROP TABLE IF EXISTS `tp_busines_pic`;/* MySQLReback Separation */ CREATE TABLE `tp_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_busines_second` */
 DROP TABLE IF EXISTS `tp_busines_second`;/* MySQLReback Separation */ CREATE TABLE `tp_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_car` */
 DROP TABLE IF EXISTS `tp_car`;/* MySQLReback Separation */ CREATE TABLE `tp_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_car_utility` */
 DROP TABLE IF EXISTS `tp_car_utility`;/* MySQLReback Separation */ CREATE TABLE `tp_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carcat` */
 DROP TABLE IF EXISTS `tp_carcat`;/* MySQLReback Separation */ CREATE TABLE `tp_carcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `img` char(150) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_show` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_cards` */
 DROP TABLE IF EXISTS `tp_cards`;/* MySQLReback Separation */ CREATE TABLE `tp_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `viewcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_cards` */
 INSERT INTO `tp_cards` VALUES ('1','3','','万水千山“粽”是情','万水千山','万水千山“粽”是情','{\"self_8\":\"http://chenyun.b0.upaiyun.com/audio/20150416/eea2e61e1529778af44a0d0f2a09ada6.mp3\",\"self_9\":\"http://chenyun.b0.upaiyun.com/images/20150418/5db47ebbabb28fc1be6040fe489e4802.png\",\"self_10\":\"王穆\",\"self_11\":\"万水千山“粽”是情，佳节来临，祝您端午节快乐，工作顺利，身体健康，心想事成！\",\"self_12\":\"晨曦\"}','twllsi1431226863','4','1431385356');/* MySQLReback Separation */
 /* 创建表结构 `tp_carmodel` */
 DROP TABLE IF EXISTS `tp_carmodel`;/* MySQLReback Separation */ CREATE TABLE `tp_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` varchar(50) NOT NULL DEFAULT '',
  `dealer_price` varchar(50) NOT NULL DEFAULT '',
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carnews` */
 DROP TABLE IF EXISTS `tp_carnews`;/* MySQLReback Separation */ CREATE TABLE `tp_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carowner` */
 DROP TABLE IF EXISTS `tp_carowner`;/* MySQLReback Separation */ CREATE TABLE `tp_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carsaler` */
 DROP TABLE IF EXISTS `tp_carsaler`;/* MySQLReback Separation */ CREATE TABLE `tp_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carseries` */
 DROP TABLE IF EXISTS `tp_carseries`;/* MySQLReback Separation */ CREATE TABLE `tp_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_carset` */
 DROP TABLE IF EXISTS `tp_carset`;/* MySQLReback Separation */ CREATE TABLE `tp_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '23',
  `conttpid` int(11) DEFAULT NULL,
  `title7` varchar(50) DEFAULT NULL,
  `title8` varchar(50) DEFAULT NULL,
  `title9` varchar(50) DEFAULT NULL,
  `title10` varchar(50) DEFAULT NULL,
  `title11` varchar(50) DEFAULT NULL,
  `head_url_7` varchar(200) DEFAULT NULL,
  `head_url_8` varchar(200) DEFAULT NULL,
  `head_url_9` varchar(200) DEFAULT NULL,
  `head_url_10` varchar(200) DEFAULT NULL,
  `head_url_11` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_caruser` */
 DROP TABLE IF EXISTS `tp_caruser`;/* MySQLReback Separation */ CREATE TABLE `tp_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_case` */
 DROP TABLE IF EXISTS `tp_case`;/* MySQLReback Separation */ CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `timg` char(200) NOT NULL,
  `classid` varchar(200) NOT NULL,
  `class` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_caseclass` */
 DROP TABLE IF EXISTS `tp_caseclass`;/* MySQLReback Separation */ CREATE TABLE `tp_caseclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_catemenu` */
 DROP TABLE IF EXISTS `tp_catemenu`;/* MySQLReback Separation */ CREATE TABLE `tp_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`orderss`,`status`) USING BTREE,
  KEY `token_2` (`token`,`orderss`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_catemenu` */
 INSERT INTO `tp_catemenu` VALUES ('2','0','twllsi1431226863','首页','0','http://weixin.blbook.cn/tpl/User/default/common/images/photo/plugmenu6.png','{siteUrl}/index.php?g=Wap&m=Index&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','0'),('7','0','twllsi1431226863','活动','1','http://weixin.blbook.cn/tpl/User/default/common/images/photo/plugmenu3.png','{changjingUrl}/index.php?m=Wap&c=view&a=index&tid=48473','1','0'),('5','0','twllsi1431226863','签到','4','http://weixin.blbook.cn/tpl/User/default/common/images/photo/plugmenu3.png','{siteUrl}/index.php?g=Wap&m=Fanssign&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','0'),('6','0','twllsi1431226863','吐槽','2','http://weixin.blbook.cn/tpl/User/default/common/images/photo/plugmenu4.png','{siteUrl}/index.php?g=Wap&m=Forum&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_classify` */
 DROP TABLE IF EXISTS `tp_classify`;/* MySQLReback Separation */ CREATE TABLE `tp_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '??ʾ˳??',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(10) DEFAULT '1',
  `conttpid` int(10) DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  `sonpagesize` int(2) NOT NULL DEFAULT '5' COMMENT '子类手机每页显示数',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `IDX_TO_FI_ID` (`token`,`fid`,`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_classify` */
 INSERT INTO `tp_classify` VALUES ('1','0','书店','书店商城','1','http://119.29.116.37/tpl/static/attachment/icon/canyin/canyin_red/1.png','{siteUrl}/index.php?g=Wap&m=Store&a=cats&token=twllsi1431226863&wecha_id={wechat_id}&cid=1','1','twllsi1431226863','0','350','1','0','0','5'),('2','0','会员','博览会员','2','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/a/6/7/thumb_5559ea55377c3.jpg','{siteUrl}/index.php?g=Wap&m=Card&a=index&token=twllsi1431226863&wecha_id={wechat_id}','0','twllsi1431226863','0','350','1','0','0','5'),('3','0','签到','签到拿积分','3','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/13.png','{siteUrl}/index.php?g=Wap&m=Fanssign&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','twllsi1431226863','0','350','1','0','0','5'),('4','0','吐槽','博览书店吐槽群','4','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/16.png','{siteUrl}/index.php?g=Wap&m=Forum&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','twllsi1431226863','0','350','2','0','0','5'),('5','0','精选文章','博览精选的文章','1','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/17.png','','0','twllsi1431226863','0','350','1','0','0','5'),('6','0','活动','博览书店热推活动','5','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/18.png','{changjingUrl}/index.php?m=Wap&c=view&a=index&tid=48473','1','twllsi1431226863','0','1','1','0','0','5'),('7','0','首页','博览微信首页','6','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/15.png','{siteUrl}/index.php?g=Wap&m=Index&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','twllsi1431226863','0','1','1','0','0','5'),('8','0','关于','关于博览数书店','1','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_red/22.png','','1','twllsi1431226863','0','1','1','0','0','5');/* MySQLReback Separation */
 /* 创建表结构 `tp_company` */
 DROP TABLE IF EXISTS `tp_company`;/* MySQLReback Separation */ CREATE TABLE `tp_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amapid` varchar(50) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  `province` char(30) NOT NULL,
  `city` char(30) NOT NULL,
  `district` char(30) NOT NULL,
  `location_id` int(11) NOT NULL,
  `cat_name` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_company` */
 INSERT INTO `tp_company` VALUES ('1','111812','1','twllsi1431226863','博览书店石楼分店','','','博览书店','','13060918090','广州市番禺区石楼镇人民路8路','22.971466','113.484924','<p class=\"MsoNormal\">
	电话：13060918090
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺区石楼镇人民路8路
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/b/b/d/5/55c13db7c7c93.jpg\" alt=\"\" /> 
</p>
<p class=\"MsoNormal\">
	<br />
</p>','0','0','0','http://119.29.116.37/uploads/t/twllsi1431226863/1/4/d/c/thumb_554f200d75489.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活'),('2','','1','twllsi1431226863','博览书店洛城分店  ','admin','21232f297a57a5a743894a0e4a801fc3','','','13060918023','广州市番禺区洛溪如意中心23号铺 ','23.040732','113.303853','<p class=\"MsoNormal\">
	电话：13060918023
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺区洛溪如意中心23号铺<span> </span>
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/c/f/8/4/55c13f5ed63bb.jpg\" alt=\"\" />
</p>','0','1','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/1/9/thumb_55c13e738637d.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活'),('3','','1','twllsi1431226863','博览书店大石分店','admin','21232f297a57a5a743894a0e4a801fc3','','','13060918032','广州市番禺区大石105国道新地广场二楼','23.021035','113.312083','<p class=\"MsoNormal\">
	电话：13060918032
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺区大石105国道新地广场二楼
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/a/c/5/1/55c14b4792a98.jpg\" alt=\"\" />
</p>','0','2','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/5/e/3/thumb_55c14afcd3365.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活'),('4','','1','twllsi1431226863','博览书店钟村分店','admin','21232f297a57a5a743894a0e4a801fc3','','','13060918036','广州市番禺区钟村镇人民路86号','22.974032','113.317259','<p class=\"MsoNormal\">
	电话：13060918036
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺区钟村镇人民路86号
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/e/4/a/5/55c150feb5077.jpg\" alt=\"\" />
</p>','0','3','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/4/1/thumb_55c1507a431cd.png','0','0','0','','0','广东省','广州市','番禺区','0','生活'),('5','','1','twllsi1431226863','博览书店石基分店','admin','798b7e430fdcce73e757a6763326c7bc','','','13060918082','广州市番禺区石基镇龙基北路24号','22.958007','113.437344','<p class=\"MsoNormal\">
	电话：13060918082&nbsp;&nbsp;&nbsp;
</p>
<p class=\"MsoNormal\">
	地址：<span> </span>广州市番禺区石基镇龙基北路24号
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/f/1/7/0/55c1650c2f519.jpg\" alt=\"\" />
</p>','0','4','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/1/c/9/thumb_55c1649523d8f.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活'),('6','111840','1','twllsi1431226863','博览书店榄核分店','admin','21232f297a57a5a743894a0e4a801fc3','','','15602213700','广州市南沙区榄核镇蔡新路B区商住楼','22.8257745','113.33543734','<p class=\"MsoNormal\">
	电话：15602213700
</p>
<p class=\"MsoNormal\">
	地址：广州市南沙区榄核镇蔡新路B区商住楼
</p>
营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/6/a/8/6/55c1668ae1b79.jpg\" alt=\"\" />','0','5','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/0/2/d/thumb_55c1656b7d488.jpg','0','0','0','','0','广东省','广州市','南沙区','0','生活'),('7','','1','twllsi1431226863','博览书店南村分店','admin','21232f297a57a5a743894a0e4a801fc3','','','13060918393','广州市番禺区南村镇文明路72号二、三楼','23.006933','113.387024','<p class=\"MsoNormal\">
	电话：13060918393
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺区南村镇文明路72号二、三楼
</p>
<p class=\"MsoNormal\">
	营业时间：09：30——21：30<br />
<img src=\"/uploads/t/twllsi1431226863/7/8/f/7/55c16705322e8.jpg\" alt=\"\" />
</p>','0','6','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/0/4/thumb_55c166d45a629.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活');/* MySQLReback Separation */
 /* 插入数据 `tp_company` */
 INSERT INTO `tp_company` VALUES ('8','111843','1','twllsi1431226863','博览书店黄阁分店','admin','21232f297a57a5a743894a0e4a801fc3','','','15602212977','广州市南沙区黄阁镇麒龙东路154号','22.81970532','113.50221905','<p class=\"MsoNormal\">
	电话：15602212977
</p>
<p class=\"MsoNormal\">
	地址：广州市南沙区黄阁镇麒龙东路154号
</p>
营业时间：09：00——21：00<br />
<img src=\"/uploads/t/twllsi1431226863/6/5/9/3/55c167a236163.jpg\" alt=\"\" />','0','7','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/4/c/thumb_55c1676ec6ce5.jpg','0','0','0','','0','广东省','广州市','南沙区','0','生活');/* MySQLReback Separation */
 /* 插入数据 `tp_company` */
 INSERT INTO `tp_company` VALUES ('9','','1','twllsi1431226863','博览书店北滘分店','admin','21232f297a57a5a743894a0e4a801fc3','','','18665595862','佛山市顺德区南昌路55号','22.921617','113.208707','<p class=\"MsoNormal\">
	电话：18665595862
</p>
<p class=\"MsoNormal\">
	地址：佛山市顺德区南昌路55号
</p>
<p class=\"MsoNormal\">
	营业时间：10：00——22：00<br />
<img src=\"/uploads/t/twllsi1431226863/1/4/8/2/55c169140379a.jpg\" alt=\"\" />
</p>','0','8','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/7/e/3/thumb_55c16813535fb.jpg','0','0','0','','0','广东省','佛山市','顺德区','0','生活'),('10','','1','twllsi1431226863','博览书店万达分店','admin','21232f297a57a5a743894a0e4a801fc3','','','18620483083','广州市番禺万达广场','23.006741','113.348809','<p class=\"MsoNormal\">
	电话：18620483083
</p>
<p class=\"MsoNormal\">
	地址：广州市番禺万达广场&nbsp;
</p>
<p class=\"MsoNormal\">
	营业时间：星期日至星期四：&nbsp;&nbsp;&nbsp;&nbsp;10：00——22：00
</p>
<p class=\"MsoNormal\">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;星期五、六：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10：00——22：30<br />
<img src=\"/uploads/t/twllsi1431226863/b/7/f/d/55c169b76ff11.jpg\" alt=\"\" />
</p>','0','9','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/d/7/4/thumb_55c1695d80caf.jpg','0','0','0','','0','广东省','广州市','番禺区','0','生活');/* MySQLReback Separation */
 /* 创建表结构 `tp_company_staff` */
 DROP TABLE IF EXISTS `tp_company_staff`;/* MySQLReback Separation */ CREATE TABLE `tp_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `func` varchar(1000) NOT NULL,
  `pcorwap` enum('pc','wap') NOT NULL,
  `wecha_id` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_cosmetology` */
 DROP TABLE IF EXISTS `tp_cosmetology`;/* MySQLReback Separation */ CREATE TABLE `tp_cosmetology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_cosmetology_departments` */
 DROP TABLE IF EXISTS `tp_cosmetology_departments`;/* MySQLReback Separation */ CREATE TABLE `tp_cosmetology_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_cosmetology_setup` */
 DROP TABLE IF EXISTS `tp_cosmetology_setup`;/* MySQLReback Separation */ CREATE TABLE `tp_cosmetology_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_cosmetology_setup_control` */
 DROP TABLE IF EXISTS `tp_cosmetology_setup_control`;/* MySQLReback Separation */ CREATE TABLE `tp_cosmetology_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_crowdfunding` */
 DROP TABLE IF EXISTS `tp_crowdfunding`;/* MySQLReback Separation */ CREATE TABLE `tp_crowdfunding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `intro` text NOT NULL,
  `fund` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `day` smallint(5) unsigned NOT NULL,
  `start` char(15) NOT NULL,
  `detail` text NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `praise` int(11) NOT NULL,
  `focus` int(11) NOT NULL,
  `supports` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_crowdfunding_focus` */
 DROP TABLE IF EXISTS `tp_crowdfunding_focus`;/* MySQLReback Separation */ CREATE TABLE `tp_crowdfunding_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `token` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`cid`) USING BTREE,
  KEY `wecha_id` (`wecha_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_crowdfunding_order` */
 DROP TABLE IF EXISTS `tp_crowdfunding_order`;/* MySQLReback Separation */ CREATE TABLE `tp_crowdfunding_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_name` char(50) NOT NULL,
  `orderid` char(50) NOT NULL,
  `token` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `address` varchar(300) NOT NULL,
  `add_time` char(15) NOT NULL,
  `pay_time` char(15) NOT NULL,
  `price` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `username` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_crowdfunding_reward` */
 DROP TABLE IF EXISTS `tp_crowdfunding_reward`;/* MySQLReback Separation */ CREATE TABLE `tp_crowdfunding_reward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `money` float NOT NULL,
  `content` text NOT NULL,
  `img` varchar(250) NOT NULL,
  `people` int(11) NOT NULL,
  `back_day` smallint(6) NOT NULL,
  `carriage` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_custom_field` */
 DROP TABLE IF EXISTS `tp_custom_field`;/* MySQLReback Separation */ CREATE TABLE `tp_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` varchar(500) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_custom_info` */
 DROP TABLE IF EXISTS `tp_custom_info`;/* MySQLReback Separation */ CREATE TABLE `tp_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_custom_limit` */
 DROP TABLE IF EXISTS `tp_custom_limit`;/* MySQLReback Separation */ CREATE TABLE `tp_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_custom_limit` */
 INSERT INTO `tp_custom_limit` VALUES ('1','','0','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_custom_set` */
 DROP TABLE IF EXISTS `tp_custom_set`;/* MySQLReback Separation */ CREATE TABLE `tp_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_custom_set` */
 INSERT INTO `tp_custom_set` VALUES ('1','阿萨德发','啊','啊','1438872015','http://weixin.blbook.cn/tpl/static/attachment/icon/canyin/canyin_orange/6.png','提交成功','','啊','1','twllsi1431226863','11','阿萨德发','113.297116','23.120126');/* MySQLReback Separation */
 /* 创建表结构 `tp_customer` */
 DROP TABLE IF EXISTS `tp_customer`;/* MySQLReback Separation */ CREATE TABLE `tp_customer` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `sex` varchar(4) DEFAULT '',
  `mobile` varchar(200) DEFAULT '',
  `tel` varchar(200) DEFAULT '',
  `email` varchar(200) DEFAULT '',
  `company` varchar(100) DEFAULT '',
  `job` varchar(20) DEFAULT '',
  `address` varchar(120) DEFAULT '',
  `website` varchar(200) DEFAULT '',
  `qq` varchar(16) DEFAULT '',
  `weixin` varchar(50) DEFAULT '',
  `yixin` varchar(50) DEFAULT '',
  `weibo` varchar(50) DEFAULT '',
  `laiwang` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `origin` bigint(20) unsigned NOT NULL DEFAULT '0',
  `originName` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createUser` varchar(32) NOT NULL DEFAULT '',
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupId` varchar(20) NOT NULL DEFAULT '',
  `groupName` varchar(200) DEFAULT '',
  `group` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_customs` */
 DROP TABLE IF EXISTS `tp_customs`;/* MySQLReback Separation */ CREATE TABLE `tp_customs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(150) NOT NULL,
  `price` char(150) NOT NULL,
  `about` char(150) NOT NULL,
  `common` char(150) NOT NULL,
  `login` char(150) NOT NULL,
  `help` char(150) NOT NULL,
  `fcname` varchar(80) NOT NULL,
  `pricename` varchar(80) NOT NULL,
  `loginname` varchar(80) NOT NULL,
  `helpname` varchar(80) NOT NULL,
  `aboutname` varchar(80) NOT NULL,
  `commonname` varchar(80) NOT NULL,
  `fc_open` int(11) NOT NULL DEFAULT '0',
  `about_open` int(11) NOT NULL DEFAULT '0',
  `common_open` int(11) NOT NULL DEFAULT '0',
  `help_open` int(11) NOT NULL DEFAULT '0',
  `login_open` int(11) NOT NULL DEFAULT '0',
  `price_open` int(11) NOT NULL DEFAULT '0',
  `fc_dspl` int(11) NOT NULL DEFAULT '0',
  `common_dspl` int(11) NOT NULL DEFAULT '0',
  `about_dspl` int(11) NOT NULL DEFAULT '0',
  `login_dspl` int(11) NOT NULL DEFAULT '0',
  `price_dspl` int(11) NOT NULL DEFAULT '0',
  `help_dspl` int(11) NOT NULL DEFAULT '0',
  `agentid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `open` int(11) NOT NULL,
  `dspl` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_cutprice` */
 DROP TABLE IF EXISTS `tp_cutprice`;/* MySQLReback Separation */ CREATE TABLE `tp_cutprice` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(500) DEFAULT NULL,
  `starttime` int(11) NOT NULL,
  `original` varchar(100) NOT NULL,
  `startprice` varchar(100) NOT NULL,
  `stopprice` varchar(100) NOT NULL,
  `cuttime` int(11) NOT NULL,
  `cutprice` varchar(100) NOT NULL,
  `inventory` int(11) NOT NULL,
  `logoimg1` varchar(100) NOT NULL,
  `logourl1` varchar(200) DEFAULT NULL,
  `logoimg2` varchar(100) DEFAULT NULL,
  `logourl2` varchar(200) DEFAULT NULL,
  `logoimg3` varchar(100) DEFAULT NULL,
  `logourl3` varchar(200) DEFAULT NULL,
  `info` text,
  `guize` text,
  `state` int(11) NOT NULL DEFAULT '0',
  `state_subscribe` int(11) NOT NULL DEFAULT '0',
  `state_userinfo` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `onebuynum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_cutprice_order` */
 DROP TABLE IF EXISTS `tp_cutprice_order`;/* MySQLReback Separation */ CREATE TABLE `tp_cutprice_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `orderid` varchar(200) NOT NULL,
  `num` int(11) NOT NULL,
  `nowprice` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `endtime` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `transactionid` varchar(200) DEFAULT NULL,
  `paytype` varchar(100) DEFAULT NULL,
  `third_id` varchar(100) DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `paystate` int(11) NOT NULL DEFAULT '0',
  `fahuo` int(11) NOT NULL DEFAULT '0',
  `fahuoid` varchar(100) DEFAULT NULL,
  `fahuoname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_czzreply_info` */
 DROP TABLE IF EXISTS `tp_czzreply_info`;/* MySQLReback Separation */ CREATE TABLE `tp_czzreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `bg` varchar(120) NOT NULL,
  `wx` varchar(120) NOT NULL,
  `zz` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_deliemail` */
 DROP TABLE IF EXISTS `tp_deliemail`;/* MySQLReback Separation */ CREATE TABLE `tp_deliemail` (
  `token` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `smtpserver` varchar(40) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `receive` varchar(60) NOT NULL DEFAULT '',
  `shangcheng` tinyint(1) NOT NULL DEFAULT '0',
  `yuyue` tinyint(1) NOT NULL DEFAULT '0',
  `baom` tinyint(1) NOT NULL DEFAULT '0',
  `zxyy` tinyint(1) NOT NULL DEFAULT '0',
  `toupiao` tinyint(1) NOT NULL DEFAULT '0',
  `dingcan` tinyint(1) NOT NULL,
  `car` tinyint(1) NOT NULL,
  `yiliao` tinyint(1) NOT NULL,
  `jdbg` tinyint(1) NOT NULL,
  `beauty` tinyint(1) NOT NULL,
  `fitness` tinyint(1) NOT NULL,
  `gover` tinyint(1) NOT NULL,
  `zhaopin` tinyint(1) NOT NULL,
  `jianli` tinyint(1) NOT NULL,
  `fangchan` tinyint(1) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `travel` tinyint(1) NOT NULL,
  `flower` tinyint(1) NOT NULL,
  `property` tinyint(1) NOT NULL,
  `bar` tinyint(1) NOT NULL,
  `fitment` tinyint(1) NOT NULL,
  `wedding` tinyint(1) NOT NULL,
  `affections` tinyint(1) NOT NULL,
  `housekeeper` tinyint(1) NOT NULL,
  `lease` tinyint(1) NOT NULL,
  `wn` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_dining_table` */
 DROP TABLE IF EXISTS `tp_dining_table`;/* MySQLReback Separation */ CREATE TABLE `tp_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish` */
 DROP TABLE IF EXISTS `tp_dish`;/* MySQLReback Separation */ CREATE TABLE `tp_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `sort` int(10) unsigned NOT NULL COMMENT '排序，数字越小排的越前',
  `istakeout` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否支持外卖',
  `isdiscount` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否支持会员折扣',
  `instock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  `refreshstock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新库存',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_company` */
 DROP TABLE IF EXISTS `tp_dish_company`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  `subscription` float NOT NULL,
  `discount` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '折扣',
  `kconoff` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启库存',
  `autoref` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  `imgs` varchar(250) NOT NULL COMMENT '餐厅图片',
  `bookingtime` varchar(255) NOT NULL COMMENT '餐桌选择时间段',
  `nowpay` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否立刻支付',
  `advancepay` int(10) unsigned NOT NULL COMMENT '预付定金',
  `token` varchar(50) NOT NULL DEFAULT '',
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL COMMENT '店铺状态',
  `category` varchar(10) NOT NULL COMMENT '店铺分类',
  `time` varchar(12) NOT NULL COMMENT '营业时间',
  `money` double(10,2) NOT NULL COMMENT '起送价格',
  `radius` varchar(10) NOT NULL COMMENT '服务半径',
  `scope` varchar(100) NOT NULL COMMENT '配送范围',
  `bulletin` text NOT NULL COMMENT '店铺公告',
  `memberCode` varchar(50) NOT NULL,
  `feiyin_key` varchar(50) NOT NULL,
  `deviceNo` varchar(20) NOT NULL,
  `print_status` int(1) NOT NULL,
  `print_total` int(4) NOT NULL COMMENT '打印份数',
  `phone_authorize` int(1) NOT NULL COMMENT '手机订单短信验证开关',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_status` int(1) NOT NULL,
  `email_status` int(1) NOT NULL,
  `printer` varchar(30) NOT NULL,
  `dishsame` tinyint(1) DEFAULT NULL,
  `offtable` tinyint(1) DEFAULT NULL,
  `starttime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业开始时间',
  `endtime2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '营业结束时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_like` */
 DROP TABLE IF EXISTS `tp_dish_like`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_name` */
 DROP TABLE IF EXISTS `tp_dish_name`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `token` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_order` */
 DROP TABLE IF EXISTS `tp_dish_order`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `third_id` varchar(100) NOT NULL DEFAULT '',
  `comefrom` varchar(50) NOT NULL DEFAULT 'dish' COMMENT '表明来源字母全小写',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '???ͷ?ʽ????',
  `isdel` tinyint(1) unsigned DEFAULT '0',
  `allmark` text NOT NULL COMMENT '购物车备注',
  `havepaid` float unsigned NOT NULL DEFAULT '0' COMMENT '二次支付时记录已经支付的金额',
  `paycount` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付的次数',
  `advancepay` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预付金额',
  `isover` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付是否结束1进行2结束',
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `send_email` char(1) NOT NULL DEFAULT '0' COMMENT '1已发0失败',
  `tmporderid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_reply` */
 DROP TABLE IF EXISTS `tp_dish_reply`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tableid` int(10) unsigned NOT NULL COMMENT 'dining_table表id',
  `keyword` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `cf` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '来源',
  `addtime` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1餐厅2餐桌后台0餐桌',
  `reg_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'recognition表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE,
  KEY `reg_id` (`reg_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_sort` */
 DROP TABLE IF EXISTS `tp_dish_sort`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dish_table` */
 DROP TABLE IF EXISTS `tp_dish_table`;/* MySQLReback Separation */ CREATE TABLE `tp_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  `dn_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'dish_name表id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_dishout_manage` */
 DROP TABLE IF EXISTS `tp_dishout_manage`;/* MySQLReback Separation */ CREATE TABLE `tp_dishout_manage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT 'company表id',
  `token` varchar(255) NOT NULL,
  `zc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `zc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_sdate` int(10) unsigned NOT NULL DEFAULT '0',
  `wc_edate` int(10) unsigned NOT NULL DEFAULT '0',
  `permin` tinyint(3) unsigned NOT NULL DEFAULT '15',
  `removing` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '服务半径',
  `area` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '配送区域',
  `sendtime` tinyint(3) NOT NULL COMMENT '送达时间(分)',
  `shopimg` text CHARACTER SET utf8 NOT NULL COMMENT '门店幻灯图片',
  `stype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '外送方式类型',
  `pricing` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外送相关金额设定',
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `rtitle` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '回复标题',
  `rinfo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复描述',
  `picurl` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '回复封面图片',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_dishout_salelog` */
 DROP TABLE IF EXISTS `tp_dishout_salelog`;/* MySQLReback Separation */ CREATE TABLE `tp_dishout_salelog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '商店id',
  `did` int(10) unsigned NOT NULL COMMENT 'dish表id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'dish_order表id',
  `money` int(10) unsigned NOT NULL COMMENT '下单时此菜总金额',
  `nums` int(10) unsigned NOT NULL COMMENT '下单时份数',
  `unitprice` int(10) unsigned NOT NULL COMMENT '下单时此菜单价',
  `dname` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT '下单时菜名',
  `paytype` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '支付方式',
  `addtime` int(10) unsigned NOT NULL COMMENT '下单时间',
  `addtimestr` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '下单时间',
  `comefrom` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0外卖1微餐饮',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_distribution_setting` */
 DROP TABLE IF EXISTS `tp_distribution_setting`;/* MySQLReback Separation */ CREATE TABLE `tp_distribution_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 fixed 固定 float 百分比',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `multi_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '多级分销 0, 1',
  `upgrade_channel_commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '升级渠道商奖励',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT '主站唯一标识',
  `agreement` text NOT NULL COMMENT '加盟协议',
  `is_check` char(1) NOT NULL DEFAULT '0' COMMENT '分销申请是否要审核',
  `level_max` int(3) NOT NULL DEFAULT '0' COMMENT '最大分销级别',
  `paid_day` tinyint(3) DEFAULT '2' COMMENT '佣金支付处理（工作日）',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销引导广告（图片）',
  `home_banner_img` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺首页banner图片',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT '分销店铺logo图片',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '是否允许分销 0不允许 0允许',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor` */
 DROP TABLE IF EXISTS `tp_distributor`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '??????id',
  `uid` int(10) NOT NULL COMMENT '?û?id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '????',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '?绰',
  `addr` varchar(500) NOT NULL DEFAULT '' COMMENT '??ַ',
  `latitude` double NOT NULL DEFAULT '0' COMMENT '????',
  `longitude` double NOT NULL DEFAULT '0' COMMENT 'γ??',
  `intro` text NOT NULL COMMENT '????',
  `ischannel` char(1) NOT NULL DEFAULT '0' COMMENT '?????? 0,1',
  `status` char(1) NOT NULL DEFAULT '1' COMMENT '״̬',
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'δ???ֽ???',
  `paid` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '?????ֽ???',
  `checked` char(1) NOT NULL DEFAULT '0' COMMENT '???? 0,1',
  `regtime` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ע??ʱ??',
  `wecha_id` varchar(60) NOT NULL DEFAULT '0' COMMENT '??˿ʶ????',
  `token` varchar(50) NOT NULL DEFAULT '0' COMMENT '???̳?ʶ????',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wecha_id` (`wecha_id`) USING BTREE,
  KEY `token` (`token`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_commission_record` */
 DROP TABLE IF EXISTS `tp_distributor_commission_record`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_commission_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '????id 0Ϊ?οͽ???',
  `product_id` int(10) NOT NULL DEFAULT '0' COMMENT '??Ʒid 0Ϊ?????????̽???',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT 'Ӷ??',
  `bak` text NOT NULL COMMENT '??ע',
  `addtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '????ʱ??',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_order` */
 DROP TABLE IF EXISTS `tp_distributor_order`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '????id',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_product` */
 DROP TABLE IF EXISTS `tp_distributor_product`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '??Ʒid',
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  `soldout` char(1) NOT NULL DEFAULT '0' COMMENT '??Ʒ?¼? 0??1',
  `salesnum` int(5) NOT NULL DEFAULT '0' COMMENT '??????',
  `salestotal` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '???۶?',
  `time` varchar(20) NOT NULL DEFAULT '' COMMENT '????ʱ??(?ϼܡ??¼?)',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE,
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_receipt` */
 DROP TABLE IF EXISTS `tp_distributor_receipt`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_receipt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '????',
  `paidtime` varchar(20) NOT NULL DEFAULT '0' COMMENT '????ʱ??',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '״̬ 0 ?Ѵ??? , 1 ???տ?',
  `receipttime` varchar(20) NOT NULL DEFAULT '0' COMMENT '?տ?ʱ??',
  `time` varchar(20) NOT NULL DEFAULT '0' COMMENT '????????ʱ??',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_relation` */
 DROP TABLE IF EXISTS `tp_distributor_relation`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_relation` (
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  `supdid` int(10) NOT NULL DEFAULT '0' COMMENT '??????????id',
  `supdids` varchar(3000) NOT NULL DEFAULT '0' COMMENT '?ϼ???????id?б?',
  `level` int(5) NOT NULL DEFAULT '1' COMMENT '????',
  KEY `did` (`did`) USING BTREE,
  KEY `supdid` (`supdid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_distributor_store` */
 DROP TABLE IF EXISTS `tp_distributor_store`;/* MySQLReback Separation */ CREATE TABLE `tp_distributor_store` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `did` int(10) NOT NULL DEFAULT '0' COMMENT '??????id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '????????',
  `tpid` int(10) NOT NULL DEFAULT '0' COMMENT '??ҳģ??',
  `footerid` int(10) NOT NULL DEFAULT '0' COMMENT '?ײ?????',
  `headerid` int(10) NOT NULL DEFAULT '0' COMMENT '????????',
  `payee` varchar(50) NOT NULL DEFAULT '' COMMENT '?տ???',
  `bankcard` varchar(50) NOT NULL DEFAULT '' COMMENT '???п?',
  `logourl` varchar(200) NOT NULL DEFAULT '' COMMENT '????logo',
  `intro` text NOT NULL COMMENT 'ͼ????ϸҳ????',
  `bankname` varchar(50) NOT NULL DEFAULT '' COMMENT '????????',
  `notice` varchar(200) NOT NULL DEFAULT '' COMMENT '???̹???',
  `noticetime` varchar(20) NOT NULL DEFAULT '' COMMENT '????ʱ??',
  `banner` varchar(200) NOT NULL DEFAULT '' COMMENT '??ҳbanner',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '?Ƿ????????????? 0,1',
  `commission_rate` float NOT NULL DEFAULT '0' COMMENT 'Ӷ???ֳ?',
  `product_source` char(1) NOT NULL DEFAULT '1' COMMENT '??????Ʒ??Դ 0, 1 ????, ??????',
  `ad_img` varchar(200) NOT NULL DEFAULT '' COMMENT '???????????棨ͼƬ??',
  PRIMARY KEY (`id`),
  KEY `did` (`did`) USING BTREE,
  KEY `tpid` (`tpid`) USING BTREE,
  KEY `footerid` (`footerid`) USING BTREE,
  KEY `headerid` (`headerid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_diyform` */
 DROP TABLE IF EXISTS `tp_diyform`;/* MySQLReback Separation */ CREATE TABLE `tp_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_diyform_set` */
 DROP TABLE IF EXISTS `tp_diyform_set`;/* MySQLReback Separation */ CREATE TABLE `tp_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_diymen_class` */
 DROP TABLE IF EXISTS `tp_diymen_class`;/* MySQLReback Separation */ CREATE TABLE `tp_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(300) NOT NULL DEFAULT '',
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `wxsys` char(40) NOT NULL,
  `text` varchar(500) NOT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `nav` varchar(200) DEFAULT NULL,
  `emoji_code` varchar(16) NOT NULL COMMENT '图标码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_diymen_class` */
 INSERT INTO `tp_diymen_class` VALUES ('9','twllsi1431226863','8','热门书籍','','{siteUrl}/index.php?g=Wap&m=Store&a=cats&token=twllsi1431226863&wecha_id={wechat_id}&cid=1','0','2','','','','',''),('10','twllsi1431226863','8','热门少儿图书','','{siteUrl}/index.php?g=Wap&m=Store&a=products&token=twllsi1431226863&wecha_id={wechat_id}&catid=31','0','1','','','','',''),('8','twllsi1431226863','0','博览书店','','http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209691121&idx=1&sn=a6bfc18d4a9032d4c63f1ce598dc9c87&scene=1&key=dffc561732c2265105ede3e27c96dca2041d7d12dcc643c7ad02728c19bd2b42b940b8e1b29eca055b73a90e917a620a&ascene=0&uin=MTYzMTA0Mjk4MA==&devicetype=iMac MacBookPro11,2 OSX OSX 10.10.4 build(14E','1','3','','','','',''),('11','twllsi1431226863','8','热门社科图书','','{siteUrl}/index.php?g=Wap&m=Store&a=products&token=twllsi1431226863&wecha_id={wechat_id}&catid=32','0','2','','','','',''),('12','twllsi1431226863','0','博览推荐','首页','','1','2','','','','',''),('13','twllsi1431226863','12','博览精选','博览书店','','0','0','','','','',''),('14','twllsi1431226863','16','吐槽','','{siteUrl}/index.php?g=Wap&m=Forum&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','1','','','','',''),('15','twllsi1431226863','12','查理九世签售','','{changjingUrl}/index.php?m=Wap&c=view&a=index&tid=48473','1','2','','','','',''),('16','twllsi1431226863','0','博览会员','','{siteUrl}/index.php?g=Wap&m=Card&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','1','','','','',''),('17','twllsi1431226863','8','博览首页','','{siteUrl}/index.php?g=Wap&m=Index&a=index&token=twllsi1431226863&wecha_id={wechat_id}','0','3','','','','',''),('24','twllsi1431226863','8','门店信息','','{siteUrl}/index.php?g=Wap&m=Store&a=select&token=twllsi1431226863&wecha_id={wechat_id}','0','5','','','','',''),('19','twllsi1431226863','12','游戏活动','','{siteUrl}/index.php?g=Wap&m=Lovers&a=index&token=twllsi1431226863&wecha_id={wechat_id}&id=1','0','4','','','','',''),('20','twllsi1431226863','16','会员首页','','{siteUrl}/index.php?g=Wap&m=Card&a=index&token=twllsi1431226863&wecha_id={wechat_id}','0','0','','','','',''),('21','twllsi1431226863','16','签到活动','','{siteUrl}/index.php?g=Wap&m=Fanssign&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','1','','','','',''),('22','twllsi1431226863','12','博览相册','','{siteUrl}/index.php?g=Wap&m=Photo&a=index&token=twllsi1431226863&wecha_id={wechat_id}','1','0','','','','',''),('23','twllsi1431226863','16','微助力','','{siteUrl}/index.php?g=Wap&m=Helping&a=index&token=twllsi1431226863&wecha_id={wechat_id}&id=16','0','2','','','','',''),('25','twllsi1431226863','8','少儿图书排行','','{siteUrl}/index.php?g=Wap&m=Store&a=products&token=twllsi1431226863&wecha_id={wechat_id}&catid=33','0','3','','','','',''),('26','twllsi1431226863','8','社科图书排行','','{siteUrl}/index.php?g=Wap&m=Store&a=products&token=twllsi1431226863&wecha_id={wechat_id}&catid=34','0','4','','','','',''),('27','twllsi1431226863','16','关于博览','','http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209683493&idx=2&sn=ea737be10ec81b8c18df5597617614fd&scene=1&key=dffc561732c226514f776d08af6709f6a8417037b37a8ea311f158ab56fff90d8275f171e15c1bb5e06769daf93c8376&ascene=0&uin=MTYzMTA0Mjk4MA==&devicetype=iMac MacBookPro11,2 OSX OSX 10.10.4 build(14E','0','3','','','','',''),('28','twllsi1431226863','12','热门活动','','http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209683493&idx=1&sn=679587eec255d515b6b2294e502b605f&scene=1&key=dffc561732c22651ba5d0636fa694f6870220481b389bd33b52b639be6efb43c3256e59eb8832cf2118ed94681f06f7e&ascene=0&uin=MTYzMTA0Mjk4MA==&devicetype=iMac MacBookPro11,2 OSX OSX 10.10.4 build(14E','1','3','','','','','');/* MySQLReback Separation */
 /* 创建表结构 `tp_diymen_set` */
 DROP TABLE IF EXISTS `tp_diymen_set`;/* MySQLReback Separation */ CREATE TABLE `tp_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_diymen_set` */
 INSERT INTO `tp_diymen_set` VALUES ('1','twllsi1431226863','wx95a2ccf2f2fa0ebd','694627f59907f99b256abdd901938fc3');/* MySQLReback Separation */
 /* 创建表结构 `tp_dream` */
 DROP TABLE IF EXISTS `tp_dream`;/* MySQLReback Separation */ CREATE TABLE `tp_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('1','梦见父母','梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的'),('2','梦见护士',' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。'),('3','梦见老师',' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式'),('4','梦见男孩','梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活'),('5','梦见皇后',' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财'),('6','梦见朋友',' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('7','梦见守财奴',' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('8','梦见尼姑',' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。'),('9','梦见小孩',' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课'),('10','梦见人群',' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞'),('11','梦见疯子',' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条'),('12','梦见兄弟姊妹',' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子'),('13','梦见军队','梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。'),('14','梦见清道夫',' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝'),('15','梦见祖父母',' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。'),('16','梦见婴儿',' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。'),('17','梦见野蛮人','男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快'),('18','梦见邻居','梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('19','梦见王子公主',' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('20','梦见小贩',' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任'),('21','梦见医生',' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安'),('22','梦见丈夫',' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.'),('23','梦见烈士',' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头'),('24','梦见警察',' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连'),('25','梦见导师',' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学'),('26','梦见队伍',' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('27','梦见名人',' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('28','梦见同学',' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突'),('29','梦见英雄',' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救'),('30','梦见上司','梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。'),('31','梦见同事','梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难'),('32','梦见小偷','原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。'),('33','梦见孤儿','梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。'),('34','梦见妻子','梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。'),('35','梦见和尚','梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。'),('36','梦见军人','梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('37','梦见病人','梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('38','梦见婴儿','梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。'),('39','梦见姐姐','男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。'),('40','梦见陌生人','梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。'),('41','梦见舅舅','梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由'),('42','梦见裁缝','裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('43','梦见双胞胎','梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('44','梦见寡妇','梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。'),('45','梦见警察','警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。'),('46','梦见哑巴','梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。'),('47','梦见明星','名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。'),('48','梦见弓箭手','梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。'),('49','梦见孕妇','预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。'),('50','梦见妓女','梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('51','梦见已故的祖父母','梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('52','梦见坏人','梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。'),('53','梦见犯人','梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险'),('54','梦见帅哥','梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。'),('55','梦见日本人','梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。'),('56','梦见处女','梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。'),('57','梦见老情人','很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。'),('58','梦见第三者','梦见第三者，吉兆，预示着爱情会很甜蜜。'),('59','梦见白马王子','女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('60','梦见仇人','梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('61','梦见美女','梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。'),('62','梦见喜欢的人',''),('63','梦见外星人','梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。'),('64','梦见毛主席','梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。'),('65','梦见陆军 ','梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),('66','梦见风骚女子','梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。'),('67','梦见久未见面的人','梦见久未见面的人时，寓意着此人将会很快归来。'),('68','梦见工人','通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),('69','梦见厨师','梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。'),('70','梦见陆军','梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),('71','梦见烧香的人','梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。'),('72','梦见神秘人','梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。'),('73','梦见亿万富豪','梦见成为亿万富豪，则近日营业将会损失惨重。'),('74','梦见跛子','梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。'),('75','梦见虐待狂','虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。'),('76','梦见贵人','梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('77','梦见窃贼','梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('78','梦见赤裸的男人','梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。'),('79','梦见两性人','梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。'),('80','梦见嫂子','经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。'),('81','梦见工人','通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),('82','梦见国王','国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。'),('83','梦见老太太','梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。'),('84','梦见皇帝','梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。'),('85','梦见陌生男人','梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。'),('86','梦见老伯伯','梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。'),('87','梦见小人','梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。'),('88','梦见木匠','梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('89','梦见故人','梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。');/* MySQLReback Separation */
 /* 插入数据 `tp_dream` */
 INSERT INTO `tp_dream` VALUES ('90','梦见小朋友','梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');/* MySQLReback Separation */
 /* 创建表结构 `tp_dxsreply_info` */
 DROP TABLE IF EXISTS `tp_dxsreply_info`;/* MySQLReback Separation */ CREATE TABLE `tp_dxsreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `sharepicurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` int(11) NOT NULL,
  `wxname` varchar(255) NOT NULL,
  `tip` varchar(255) NOT NULL,
  `url` char(255) NOT NULL,
  `shareurl` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate` */
 DROP TABLE IF EXISTS `tp_estate`;/* MySQLReback Separation */ CREATE TABLE `tp_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  `slide1` char(100) NOT NULL,
  `slide2` char(100) NOT NULL,
  `slide3` char(100) NOT NULL,
  `slide4` char(100) NOT NULL,
  `slide5` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_album` */
 DROP TABLE IF EXISTS `tp_estate_album`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_expert` */
 DROP TABLE IF EXISTS `tp_estate_expert`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_housetype` */
 DROP TABLE IF EXISTS `tp_estate_housetype`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_impress` */
 DROP TABLE IF EXISTS `tp_estate_impress`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_impress_add` */
 DROP TABLE IF EXISTS `tp_estate_impress_add`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `imp_id` int(11) NOT NULL,
  `imp_user` char(20) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_nav` */
 DROP TABLE IF EXISTS `tp_estate_nav`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(35) NOT NULL,
  `pic` char(100) NOT NULL,
  `url` varchar(120) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_estate_son` */
 DROP TABLE IF EXISTS `tp_estate_son`;/* MySQLReback Separation */ CREATE TABLE `tp_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_files` */
 DROP TABLE IF EXISTS `tp_files`;/* MySQLReback Separation */ CREATE TABLE `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `wecha_id` varchar(200) NOT NULL DEFAULT '0',
  `upload_ip` varchar(100) NOT NULL DEFAULT '0.0.0.0',
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('1','twllsi1431226863','http://127.0.0.1/uploads/t/twllsi1431226863/c/7/c/2/thumb_554ed22015f94.jpg','149796','jpg','1431228960','0','0','0.0.0.0','0'),('2','twllsi1431226863','http://127.0.0.1/uploads/t/twllsi1431226863/a/c/5/d/thumb_554ed2b0b3443.jpg','74826','jpg','1431229104','0','0','0.0.0.0','0'),('3','twllsi1431226863','http://127.0.0.1/uploads/t/twllsi1431226863/1/4/d/c/thumb_554f200d75489.jpg','74826','jpg','1431248909','0','0','0.0.0.0','0'),('4','twllsi1431226863','http://119.29.116.37/uploads/t/twllsi1431226863/0/2/9/f/554f7b5b75781.xls','22016','xls','1431272283','0','0','0.0.0.0','0'),('5','twllsi1431226863','http://119.29.116.37/uploads/t/twllsi1431226863/b/6/e/2/thumb_554fd3de9b894.jpg','116941','jpg','1431294942','0','0','0.0.0.0','0'),('6','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/1/d/thumb_5559e7caa9838.jpg','149796','jpg','1431955402','0','0','0.0.0.0','0'),('7','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/d/1/c/thumb_5559e7d82a1c8.jpg','74826','jpg','1431955416','0','0','0.0.0.0','0'),('8','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/3/d/a/thumb_5559e8a1e87fe.jpg','149796','jpg','1431955618','0','0','0.0.0.0','0'),('9','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/a/6/7/thumb_5559ea55377c3.jpg','74632','jpg','1431956053','0','0','0.0.0.0','0'),('10','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/4/8/8/thumb_555a019fba897.jpg','75280','jpg','1431962015','0','0','0.0.0.0','0'),('11','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/1/f/9/thumb_555a02a32b657.jpg','75280','jpg','1431962275','0','0','0.0.0.0','0'),('12','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/b/b/d/thumb_555a04cce3fe9.jpg','12605','jpg','1431962828','0','0','0.0.0.0','0'),('13','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/e/1/b/thumb_555a051213f22.jpg','7577','jpg','1431962898','0','0','0.0.0.0','0'),('14','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/c/a/c/thumb_555a051b2702d.jpg','11452','jpg','1431962907','0','0','0.0.0.0','0'),('15','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/7/5/4/555a053a5a5e1.jpg','7577','jpg','1431962938','0','0','0.0.0.0','0'),('16','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/9/4/9/thumb_555a063e1fab1.jpg','14217','jpg','1431963198','0','0','0.0.0.0','0'),('17','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/b/6/3/thumb_555a066423529.jpg','270067','jpg','1431963236','0','0','0.0.0.0','0'),('18','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/6/8/6/thumb_555a066dc0553.jpg','447744','jpg','1431963246','0','0','0.0.0.0','0'),('19','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/6/7/c/thumb_555a0761ecaf9.jpg','20385','jpg','1431963489','0','0','0.0.0.0','0'),('20','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/1/b/7/thumb_555a07805e3b2.jpg','20385','jpg','1431963520','0','0','0.0.0.0','0'),('21','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/3/1/thumb_555a086db4dfb.jpg','15995','jpg','1431963757','0','0','0.0.0.0','0'),('22','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/2/9/thumb_555a0875bf6a4.jpg','15995','jpg','1431963765','0','0','0.0.0.0','0'),('23','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/b/d/b/thumb_555a0f420a10d.jpg','116941','jpg','1431965506','0','0','0.0.0.0','0'),('24','admin','http://weixin.blbook.cn/uploads/a/admin/8/3/4/5/555a0f74c2b29.jpg','178878','jpg','1431965556','0','0','0.0.0.0','0'),('25','admin','http://weixin.blbook.cn/uploads/a/admin/2/2/3/2/555a0f7552cb4.jpg','116941','jpg','1431965557','0','0','0.0.0.0','0'),('26','admin','http://weixin.blbook.cn/uploads/a/admin/8/5/4/1/555a0f75ee232.jpg','149796','jpg','1431965557','0','0','0.0.0.0','0'),('27','admin','http://weixin.blbook.cn/uploads/a/admin/0/c/a/c/thumb_555a1130b222d.jpg','1381053','jpg','1431966001','0','0','0.0.0.0','0'),('28','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/3/1/c/thumb_555a17d533872.jpg','135003','jpg','1431967701','0','0','0.0.0.0','0'),('29','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/e/c/6/thumb_555a1853d7db7.jpg','40595','jpg','1431967827','0','0','0.0.0.0','0'),('30','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/5/f/a/thumb_555bc65e4ba95.jpg','13295','jpg','1432077918','0','0','0.0.0.0','0'),('31','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/0/3/4/thumb_555ca2a43176f.jpg','116941','jpg','1432134308','0','0','0.0.0.0','0'),('32','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/7/a/3/555e62fa749fe.jpg','178878','jpg','1432249082','0','0','0.0.0.0','0'),('33','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/0/a/9/555e62fb255d0.jpg','116941','jpg','1432249083','0','0','0.0.0.0','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('34','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/7/a/1/555e62fbaef91.jpg','149796','jpg','1432249083','0','0','0.0.0.0','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('35','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/4/1/3/555e62fc66792.jpg','75280','jpg','1432249084','0','0','0.0.0.0','0'),('36','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/9/9/9/thumb_556da120ad92f.jpg','40595','jpg','1433248032','0','0','0.0.0.0','0'),('37','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/b/d/5/55c13db7c7c93.jpg','48126','jpg','1438727607','2','0','103.198.77.206','0'),('38','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/1/9/thumb_55c13e738637d.jpg','52600','jpg','1438727795','2','0','103.198.77.206','0'),('39','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/f/8/4/55c13f5ed63bb.jpg','52600','jpg','1438728030','2','0','103.198.77.206','0'),('40','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/5/e/3/thumb_55c14afcd3365.jpg','40357','jpg','1438731004','2','0','103.198.77.206','0'),('41','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/c/5/1/55c14b4792a98.jpg','40357','jpg','1438731079','2','0','103.198.77.206','0'),('42','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/4/1/thumb_55c1507a431cd.png','888152','png','1438732410','2','0','103.198.77.206','0'),('43','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/6/a/f/55c150e3a606d.png','888152','png','1438732515','2','0','103.198.77.206','0'),('44','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/4/a/5/55c150feb5077.jpg','53248','jpg','1438732542','2','0','103.198.77.206','0'),('45','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/1/c/9/thumb_55c1649523d8f.jpg','53003','jpg','1438737557','2','0','58.67.148.148','0'),('46','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/1/7/0/55c1650c2f519.jpg','53003','jpg','1438737676','2','0','58.67.148.148','0'),('47','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/0/2/d/thumb_55c1656b7d488.jpg','52705','jpg','1438737771','2','0','58.67.148.148','0'),('48','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/a/8/6/55c1668ae1b79.jpg','52705','jpg','1438738058','2','0','220.115.187.132','0'),('49','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/0/4/thumb_55c166d45a629.jpg','47314','jpg','1438738132','2','0','220.115.187.132','0'),('50','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/8/f/7/55c16705322e8.jpg','47314','jpg','1438738181','2','0','220.115.187.132','0'),('51','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/4/c/thumb_55c1676ec6ce5.jpg','52556','jpg','1438738286','2','0','220.115.187.132','0'),('52','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/9/3/55c167a236163.jpg','52556','jpg','1438738338','2','0','220.115.187.132','0'),('53','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/7/e/3/thumb_55c16813535fb.jpg','48451','jpg','1438738451','2','0','220.115.187.132','0'),('54','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/4/8/2/55c169140379a.jpg','48451','jpg','1438738708','2','0','58.67.148.148','0'),('55','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/d/7/4/thumb_55c1695d80caf.jpg','56255','jpg','1438738781','2','0','58.67.148.148','0'),('56','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/7/f/d/55c169b76ff11.jpg','56255','jpg','1438738871','2','0','58.67.148.148','0'),('57','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/5/d/3/thumb_55c285044c956.jpg','127672','jpg','1438811396','2','0','124.174.58.190','0'),('58','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/3/f/0/thumb_55c2856ee09d4.jpg','12507','jpg','1438811502','2','0','124.174.58.190','0'),('59','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/3/b/6/thumb_55c286e833e5d.jpg','16278','jpg','1438811880','2','0','124.174.58.190','0'),('60','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/6/4/8/thumb_55c28c2394dcf.jpg','9982','jpg','1438813219','2','0','124.174.58.190','0'),('61','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/9/0/e/thumb_55c28c5b8c17d.jpg','6674','jpg','1438813275','2','0','124.174.58.190','0'),('62','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/b/3/f/thumb_55c28d6827b89.jpg','48525','jpg','1438813544','2','0','124.174.58.190','0'),('63','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/5/4/0/thumb_55c290472c8a2.jpg','46327','jpg','1438814279','2','0','124.174.58.190','0'),('64','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/7/6/7/thumb_55c2904fc6ddb.jpg','53410','jpg','1438814287','2','0','124.174.58.190','0'),('65','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/7/2/9/thumb_55c290a3d75c7.jpg','46327','jpg','1438814371','2','0','124.174.58.190','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('66','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/8/7/1/thumb_55c292bc90610.jpg','161481','jpg','1438814908','2','0','124.174.58.190','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('67','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/a/e/a/thumb_55c292e019baf.jpg','173092','jpg','1438814944','2','0','124.174.58.190','0'),('68','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/3/f/8/thumb_55c2930a0388d.jpg','186807','jpg','1438814986','2','0','124.174.58.190','0'),('69','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/f/a/f/thumb_55c29313123d5.jpg','40488','jpg','1438814995','2','0','124.174.58.190','0'),('70','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/8/f/9/thumb_55c298babe553.jpg','10519','jpg','1438816442','2','0','124.174.58.190','0'),('71','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/e/4/1/thumb_55c298fd4a4d3.jpg','11364','jpg','1438816509','2','0','124.174.58.190','0'),('72','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/0/6/2/thumb_55c2996131862.jpg','52654','jpg','1438816609','2','0','124.174.58.190','0'),('73','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/3/f/a/0/thumb_55c299ae28cad.jpg','4196','jpg','1438816686','2','0','124.174.58.190','0'),('74','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/3/b/9/thumb_55c29ade86da2.jpg','9422','jpg','1438816990','2','0','124.174.58.190','0'),('75','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/6/4/8/55c29b2acd1bd.jpg','56255','jpg','1438817066','2','0','124.174.58.190','0'),('76','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/4/a/6/55c29b34413b5.jpg','48451','jpg','1438817076','2','0','124.174.58.190','0'),('77','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/1/d/3/55c29b482e919.jpg','52556','jpg','1438817096','2','0','124.174.58.190','0'),('78','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/4/6/a/55c29b5ddf843.jpg','47314','jpg','1438817117','2','0','124.174.58.190','0'),('79','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/9/b/4/55c29b677cd84.jpg','52705','jpg','1438817127','2','0','124.174.58.190','0'),('80','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/5/a/1/55c29b6f7f294.jpg','53003','jpg','1438817135','2','0','124.174.58.190','0'),('81','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/0/1/1/55c29b7707ab5.jpg','53248','jpg','1438817143','2','0','124.174.58.190','0'),('82','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/c/9/b/55c29b7ee0c17.jpg','40357','jpg','1438817150','2','0','124.174.58.190','0'),('83','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/7/3/6/55c29b86ce624.jpg','52600','jpg','1438817158','2','0','124.174.58.190','0'),('84','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/2/2/5/55c29b91ccc4f.jpg','48126','jpg','1438817169','2','0','124.174.58.190','0'),('85','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/f/a/6/thumb_55c29c81abedc.jpg','319885','jpg','1438817409','2','0','124.174.58.190','0'),('86','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/7/6/c/thumb_55c3580b67f58.jpg','241226','jpg','1438865419','2','0','124.174.217.196','0'),('87','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/2/9/thumb_55c3581a9aed0.jpg','312177','jpg','1438865434','2','0','124.174.217.196','0'),('88','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/4/a/8/thumb_55c358d2c680d.jpg','282265','jpg','1438865618','2','0','124.174.217.196','0'),('89','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/b/9/8/thumb_55c35e2d1be52.jpg','20845','jpg','1438866989','2','0','124.174.217.196','0'),('90','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/b/b/thumb_55c35ea31f83b.jpg','103751','jpg','1438867107','2','0','124.174.217.196','0'),('91','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/b/e/thumb_55c35f4138070.jpg','33710','jpg','1438867265','2','0','124.174.217.196','0'),('92','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/b/9/6/thumb_55c35f51445ef.jpg','35057','jpg','1438867281','2','0','124.174.217.196','0'),('93','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/1/a/thumb_55c35f59e9a7c.jpg','23999','jpg','1438867289','2','0','124.174.217.196','0'),('94','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/0/f/3/thumb_55c35f62d62e5.jpg','31892','jpg','1438867299','2','0','124.174.217.196','0'),('95','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/c/f/7/thumb_55c35fd6ac490.jpg','121817','jpg','1438867414','2','0','124.174.217.196','0'),('96','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/e/3/5/thumb_55c35fe368998.jpg','40727','jpg','1438867427','2','0','124.174.217.196','0'),('97','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/5/c/e/thumb_55c360320c1a7.jpg','298902','jpg','1438867506','2','0','124.174.217.196','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('98','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/f/3/5/thumb_55c3608d450af.jpg','155054','jpg','1438867597','2','0','124.174.217.196','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('99','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/b/5/f/thumb_55c36497affaf.jpg','154444','jpg','1438868631','2','0','124.174.217.196','0'),('100','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/1/4/e/thumb_55c36545b4777.jpg','114170','jpg','1438868805','2','0','124.174.217.196','0'),('101','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/d/a/1/thumb_55c365528bbac.jpg','247010','jpg','1438868818','2','0','124.174.217.196','0'),('102','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/4/a/4/thumb_55c365b26251a.jpg','632015','jpg','1438868914','2','0','124.174.217.196','0'),('103','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/f/6/9/thumb_55c365bdaf70b.jpg','33190','jpg','1438868925','2','0','124.174.217.196','0'),('104','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/9/6/e/55c3767657d7b.xls','11776','xls','1438873206','2','0','124.174.217.196','0'),('105','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/1/6/thumb_55c3ddca93d80.jpg','78407','jpg','1438899658','2','0','124.174.217.196','0'),('106','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/1/a/thumb_55c9e1e4f061b.jpg','265041','jpg','1439293925','2','0','124.174.252.136','0'),('107','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/c/d/0/thumb_55c9e34fce5bc.jpg','104339','jpg','1439294287','2','0','124.174.252.136','0'),('108','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/c/4/5/thumb_55c9e35ca0a81.jpg','104339','jpg','1439294300','2','0','124.174.252.136','0'),('109','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/3/c/9/thumb_55c9e5d84c300.jpg','38958','jpg','1439294936','2','0','124.174.252.136','0'),('110','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/a/2/a/55c9e61396a09.jpg','144672','jpg','1439294995','2','0','124.174.252.136','0'),('111','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/d/c/3/55c9e69aa4db8.jpg','382316','jpg','1439295130','2','0','124.174.252.136','0'),('112','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/2/4/6/55c9e6c317f9b.jpg','187133','jpg','1439295171','2','0','124.174.252.136','0'),('113','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/8/0/55c9e6ccaf9d0.jpg','156470','jpg','1439295180','2','0','124.174.252.136','0'),('114','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/2/6/a/55c9e6d137104.jpg','122923','jpg','1439295185','2','0','124.174.252.136','0'),('115','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/2/7/3/55c9e7452e12f.jpg','382316','jpg','1439295301','2','0','124.174.252.136','0'),('116','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/8/b/5/55c9e76bb9c70.jpg','141246','jpg','1439295339','2','0','124.174.252.136','0'),('117','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/d/8/9/55c9e7777f886.jpg','66741','jpg','1439295351','2','0','124.174.252.136','0'),('118','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/1/0/1/55c9e78a392ca.jpg','69674','jpg','1439295370','2','0','124.174.252.136','0'),('119','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/5/c/0/55c9e7ac7aa21.jpg','63047','jpg','1439295404','2','0','124.174.252.136','0'),('120','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/4/4/8/55c9e7fc73f41.jpg','91569','jpg','1439295484','2','0','124.174.252.136','0'),('121','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/1/f/f/55c9e7fd19403.jpg','182619','jpg','1439295485','2','0','124.174.252.136','0'),('122','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/6/f/8/55c9e7fda1b99.jpg','79103','jpg','1439295485','2','0','124.174.252.136','0'),('123','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/4/f/b/55c9e7fe3dff6.jpg','37408','jpg','1439295486','2','0','124.174.252.136','0'),('124','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/f/8/4/55c9e7fed35ab.jpg','41748','jpg','1439295486','2','0','124.174.252.136','0'),('125','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/5/5/c/55c9e7ff6946c.jpg','127091','jpg','1439295487','2','0','124.174.252.136','0'),('126','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/e/c/5/55c9e8000dee9.jpg','563257','jpg','1439295488','2','0','124.174.252.136','0'),('127','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/f/5/6/55c9e8008ac64.jpg','244872','jpg','1439295488','2','0','124.174.252.136','0'),('128','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/9/2/55c9e80154afe.jpg','961282','jpg','1439295489','2','0','124.174.252.136','0'),('129','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/4/1/e/55c9e801e8eaa.jpg','99389','jpg','1439295489','2','0','124.174.252.136','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('130','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/2/5/7/55c9e802849bf.jpg','131308','jpg','1439295490','2','0','124.174.252.136','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('131','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/3/e/0/55c9e80340a53.jpg','60779','jpg','1439295491','2','0','124.174.252.136','0'),('132','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/1/9/9/55c9e80428100.jpg','88989','jpg','1439295492','2','0','124.174.252.136','0'),('133','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/d/9/d/55c9e804bc1a8.jpg','594323','jpg','1439295492','2','0','124.174.252.136','0'),('134','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/b/8/f/55c9e8054e2ae.jpg','134443','jpg','1439295493','2','0','124.174.252.136','0'),('135','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/b/a/55c9e805d479c.jpg','33016','jpg','1439295493','2','0','124.174.252.136','0'),('136','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/e/3/b/55c9e8066ec3c.jpg','93214','jpg','1439295494','2','0','124.174.252.136','0'),('137','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/4/5/55c9e807106f4.jpg','251015','jpg','1439295495','2','0','124.174.252.136','0'),('138','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/0/4/0/55c9e8079ac02.jpg','604577','jpg','1439295495','2','0','124.174.252.136','0'),('139','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/b/e/d/55c9e80830cce.jpg','184202','jpg','1439295496','2','0','124.174.252.136','0'),('140','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/f/6/5/55c9e808be65d.jpg','118905','jpg','1439295496','2','0','124.174.252.136','0'),('141','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/3/2/9/55c9e8094bf21.jpg','35015','jpg','1439295497','2','0','124.174.252.136','0'),('142','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/d/8/9/55c9e809eaab5.jpg','490381','jpg','1439295497','2','0','124.174.252.136','0'),('143','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/2/9/8/55c9e80a7fc50.jpg','440490','jpg','1439295498','2','0','124.174.252.136','0'),('144','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/4/f/55c9e80b16940.jpg','502260','jpg','1439295499','2','0','124.174.252.136','0'),('145','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/8/8/9/55c9f0a272e4b.png','400455','png','1439297698','2','0','124.174.252.136','0'),('146','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/2/7/9/55c9f0a319a74.png','301870','png','1439297699','2','0','124.174.252.136','0'),('147','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/8/d/8/55caa56e28977.jpg','31086','jpg','1439343982','2','0','58.62.68.6','0'),('148','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/b/4/0/thumb_55cac2bf6e9f5.png','18202','png','1439351487','2','0','58.62.68.58','0'),('149','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/a/1/2/thumb_55cac2c8a1d46.png','235541','png','1439351496','2','0','58.62.68.58','0'),('150','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/b/0/1/55cac2d8b5581.png','235541','png','1439351512','2','0','58.62.68.58','0'),('151','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/1/8/55cac2e7a93f6.png','527092','png','1439351527','2','0','58.62.68.58','0'),('152','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/4/2/5/55cac2f3850c3.png','49217','png','1439351539','2','0','58.62.68.58','0'),('153','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/a/f/8/55cac30a70a1d.png','430588','png','1439351562','2','0','58.62.68.58','0'),('154','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/4/9/9/55cac316e4047.png','412349','png','1439351574','2','0','58.62.68.58','0'),('155','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/b/a/4/55cac323329dd.png','495357','png','1439351587','2','0','58.62.68.58','0'),('156','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/f/5/6/55cac33b5e963.png','431207','png','1439351611','2','0','58.62.68.58','0'),('157','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/d/6/b/55cac34bd5250.png','237752','png','1439351627','2','0','58.62.68.58','0'),('158','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/c/0/a/55cac35562201.png','486261','png','1439351637','2','0','58.62.68.58','0'),('159','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/8/7/0/55cac360efb0f.png','429537','png','1439351648','2','0','58.62.68.58','0'),('160','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/6/4/f/55cac36bbd5b4.png','442928','png','1439351659','2','0','58.62.68.58','0'),('161','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/9/f/55cac379453d2.png','261461','png','1439351673','2','0','58.62.68.58','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('162','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/9/9/2/55cac384aa024.png','302153','png','1439351684','2','0','58.62.68.58','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('163','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/b/7/3/55cac38e77881.png','401863','png','1439351694','2','0','58.62.68.58','0'),('164','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/3/1/8/55cac39c5541a.png','245224','png','1439351708','2','0','58.62.68.58','0'),('165','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/c/7/6/55cac3a7ea4fd.png','301870','png','1439351719','2','0','58.62.68.58','0'),('166','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/3/9/4/55cac3b1ea520.png','400455','png','1439351729','2','0','58.62.68.58','0'),('167','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/7/4/a/55cac3bdae2a7.png','413479','png','1439351741','2','0','58.62.68.58','0'),('168','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/3/d/1/55cac3cab4494.png','1056696','png','1439351754','2','0','58.62.68.58','0'),('169','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/d/e/b/55cac3d5428db.png','535173','png','1439351765','2','0','58.62.68.58','0'),('170','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/9/5/4/55cac3e191b07.png','591807','png','1439351777','2','0','58.62.68.58','0'),('171','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/8/c/2/55cac3eb44e59.png','466226','png','1439351787','2','0','58.62.68.58','0'),('172','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/9/c/9/55cac3f46b966.png','296091','png','1439351796','2','0','58.62.68.58','0'),('173','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/5/f/f/55cac3fd4987d.png','485116','png','1439351805','2','0','58.62.68.58','0'),('174','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/d/5/5/55cac407ea1de.png','495602','png','1439351815','2','0','58.62.68.58','0'),('175','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/8/1/2/55cac412e1710.png','482706','png','1439351826','2','0','58.62.68.58','0'),('176','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/6/5/a/55cac41c4c692.png','578708','png','1439351836','2','0','58.62.68.58','0'),('177','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/9/1/b/55cac42697ffc.png','490699','png','1439351846','2','0','58.62.68.58','0'),('178','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/c/8/6/55cac4303cb73.png','446830','png','1439351856','2','0','58.62.68.58','0'),('179','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/9/3/d/55cac43971ff9.png','264290','png','1439351865','2','0','58.62.68.58','0'),('180','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/d/c/1/55cac4415ec98.png','385452','png','1439351873','2','0','58.62.68.58','0'),('181','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/d/e/7/55cac44a9fdb7.png','538324','png','1439351882','2','0','58.62.68.58','0'),('182','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/8/e/2/55cac453b42ed.png','469184','png','1439351891','2','0','58.62.68.58','0'),('183','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/2/b/f/55cac45d59384.png','565696','png','1439351901','2','0','58.62.68.58','0'),('184','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/5/d/0/55cac46758e27.png','255083','png','1439351911','2','0','58.62.68.58','0'),('185','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/a/0/b/55cac47007c24.png','349450','png','1439351920','2','0','58.62.68.58','0'),('186','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/d/d/5/55cac4780a724.png','470332','png','1439351928','2','0','58.62.68.58','0'),('187','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/7/b/4/55cac48049b89.png','394928','png','1439351936','2','0','58.62.68.58','0'),('188','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/5/0/9/55cac487c8f6e.png','200784','png','1439351943','2','0','58.62.68.58','0'),('189','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/6/e/55cac48f67063.png','452746','png','1439351951','2','0','58.62.68.58','0'),('190','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/5/6/6/55cac497b1449.png','486309','png','1439351959','2','0','58.62.68.58','0'),('191','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/2/6/1/55cac4a1631c9.png','560974','png','1439351969','2','0','58.62.68.58','0'),('192','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/a/a/2/55cac4a99a872.png','551277','png','1439351977','2','0','58.62.68.58','0'),('193','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/2/d/8/55cac4b1b5043.png','410494','png','1439351985','2','0','58.62.68.58','0'),('194','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/a/6/7/55cac4ba4cc8c.png','595591','png','1439351994','2','0','58.62.68.58','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('195','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/d/3/b/55cac4c3737ff.png','653213','png','1439352003','2','0','58.62.68.58','0');/* MySQLReback Separation */
 /* 插入数据 `tp_files` */
 INSERT INTO `tp_files` VALUES ('196','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/c/8/5/55cac4cc3e518.png','376509','png','1439352012','2','0','58.62.68.58','0'),('197','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/9/1/2/55cac4d3e7d2e.png','382528','png','1439352019','2','0','58.62.68.58','0'),('198','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/1/d/4/55cac4de3014d.png','542851','png','1439352030','2','0','58.62.68.58','0'),('199','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/3/4/d/d/55cac4e6e55d1.png','547165','png','1439352038','2','0','58.62.68.58','0'),('200','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/9/6/3/55cac4eec76d4.png','530237','png','1439352046','2','0','58.62.68.58','0'),('201','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/0/7/8/55cac4f7a167c.png','229943','png','1439352055','2','0','58.62.68.58','0'),('202','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/f/c/55cac500df832.png','545676','png','1439352064','2','0','58.62.68.58','0'),('203','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/d/6/4/55cac50908b13.png','465378','png','1439352073','2','0','58.62.68.58','0'),('204','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/2/b/1/55cac511130bc.png','463525','png','1439352081','2','0','58.62.68.58','0'),('205','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/4/f/2/55cac51a44a80.png','515535','png','1439352090','2','0','58.62.68.58','0'),('206','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/5/9/6/55cac5238023c.png','418860','png','1439352099','2','0','58.62.68.58','0'),('207','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/a/0/55cac52c4a3bd.png','415773','png','1439352108','2','0','58.62.68.58','0'),('208','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/7/b/4/55cac536d6d23.png','458070','png','1439352118','2','0','58.62.68.58','0'),('209','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/7/d/0/55cac544b5d1a.png','766076','png','1439352132','2','0','58.62.68.58','0'),('210','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/3/5/f/b/55cac54f5c453.png','18202','png','1439352143','2','0','58.62.68.58','0'),('211','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/f/d/3/55cad321d62b0.jpg','834864','jpg','1439355681','2','0','113.66.164.52','0'),('212','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/1/d/8/55cad4a3b2c57.jpg','82427','jpg','1439356067','2','0','113.66.164.52','0'),('213','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/d/5/5/55caebb9417a4.jpg','219421','jpg','1439361977','2','0','113.66.164.52','0'),('214','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/a/3/5/55caecbdcfd81.jpg','241058','jpg','1439362237','2','0','113.66.164.52','0'),('215','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/d/3/6/55caeccd76896.jpg','245624','jpg','1439362253','2','0','113.66.164.52','0'),('216','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/2/e/a/55caf54d5364a.jpg','40595','jpg','1439364429','2','0','58.62.68.6','0'),('217','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/e/1/1/thumb_55cb03fbb2e7f.jpg','21760','jpg','1439368187','2','0','58.62.68.58','0'),('218','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/9/7/e/55cb084f846d2.jpg','41935','jpg','1439369295','2','0','58.62.68.58','0'),('219','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/8/9/e/55cb41b1c24f3.jpg','41694','jpg','1439383985','2','0','218.20.201.244','0'),('220','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/7/8/8/55cc12cf761fe.jpg','42521','jpg','1439437519','2','0','58.62.68.6','0'),('221','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/6/c/7/thumb_55cc9c820f346.png','90926','png','1439472770','2','0','119.129.100.118','0'),('222','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/b/5/d/thumb_55cca33c7baec.png','90187','png','1439474492','2','0','119.129.100.118','0'),('223','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/e/c/f/55cca399af433.png','766076','png','1439474585','2','0','119.129.100.118','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_flash` */
 DROP TABLE IF EXISTS `tp_flash`;/* MySQLReback Separation */ CREATE TABLE `tp_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  `did` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '子分类ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_flash` */
 INSERT INTO `tp_flash` VALUES ('1','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/3/d/a/thumb_5559e8a1e87fe.jpg','','博览书店','2','0','0','0'),('2','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/0/1/6/thumb_55c3ddca93d80.jpg','{siteUrl}/index.php?g=Wap&amp;m=Forum&amp;a=index&amp;token=twllsi1431226863&amp;wecha_id={wechat_id}','吐槽','1','0','0','0'),('3','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/c/4/5/thumb_55c9e35ca0a81.jpg','{changjingUrl}/index.php?m=Wap&amp;c=view&amp;a=index&amp;tid=48473','查理九世签售会','1','0','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_forum_comment` */
 DROP TABLE IF EXISTS `tp_forum_comment`;/* MySQLReback Separation */ CREATE TABLE `tp_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_forum_config` */
 DROP TABLE IF EXISTS `tp_forum_config`;/* MySQLReback Separation */ CREATE TABLE `tp_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  `notice_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_forum_config` */
 INSERT INTO `tp_forum_config` VALUES ('2','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/1/a/thumb_55c9e1e4f061b.jpg','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/e/4/1/thumb_55c298fd4a4d3.jpg','0','支持博览书店，欢迎各位的意见和建议','0','31','博览书店吐槽群','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/8/f/9/thumb_55c298babe553.jpg','twllsi1431226863','1','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_forum_message` */
 DROP TABLE IF EXISTS `tp_forum_message`;/* MySQLReback Separation */ CREATE TABLE `tp_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_forum_topics` */
 DROP TABLE IF EXISTS `tp_forum_topics`;/* MySQLReback Separation */ CREATE TABLE `tp_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(10000) DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_forum_topics` */
 INSERT INTO `tp_forum_topics` VALUES ('1','博览读书会分享','今天我在万达博览与大家完成了读书分享，感觉非常不错！&lt;img src=&quot;./tpl/static/forum/images/13.gif&quot; data-innerhtml=&quot;/::D&quot;&gt;&lt;/img&gt;','','','','1431966029','','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','twllsi1431226863','http://weixin.blbook.cn/uploads/a/admin/0/c/a/c/thumb_555a1130b222d.jpg','1'),('2','博览书店不能退商品！','博览书店在购买商品或者图书后，如果突然反悔有发票也不能够退钱！连换物品不行！','','','','1438878712','','onHRmuNgqpxURQCC-QS7NCR750oY','小奕','twllsi1431226863','','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_funclass` */
 DROP TABLE IF EXISTS `tp_funclass`;/* MySQLReback Separation */ CREATE TABLE `tp_funclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_function` */
 DROP TABLE IF EXISTS `tp_function`;/* MySQLReback Separation */ CREATE TABLE `tp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_function` */
 INSERT INTO `tp_function` VALUES ('1','1','0','天气查询','tianqi','天气查询服务:例  城市名+天气','1','1'),('2','1','0','糗事','qiushi','糗事　直接发送糗事','1','1'),('3','1','0','计算器','jishuan','计算器使用方法　例：计算50-50　，计算100*100','1','1'),('4','4','0','朗读','langdu','朗读＋关键词　例：朗读pigcms多用户营销系统','1','1'),('5','3','0','健康指数查询','jiankang','健康指数查询　健康＋高，＋重　例：健康170,65','1','1'),('6','1','0','快递查询','kuaidi','快递＋快递名＋快递号　例：快递顺丰117215889174','1','1'),('7','1','0','笑话','xiaohua','笑话　直接发送笑话','1','1'),('8','2','0','藏头诗','changtoushi',' 藏头诗+关键词　例：藏头诗我爱你','1','1'),('9','1','0','陪聊','peiliao','聊天　直接输入聊天关键词即可','1','1'),('10','1','0','聊天','liaotian','聊天　直接输入聊天关键词即可','1','1'),('11','3','0','周公解梦','mengjian','周公解梦　梦见+关键词　例如:梦见父母','1','1'),('12','2','0','语音翻译','yuyinfanyi','翻译＋关键词 例：翻译你好','1','1'),('13','2','0','火车查询','huoche','火车查询　火车＋城市＋目的地　例火车上海南京','1','1'),('14','2','0','公交查询','gongjiao','公交＋城市＋公交编号　例：上海公交774','1','1'),('15','2','0','身份证查询','shenfenzheng','身份证＋号码　　例：身份证342423198803015568','1','1'),('16','1','0','手机归属地查询','shouji','手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13856017160','1','1'),('17','3','0','音乐查询','yinle','音乐＋音乐名  例：音乐爱你一万年','1','1'),('18','1','0','附近周边信息查询','fujin','附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店','1','1'),('19','4','0','公众小秘书','Paper','公众小秘书','2','1'),('20','3','0','淘宝店铺','taobao','输入淘宝＋关键词　即可访问淘宝3g手机店铺','2','1'),('21','4','0','会员资料管理','userinfo','会员资料管理　输入会员　即可参与','2','1'),('22','1','0','翻译','fanyi','翻译＋关键词 例：翻译你好','1','1'),('23','4','0','第三方接口','api','第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，','1','1'),('24','1','0','姓名算命','suanming','姓名算命 算命＋关键词　例：算命李白','1','1'),('25','3','0','百度百科','baike','百度百科　使用方法：百科＋关键词　例：百科北京','2','1'),('26','2','0','彩票查询','caipiao','回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球','1','1'),('27','4','0','照片墙','Zhaopianwall','活动开启后，在聊天窗口中直接发送图片，即可图片上墙！','2','1'),('28','4','0','RippleOS','RippleOS','RippleOS路由器','1','1'),('29','1','0','3G首页','shouye','输入首页,访问微3g 网站','1','1'),('30','1','0','DIY宣传页','adma','DIY宣传页,用于创建二维码宣传页权限开启','1','1'),('31','4','0','会员卡','huiyuanka','尊贵享受vip会员卡,回复会员卡即可领取会员卡','1','1'),('119','1','0','微名片','Person_card','','1','1'),('33','4','0','账号审核','usernameCheck','正确的审核帐号方式是：审核+帐号','2','1'),('34','1','0','歌词查询','geci','歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风','1','1'),('35','2','0','域名whois查询','whois','域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等
 例：域名pigcms.com','1','1'),('36','1','0','通用预订系统','host_kev','通用预订系统 可用于酒店预订，ktv订房，旅游预订等。','2','1'),('37','4','0','自定义表单','diyform','自定义表单(用于报名，预约,留言)等','1','1'),('38','2','0','无线网络订餐','dx','无线网络订餐','1','1'),('39','2','0','在线商城','shop','在线商城,购买系统','1','1'),('40','2','0','在线团购系统','etuan','在线团购系统','1','1'),('41','4','0','自定义菜单','diymen_set','自定义菜单,一键生成轻app','1','1'),('42','4','0','幸运大转盘','choujiang','输入抽奖　即可参加幸运大转盘抽奖活动','2','1'),('43','4','0','抽奖','lottery','抽奖,输入抽奖即可参加幸运大转盘','1','1'),('44','4','0','刮刮卡','gua2','刮刮卡抽奖活动','1','1'),('45','4','0','全景','panorama','','1','1'),('46','4','0','婚庆喜帖','Wedding','','2','1'),('47','4','0','投票','Vote','','2','1'),('48','4','0','房产','estate','','2','1'),('49','4','0','3G相册','album','','1','1'),('50','4','0','砸金蛋','GoldenEgg','','2','1'),('51','4','0','水果机','LuckyFruit','','2','1'),('52','4','0','留言板','messageboard','','2','1'),('53','4','0','微汽车','car','','2','1'),('54','4','0','微信墙','wall','','1','1'),('55','4','0','摇一摇','shake','','1','1'),('56','4','0','微论坛','forum','','1','1'),('57','4','0','微医疗','medical','','1','1'),('58','4','0','群发消息','groupmessage','','1','1');/* MySQLReback Separation */
 /* 插入数据 `tp_function` */
 INSERT INTO `tp_function` VALUES ('59','4','0','分享统计','share','','1','1');/* MySQLReback Separation */
 /* 插入数据 `tp_function` */
 INSERT INTO `tp_function` VALUES ('60','4','0','酒店宾馆','hotel','','1','1'),('61','4','0','微教育','school','','1','1'),('62','4','0','微场景','Live','','2','1'),('63','1','0','微街景','Jiejing','','1','1'),('64','1','0','中秋吃月饼','Autumn','','1','1'),('65','1','0','摁死小情侣游戏','Lovers','回复 “小情侣” 即可参加','1','1'),('66','1','0','七夕走鹊桥','AppleGame','回复 “走鹊桥” 即可参与','1','1'),('67','1','0','微调研','Research','','1','1'),('68','1','0','一战到底','Problem','','1','1'),('69','1','0','微信签到','Signin','','1','1'),('70','1','0','现场活动','Scene','','1','1'),('71','1','0','微商圈','Market','','1','1'),('72','1','0','微预约','Custom','','1','1'),('73','1','0','祝福贺卡','Greeting_card','','1','1'),('74','1','0','微美容','beauty','','1','1'),('75','1','0','微健身','fitness','','1','1'),('76','1','0','微政务','gover','','1','1'),('77','1','0','微食品','food','','1','1'),('78','1','0','微旅游','travel','','1','1'),('79','1','0','微花店','flower','','1','1'),('80','1','0','微物业','property','','1','1'),('81','1','0','微KTV','ktv','','1','1'),('82','1','0','微酒吧','bar','','1','1'),('83','1','0','微装修','fitment','','1','1'),('84','1','0','微婚庆','buswedd','','1','1'),('85','1','0','微宠物','affections','','1','1'),('86','1','0','微家政','housekeeper','','1','1'),('87','1','0','微租赁','lease','','1','1'),('88','1','0','微游戏','Gamecenter','','1','1'),('89','1','0','百度直达号','Zhida','','1','1'),('90','1','0','微信红包','Red_packet','','1','1'),('91','1','0','惩罚台','Punish','','1','1'),('92','1','0','邀请函','Invite','','1','1'),('93','1','0','拆礼盒','Autumns','','1','1'),('94','1','0','高级模板','AdvanceTpl','','1','1'),('95','1','0','群发消息','Message','','1','1'),('96','1','0','分享助力','Helping','','1','1'),('97','1','0','人气冲榜','Popularity','','1','1'),('98','1','0','幸运九宫格','Jiugong','幸运九宫格','1','1'),('99','1','0','微招聘','Zhaopin','微招聘主要为求职者和企业搭建沟通桥梁','1','1'),('100','1','0','全民经纪人','MicroBroker','全民经纪人','1','1'),('101','1','0','一元夺宝','Unitary','只需一元就能拿走大奖','1','1'),('102','1','0','微众筹','Crowdfunding','实现梦想，一起奋斗','1','1'),('103','1','0','微砍价','Bargain','一起来砍价','1','1'),('104','1','0','微外卖','DishOut','新版外卖','1','1'),('105','1','0','手机站','Phone','手机独立网站','1','1'),('106','1','0','微场景','SeniorScene','高级场景','1','1'),('107','1','0','支付宝服务窗','Fuwu','','1','1'),('108','1','0','微信公众号','Weixin','','1','1'),('109','1','0','合体红包','Hongbao','合体红包','1','1'),('110','1','0','微贺卡','Card','新版微贺卡，更多贺卡等你拿','1','1'),('111','1','0','微秒杀','Seckill','微信秒杀活动，看谁手快','1','1'),('112','1','0','微客服','Service','微信客服功能','1','1'),('113','1','0','微召唤','Weizhaohuan','召唤好友一起来玩','1','1'),('114','1','0','图文投票','Voteimg','','1','1'),('115','1','0','摇一摇 周边','Shakearound','','1','1'),('116','1','0','微店系统','Micrstore','','1','1'),('117','1','0','降价拍','Cutprice','','1','1'),('118','1','0','人工客服','ServiceUser','','1','1'),('120','1','0','微排号','Numqueue','','1','1'),('121','1','0','H5动态模板','CustomTmpls','H5动态自定义模板','1','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_funintro` */
 DROP TABLE IF EXISTS `tp_funintro`;/* MySQLReback Separation */ CREATE TABLE `tp_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `img1` char(200) NOT NULL,
  `img2` char(200) NOT NULL,
  `img3` char(200) NOT NULL,
  `img4` char(200) NOT NULL,
  `img5` char(200) NOT NULL,
  `img6` char(200) NOT NULL,
  `img7` char(200) NOT NULL,
  `img8` char(200) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  `name4` varchar(200) NOT NULL,
  `name5` varchar(200) NOT NULL,
  `name6` varchar(200) NOT NULL,
  `name7` varchar(200) NOT NULL,
  `name8` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `classid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_fuwuuser` */
 DROP TABLE IF EXISTS `tp_fuwuuser`;/* MySQLReback Separation */ CREATE TABLE `tp_fuwuuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `user_id` varchar(512) DEFAULT NULL COMMENT '用户的userId',
  `user_type_value` int(1) DEFAULT NULL COMMENT '用户类型（1/2） 1代表公司账户； 2代表个人账户',
  `user_status` varchar(1) DEFAULT NULL COMMENT '用户状态（Q/T/B/W）。 Q代表快速注册用户；T代表已认证用户；B代表被冻结账户；W代表已注册，未激活的账户',
  `firm_name` varchar(100) DEFAULT NULL COMMENT '公司名称（用户类型是公司类型时公司名称才有此字段）。',
  `real_name` varchar(100) DEFAULT NULL COMMENT '用户的真实姓名。',
  `avatar` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `cert_no` varchar(100) DEFAULT NULL COMMENT '证件号码',
  `gender` varchar(1) DEFAULT NULL COMMENT '性别（F：女性；M：男性）',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码。',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码。',
  `is_certified` varchar(1) DEFAULT NULL COMMENT '是否通过实名认证。T是通过 F是没有实名认证',
  `is_student_certified` varchar(1) DEFAULT NULL COMMENT '是否是学生。T表示是学生，F表示不是学生',
  `is_bank_auth` varchar(1) DEFAULT NULL COMMENT 'T为是银行卡认证，F为非银行卡认证。',
  `is_id_auth` varchar(1) DEFAULT NULL COMMENT 'T为是身份证认证，F为非身份证认证。',
  `is_mobile_auth` varchar(1) DEFAULT NULL COMMENT 'T为是手机认证，F为非手机认证。',
  `is_licence_auth` varchar(1) DEFAULT NULL COMMENT 'T为通过营业执照认证，F为没有通过',
  `cert_type_value` int(3) DEFAULT NULL COMMENT '0:身份证；1:护照；2:军官证；3:士兵证；4:回乡证；5:临时身份证；6:户口簿；7:警官证；8:台胞证；9:营业执照；10其它证件',
  `province` varchar(20) DEFAULT NULL COMMENT '省份名称。',
  `city` varchar(20) DEFAULT NULL COMMENT '市名称。',
  `area` varchar(20) DEFAULT NULL COMMENT '区县名称。',
  `address` varchar(200) DEFAULT NULL COMMENT '详细地址。',
  `zip` int(20) DEFAULT NULL COMMENT '邮政编码。',
  `address_code` int(100) DEFAULT NULL COMMENT '区域编码，暂时不返回值',
  `type` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_game_config` */
 DROP TABLE IF EXISTS `tp_game_config`;/* MySQLReback Separation */ CREATE TABLE `tp_game_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `wxid` varchar(40) NOT NULL DEFAULT '',
  `wxname` varchar(50) NOT NULL DEFAULT '',
  `wxlogo` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `key` varchar(40) NOT NULL DEFAULT '',
  `attentionText` char(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_game_config` */
 INSERT INTO `tp_game_config` VALUES ('2','twllsi1431226863','gh_a4dcb057a779','博览书店','./tpl/User/default/common/images/portrait.jpg','','41241','82ca5aee84fbe2e39dad2a2fa0576da0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_game_records` */
 DROP TABLE IF EXISTS `tp_game_records`;/* MySQLReback Separation */ CREATE TABLE `tp_game_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `score` float(7,2) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_games` */
 DROP TABLE IF EXISTS `tp_games`;/* MySQLReback Separation */ CREATE TABLE `tp_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `gameid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_gametreply_info` */
 DROP TABLE IF EXISTS `tp_gametreply_info`;/* MySQLReback Separation */ CREATE TABLE `tp_gametreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_gamettreply_info` */
 DROP TABLE IF EXISTS `tp_gamettreply_info`;/* MySQLReback Separation */ CREATE TABLE `tp_gamettreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_greeting_card` */
 DROP TABLE IF EXISTS `tp_greeting_card`;/* MySQLReback Separation */ CREATE TABLE `tp_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_helping` */
 DROP TABLE IF EXISTS `tp_helping`;/* MySQLReback Separation */ CREATE TABLE `tp_helping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `info` text NOT NULL,
  `reply_pic` varchar(250) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `add_time` char(15) NOT NULL DEFAULT '',
  `is_open` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_score` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `minscore` char(10) NOT NULL DEFAULT '1',
  `maxscore` char(10) NOT NULL DEFAULT '',
  `frist` varchar(20) NOT NULL DEFAULT '',
  `fristpic` varchar(200) NOT NULL DEFAULT '',
  `fristnums` varchar(10) NOT NULL DEFAULT '',
  `fristdoc` varchar(20) NOT NULL DEFAULT '',
  `second` varchar(20) NOT NULL DEFAULT '',
  `secondpic` varchar(200) NOT NULL DEFAULT '',
  `secondnums` varchar(10) NOT NULL DEFAULT '',
  `seconddoc` varchar(20) NOT NULL DEFAULT '',
  `third` varchar(20) NOT NULL DEFAULT '',
  `thirdpic` varchar(200) NOT NULL DEFAULT '',
  `thirdnums` varchar(10) NOT NULL DEFAULT '',
  `thirddoc` varchar(20) NOT NULL DEFAULT '',
  `four` varchar(20) NOT NULL DEFAULT '',
  `fourpic` varchar(200) NOT NULL DEFAULT '',
  `fournums` varchar(10) NOT NULL DEFAULT '',
  `fourdoc` varchar(20) NOT NULL DEFAULT '',
  `five` varchar(20) NOT NULL DEFAULT '',
  `fivepic` varchar(200) NOT NULL DEFAULT '',
  `fivenums` varchar(10) NOT NULL DEFAULT '',
  `fivedoc` varchar(20) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `is_newtp` int(11) NOT NULL DEFAULT '0',
  `is_sms` int(11) NOT NULL DEFAULT '0',
  `fxtitle` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `is_open` (`is_open`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_helping` */
 INSERT INTO `tp_helping` VALUES ('16','twllsi1431226863','博览书店微助力，助你成功','微助力','分享拿奖品，赚积分！','规则就是分享拿奖品，赚积分！','http://s.404.cn/tpl/static/helping/images/default.jpg','http://weixin.blbook.cn/tpl/static/helping/images/default.jpg','1432224000','1434902400','1432250973','1','1','1','1','','1','10','从0到1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/5/f/a/thumb_555bc65e4ba95.jpg','1','第一名奖励','','','','','','','','','','','','','','','','','0','0','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_helping_news` */
 DROP TABLE IF EXISTS `tp_helping_news`;/* MySQLReback Separation */ CREATE TABLE `tp_helping_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `imgurl` varchar(200) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_helping_prize` */
 DROP TABLE IF EXISTS `tp_helping_prize`;/* MySQLReback Separation */ CREATE TABLE `tp_helping_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `imgurl` varchar(200) NOT NULL,
  `starttime` int(11) NOT NULL,
  `stoptime` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_helping_record` */
 DROP TABLE IF EXISTS `tp_helping_record`;/* MySQLReback Separation */ CREATE TABLE `tp_helping_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(35) NOT NULL,
  `pid` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `addtime` char(35) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `score` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_helping_record` */
 INSERT INTO `tp_helping_record` VALUES ('167','twllsi1431226863','16','a9df79693030a934','1432346677','onHRmuD5eAyABVzl3tWBJKXtPjjs','6');/* MySQLReback Separation */
 /* 创建表结构 `tp_helping_user` */
 DROP TABLE IF EXISTS `tp_helping_user`;/* MySQLReback Separation */ CREATE TABLE `tp_helping_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `help_count` int(11) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_key` char(40) NOT NULL,
  `help_score` int(10) NOT NULL,
  `help_num` int(100) NOT NULL,
  `help_rank` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `share_num` int(11) NOT NULL DEFAULT '0',
  `is_join2` int(11) NOT NULL DEFAULT '1',
  `is_join` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `pid` (`pid`),
  KEY `share_key` (`share_key`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;/* MySQLReback Separation */
 /* 插入数据 `tp_helping_user` */
 INSERT INTO `tp_helping_user` VALUES ('243','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','16','2','1432251119','a9df79693030a934','6','0','0','','','0','1','0'),('244','twllsi1431226863','onHRmuD5eAyABVzl3tWBJKXtPjjs','16','1','1432346676','d610583d5fc8c3c5','0','0','0','','','0','1','0'),('245','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','16','1','1432619587','0796756c6e124185','0','0','0','','','0','1','0'),('246','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','16','1','1434782869','6a392010f44c6718','0','0','0','','','0','1','0'),('247','twllsi1431226863','onHRmuPJnS3ptOC8sbtYbAcXWYrg','16','1','1435199780','c26caa3326420eff','0','0','0','','','0','1','0'),('248','twllsi1431226863','onHRmuHOMziAIGbnqE5mz1RSpef0','16','1','1437110845','fb01269e40def458','0','0','0','','','0','1','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_home` */
 DROP TABLE IF EXISTS `tp_home`;/* MySQLReback Separation */ CREATE TABLE `tp_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `gzhurl` char(255) DEFAULT NULL COMMENT '公众号链接地址',
  `start` int(11) NOT NULL COMMENT '开场动画',
  `stpic` varchar(200) NOT NULL COMMENT '开场动画图片',
  `switch` int(11) NOT NULL DEFAULT '0',
  `pinglun` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启微站全站评论',
  `uyanid` varchar(50) NOT NULL DEFAULT '' COMMENT '友言官网注册的uid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_home` */
 INSERT INTO `tp_home` VALUES ('2','twllsi1431226863','博览书店','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/1/d/thumb_5559e7caa9838.jpg','','','博览书店欢迎你','','#FF0000','© 2006-2015 博览书店版权所有','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/d/1/c/thumb_5559e7d82a1c8.jpg','8','0','','0','http://s.404.cn/tpl/static/home/kcdhbj.jpg','0','1','');/* MySQLReback Separation */
 /* 创建表结构 `tp_home_background` */
 DROP TABLE IF EXISTS `tp_home_background`;/* MySQLReback Separation */ CREATE TABLE `tp_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_hongbao` */
 DROP TABLE IF EXISTS `tp_hongbao`;/* MySQLReback Separation */ CREATE TABLE `tp_hongbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `keyword` char(30) NOT NULL,
  `action_name` char(40) NOT NULL COMMENT '红包活动名称',
  `sharetimes` int(10) NOT NULL COMMENT '最小合体次数',
  `min_money` float(6,2) NOT NULL COMMENT '随机数最小值',
  `max_money` float(6,2) NOT NULL COMMENT '随机数最大值',
  `total_money` float(6,2) DEFAULT NULL,
  `start_time` char(11) NOT NULL COMMENT '活动开始时间',
  `end_time` char(11) NOT NULL COMMENT '活动结束时间',
  `need_phone` enum('1','2') NOT NULL COMMENT '是否需要注册手机号',
  `need_follow` enum('1','2') NOT NULL COMMENT '是否需要关注',
  `action_desc` varchar(256) NOT NULL COMMENT '活动介绍',
  `reply_pic` varchar(100) NOT NULL,
  `status` enum('1','2') NOT NULL COMMENT '是否开启',
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `remind_word` varchar(255) NOT NULL,
  `remind_link` varchar(255) NOT NULL,
  `getway` tinyint(1) NOT NULL DEFAULT '1',
  `timeline_hide` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_hongbao_grabber` */
 DROP TABLE IF EXISTS `tp_hongbao_grabber`;/* MySQLReback Separation */ CREATE TABLE `tp_hongbao_grabber` (
  `grabber_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '抢到的红包id',
  `money` float(6,2) unsigned NOT NULL COMMENT '抢到的红包金额',
  `grabber_nickname` varchar(20) DEFAULT '' COMMENT '抢红包者昵称',
  `grabber_headimgurl` varchar(255) DEFAULT NULL COMMENT '抢红包者头像',
  `grabber_shareid` varchar(100) DEFAULT '' COMMENT '抢红包者分享的key',
  `grabber_wechaid` varchar(100) DEFAULT '' COMMENT '抢红包者wcha_id',
  `grabber_sex` enum('0','1') DEFAULT '0' COMMENT '抢红包者性别',
  `grabber_tel` varchar(20) DEFAULT '' COMMENT '抢红包者电话',
  `grabber_qq` varchar(20) DEFAULT '' COMMENT '抢红包者QQ',
  `grabber_address` varchar(50) DEFAULT '' COMMENT '抢红包者address',
  `grabber_province` varchar(50) DEFAULT '' COMMENT '抢红包者province',
  `grabber_city` varchar(50) DEFAULT '' COMMENT '抢红包者city',
  `share_money` int(11) DEFAULT '0' COMMENT '抢红包者合体奖励的金额',
  `share_content` int(11) DEFAULT '0' COMMENT '抢红包者分享语',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  `grabber_time` int(11) NOT NULL,
  `isgrabbed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grabber_id`),
  KEY `hongbao_id` (`hongbao_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_hongbao_share` */
 DROP TABLE IF EXISTS `tp_hongbao_share`;/* MySQLReback Separation */ CREATE TABLE `tp_hongbao_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `hongbao_id` int(11) NOT NULL COMMENT '红包id',
  `add_money` float(6,2) unsigned NOT NULL COMMENT '为合体者贡献的金额',
  `share_key` varchar(50) NOT NULL COMMENT '分享code',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '分享者昵称',
  `share_pic` varchar(255) DEFAULT '' COMMENT '分享者头像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '是否进入分享页',
  `share_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享者openid',
  PRIMARY KEY (`share_id`),
  KEY `hongbao_id` (`hongbao_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_host` */
 DROP TABLE IF EXISTS `tp_host`;/* MySQLReback Separation */ CREATE TABLE `tp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_host_list_add` */
 DROP TABLE IF EXISTS `tp_host_list_add`;/* MySQLReback Separation */ CREATE TABLE `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(500) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_host_order` */
 DROP TABLE IF EXISTS `tp_host_order`;/* MySQLReback Separation */ CREATE TABLE `tp_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  `orderid` varchar(100) NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_hotels_house` */
 DROP TABLE IF EXISTS `tp_hotels_house`;/* MySQLReback Separation */ CREATE TABLE `tp_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_hotels_house_sort` */
 DROP TABLE IF EXISTS `tp_hotels_house_sort`;/* MySQLReback Separation */ CREATE TABLE `tp_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  `area` float NOT NULL,
  `bed` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `bedwidth` varchar(100) NOT NULL,
  `network` varchar(100) NOT NULL,
  `smoke` varchar(100) NOT NULL,
  `image_1` varchar(200) NOT NULL,
  `image_2` varchar(200) NOT NULL,
  `image_3` varchar(200) NOT NULL,
  `image_4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_hotels_image` */
 DROP TABLE IF EXISTS `tp_hotels_image`;/* MySQLReback Separation */ CREATE TABLE `tp_hotels_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `image` varchar(200) NOT NULL,
  `info` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_hotels_order` */
 DROP TABLE IF EXISTS `tp_hotels_order`;/* MySQLReback Separation */ CREATE TABLE `tp_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_images` */
 DROP TABLE IF EXISTS `tp_images`;/* MySQLReback Separation */ CREATE TABLE `tp_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fc` char(250) NOT NULL,
  `about` char(250) NOT NULL,
  `price` char(250) NOT NULL,
  `login` char(250) NOT NULL,
  `help` char(250) NOT NULL,
  `common` char(250) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_img` */
 DROP TABLE IF EXISTS `tp_img`;/* MySQLReback Separation */ CREATE TABLE `tp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` longtext NOT NULL,
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1',
  `longitude` varchar(20) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `writer` varchar(200) DEFAULT NULL COMMENT '作者',
  `texttype` int(11) NOT NULL DEFAULT '1' COMMENT '文本类型',
  `usorts` int(11) NOT NULL DEFAULT '1' COMMENT '分类文章排列顺序',
  `is_focus` tinyint(4) NOT NULL,
  `wechat_group` varchar(500) NOT NULL,
  `pinglun` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启当前图文评论',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_img` */
 INSERT INTO `tp_img` VALUES ('23','2','blbook','','0','带着孩子与查理九世一起在番禺探险！ 你准备好了吗？','0','','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/d/5/5/55caebb9417a4.jpg','0','<h2 style=\"border-bottom:#e7e7eb 1px solid;padding-bottom:10px;line-height:1.4;font-family:&apos;white-space:normal;margin-bottom:14px;font-size:24px;font-weight:400;\" id=\"activity-name\" class=\"rich_media_title\">带着孩子与查理九世一起在番禺探险！&nbsp;你准备好了吗？</h2><img style=\"width:410px;height:492px;\" alt=\"\" src=\"/uploads/t/twllsi1431226863/5/d/5/5/55caebb9417a4.jpg\" width=\"525\" height=\"691\" /><br /><br />2015年8月17日10：0至12：00，博览书店大石分店<span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span><br /><br /><img style=\"width:530px;height:343px;\" alt=\"\" src=\"/uploads/t/twllsi1431226863/c/a/3/5/55caecbdcfd81.jpg\" width=\"631\" height=\"402\" /><br /><br />2015年8月17日14：30至17：00，番禺万达广场中庭<span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span><br /><br /><img style=\"width:527px;height:308px;\" alt=\"\" src=\"/uploads/t/twllsi1431226863/4/d/3/6/55caeccd76896.jpg\" width=\"493\" height=\"281\" /> <p style=\"border-bottom:#e7e7eb 1px solid;padding-bottom:10px;line-height:1.4;font-family:&apos;white-space:normal;margin-bottom:14px;font-size:24px;font-weight:400;\" class=\"rich_media_title\"><br /></p><p style=\"border-bottom:#e7e7eb 1px solid;padding-bottom:10px;line-height:1.4;font-family:&apos;white-space:normal;margin-bottom:14px;font-size:24px;font-weight:400;\" class=\"rich_media_title\">“有人说互联网和电子媒体改变了人们的生活习惯，会将书籍走向死亡，我却不这么认为。每一本书都是一个用黑字印上白纸的灵魂，它让我们寻回遗忘。”</p><div style=\"position:relative;line-height:25px;min-height:350px;font-family:&apos;white-space:normal;color:#3e3e3e;font-size:16px;overflow:hidden;\" id=\"js_content\" class=\"rich_media_content\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><blockquote style=\"box-sizing:border-box !important;border-bottom:#3d34ea 3px dashed;border-left:#3d34ea 3px dashed;padding-bottom:15px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#3d34ea 3px dashed;border-right:#3d34ea 3px dashed;padding-top:15px;border-radius:5px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">这句令人泪流满面的话是谁说的？！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">悄悄告诉你：这是<span style=\"box-sizing:border-box !important;background-color:#ffc000;max-width:100%;word-wrap:break-word !important;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\">雷欧幻像</strong></span>说的。</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">弱弱地问一句：“雷欧幻像”是谁？</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">如果你不知道“雷欧幻像”是谁，那你就暴露年龄了！<span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"></span> </p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">让小编大大声告诉你吧：“雷欧幻像”是畅销书《查理九世》、《怪物大师》系列书籍作者，国内儿童奇幻冒险小说新锐。</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#00b0f0;max-width:100%;word-wrap:break-word !important;\">那么问题来了！《查理九世》是什么来的？</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">这个问题可能孩子会比你更知道答案！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">小编实在受不了了，立即帮你脑补一下！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><fieldset style=\"box-sizing:border-box !important;border-bottom:#7f3fbf 1px solid;min-width:0px;border-left:#7f3fbf 1px solid;padding-bottom:5px;line-height:24px;widows:2;background-color:#fdfdfd;padding-left:15px;padding-right:15px;font-family:宋体;max-width:100%;word-wrap:break-word !important;orphans:2;border-top:#7f3fbf 1px solid;border-right:#7f3fbf 1px solid;padding-top:5px;border-radius:1em;box-shadow:#A5A5A5 1px 2px 1px;\" class=\"brcolor\"><legend style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#000000;\"><span style=\"box-sizing:border-box !important;font-family:arial, helvetica, sans-serif;max-width:100%;word-wrap:break-word !important;color:#a5a5a5;font-size:18px;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#666666;\"><span style=\"box-sizing:border-box !important;padding-bottom:4px;padding-left:10px;padding-right:10px;max-width:100%;word-wrap:break-word !important;background:#7f3fbf;color:#fffbf0;margin-right:8px;padding-top:4px;border-radius:5px;\" class=\"bkcolor\">雷欧幻像</span></strong></span></legend><p style=\"box-sizing:border-box !important;text-align:center;line-height:2em;min-height:1.5em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;margin-bottom:12px;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/f/4/2/5/55cac2f3850c3.png\" /> </p><p style=\"box-sizing:border-box !important;line-height:2em;min-height:1.5em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;margin-bottom:12px;clear:both;\">一个信奉“想象力=创造力”的文字创作者，相信“每个大人心里都住着一个小孩子；而每个小孩心里，都有个未来的成人在静静地等候”。试图通过自己的文字给孩子以成长的勇气与力量。著有《查理九世》等超级畅销书。</p></fieldset><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;clear:both;\"><br /></p><fieldset style=\"box-sizing:border-box !important;border-bottom:#f46f34 1px solid;min-width:0px;border-left:#f46f34 1px solid;padding-bottom:5px;line-height:24px;widows:2;background-color:#fdfdfd;padding-left:15px;padding-right:15px;font-family:宋体;max-width:100%;word-wrap:break-word !important;orphans:2;border-top:#f46f34 1px solid;border-right:#f46f34 1px solid;padding-top:5px;border-radius:1em;box-shadow:#A5A5A5 1px 2px 1px;\" class=\"brcolor\"><legend style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#000000;\"><span style=\"box-sizing:border-box !important;font-family:arial, helvetica, sans-serif;max-width:100%;word-wrap:break-word !important;color:#a5a5a5;font-size:18px;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#666666;\"><span style=\"box-sizing:border-box !important;padding-bottom:4px;padding-left:10px;padding-right:10px;max-width:100%;word-wrap:break-word !important;background:#f46f34;color:#fffbf0;margin-right:8px;padding-top:4px;border-radius:5px;\" class=\"bkcolor\">《查理九世》(25册）</span></strong></span></legend><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/5/a/f/8/55cac30a70a1d.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\">是目前国内最具影响力的大型原创儿童冒险推理小说，是一套充满趣味的游戏故事书。每册书由一个主要故事、几个小案件、结合其他有趣的互动游戏组成。惊险神秘，妙趣横生！挑战头脑，快乐无边！</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">作品赞美成长勇气、鼓励科学探索、倡导人文关怀，向爱思考富有想象力的童年致敬！迄今出版25册，累积销售突破4000万册，悉数荣登少儿畅销榜前列。</p></fieldset><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;clear:both;\"><br /></p><blockquote style=\"box-sizing:border-box !important;border-left:#dbdbdb 0px solid;padding-bottom:5px;line-height:25px;border-right-width:0px;background-color:#ff007b;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top-width:0px;border-bottom-width:0px;color:#ffffff;font-weight:bold;padding-top:5px;border-radius:15px 15px 0px 0px;\" class=\"bkcolor\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;\" class=\"ue_t\">其实小编想说的是：令人激动万分的事情要发生了！</span> </blockquote><blockquote style=\"box-sizing:border-box !important;border-bottom:#ff007b 1px solid;border-left:#ff007b 1px solid;padding-bottom:10px;line-height:25px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#ff007b 1px solid;border-right:#ff007b 1px solid;padding-top:10px;border-radius:0px 0px 15px 15px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">由“博览书店”主办的“雷欧幻像”签售活动即将隆重举行！请身为爸爸妈妈的你马上告诉你家的宝贝！也请小伙伴们奔走相告！</p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><blockquote style=\"box-sizing:border-box !important;border-left:#dbdbdb 0px solid;padding-bottom:5px;line-height:25px;border-right-width:0px;background-color:#9481ef;padding-left:15px;padding-right:15px;display:inline-block;max-width:100%;word-wrap:break-word !important;border-top-width:0px;border-bottom-width:0px;color:#ffffff;font-weight:bold;padding-top:5px;border-radius:15px 15px 0px 0px;\" class=\"bkcolor\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;\" class=\"ue_t\">签售活动时间及地点：</span> </blockquote><blockquote style=\"box-sizing:border-box !important;border-bottom:#9481ef 1px solid;border-left:#9481ef 1px solid;padding-bottom:10px;line-height:25px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#9481ef 1px solid;border-right:#9481ef 1px solid;padding-top:10px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">1.2015年8月17日10：0至12：00，博览书店大石分店；</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">2.2015年8月17日14：30至17：00，番禺万达广场中庭；</p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><blockquote style=\"box-sizing:border-box !important;border-left:#dbdbdb 0px solid;padding-bottom:5px;line-height:25px;border-right-width:0px;background-color:#44cc24;padding-left:15px;padding-right:15px;display:inline-block;max-width:100%;word-wrap:break-word !important;border-top-width:0px;border-bottom-width:0px;color:#ffffff;font-weight:bold;padding-top:5px;border-radius:15px 15px 0px 0px;\" class=\"bkcolor\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" class=\"ue_t\">签售活动内容：</span> </blockquote><blockquote style=\"box-sizing:border-box !important;border-bottom:#44cc24 1px solid;border-left:#44cc24 1px solid;padding-bottom:10px;line-height:25px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#44cc24 1px solid;border-right:#44cc24 1px solid;padding-top:10px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">1.主持人介绍嘉宾；</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">2.雷欧幻像与小读者互动15分钟左右（请准备好问题，届时踊跃提问哟！）</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">3.开始签售（你珍藏的《查理九世》准备好了没？相机、手机也务必要准备好哟！）</p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><h2 style=\"background-image:url(http://mmbiz.qpic.cn/mmbiz/miaicBZBfRD4EjENoWOyOVlGmGsLUKT2nZuEkSvogibPfDE1I9TIrSG5RKTKLKmYz835XicPZfsD0qcdXbxH0syhMA/0?wx_fmt=png);box-sizing:border-box !important;padding-bottom:10px;line-height:35px;border-right-width:0px;background-color:#ffffff;margin-top:25px;padding-left:7px;background-repeat:repeat-x;font-family:微软雅黑;max-width:100%;word-wrap:break-word !important;background-position:0px 100%;margin-bottom:20px;border-bottom-width:0px;color:#00bbec;clear:both;font-size:22px;border-top:#00bbec 2px solid;border-left-width:0px;font-weight:100;padding-top:5px;\" class=\"brcolor bfcolor\" data-page-model=\"title\">听说啊！这个签售活动是由“博览书店”主办的，小编想说：真不是一般的牛！</h2><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;border-bottom-color:#d52020;line-height:2em;border-right-width:0px;min-height:1.5em;font-family:微软雅黑;max-width:100%;word-wrap:normal;border-bottom-width:0px;border-right-color:#d52020;clear:both;font-size:13px;border-left-color:#d52020;border-top:#d52020 2px solid;border-left-width:0px;\" class=\"brcolor\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;padding-bottom:5px;background-color:#d52020;padding-left:10px;padding-right:10px;display:inline-block;max-width:100%;word-wrap:break-word !important;color:#ffffff;font-size:18px;border-top:0px;border-right:0px;padding-top:5px;\">“博览书店”到底有多牛？-----杨红樱几个月前就来过</span></strong> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">\"博览书店\"去年12月份在番禺万达广场举办过“杨红樱小樱桃见面会”，热闹得呀！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/0/4/9/9/55cac316e4047.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/4/f/5/6/55cac33b5e963.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff691f;\">▲<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /></span>看图，根本不用说话！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/6/4/f/55cac36bbd5b4.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff691f;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">见面会结束之后，还在“博览书店”万达店里举行了阅读分享会。</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#ffc000;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;background-color:#ffc000;max-width:100%;word-wrap:break-word !important;\">这个月17号“查理九世”在“博览书店”的签售活动也将再次掀起热潮！</span></span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1.5em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;color:#ffffff;clear:both;font-stretch:normal;\"><span style=\"box-sizing:border-box !important;background-color:#ff0000;max-width:100%;word-wrap:break-word !important;font-size:18px;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"></strong></span> </p><blockquote style=\"box-sizing:border-box !important;border-bottom:#3e33e1 3px dashed;border-left:#3e33e1 3px dashed;padding-bottom:15px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#3e33e1 3px dashed;border-right:#3e33e1 3px dashed;padding-top:15px;border-radius:5px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">只要关注“博览书店”微信公众号并在朋友圈分享本活动微信给好友</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img src=\"/uploads/t/twllsi1431226863/1/7/8/8/55cc12cf761fe.jpg\" width=\"320\" height=\"320\" alt=\"\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">截图发送到“博览书店”微信后台，便可——在“博览书店”任一分店出示发送的截图画面，可换取“博览书店”会员卡一张（凭会员卡到任一分店购书可享受8.8折优惠，注：平时要一次性消费买100元以上或缴纳几十元工本费方可获得哦。）</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/6/5/9/f/55cac379453d2.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/1/9/9/2/55cac384aa024.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">活动解释权归“博览书店”所有。</p></blockquote><fieldset style=\"box-sizing:border-box;border-bottom:0px;min-width:0px;text-align:center;border-left:0px;line-height:25px;font-family:微软雅黑;max-width:100%;word-wrap:break-word !important;clear:both;font-size:13px;border-top:0px;border-right:0px;\" class=\"brcolor\"><section style=\"box-sizing:border-box !important;border-bottom:#00bbec 0.4em solid;border-left:#00bbec 0.4em solid;background-color:#f8f7f5;display:inline-block;max-width:100%;word-wrap:break-word !important;border-top:#00bbec 0.4em solid;border-right:#00bbec 0.4em solid;\" class=\"main brcolor\"><section style=\"box-sizing:border-box !important;border-bottom:#f8f7f5 0.5em solid;padding-bottom:0.5em;border-right-width:0px;margin:-0.4em 0.5em;padding-left:0.5em;padding-right:0.5em;max-width:100%;word-wrap:break-word !important;border-top:#f8f7f5 0.5em solid;border-left-width:0px;padding-top:0.5em;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;max-width:100%;word-wrap:break-word !important;border-top:0px;border-right:0px;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;display:inline-table;max-width:100%;word-wrap:break-word !important;vertical-align:middle;border-top:0px;border-right:0px;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1.5;display:table;font-family:inherit;max-width:100%;word-wrap:break-word !important;color:#00bbec;font-size:1em;vertical-align:middle;border-top:0px;border-right:0px;\" class=\"main2 bfcolor\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:18px;\"><a href=\"http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209682369&idx=2&sn=f9b79a5898a0c6def790995ee625acbb&scene=1&key=dffc561732c22651d7f296d36e3aba61536177e08817dc1eab94b534d8a940a380c47688a470982c9ad6c4b4d462db81&ascene=0&uin=MTYzMTA0Mjk4MA%3D%3D&devicetype=iMac+MacBookPro11%2C2+OSX+OSX+10.10.4+build(14E46)&version=11020113&pass_ticket=2%2FjkZhoMR%2F143xE0fhvRyh5w4xa8bKBR9pJwgrL0ip5Sl0vzVo7OV%2FZhrEeQbAe4\">博览书店<br style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;max-width:100%;word-wrap:break-word !important;border-top:0px;border-right:0px;\" /></a></span></strong></section></section><section style=\"box-sizing:border-box;border-bottom:0px;border-left:0px;background-color:#00bbec;width:3em;display:inline-block;max-width:100%;word-wrap:break-word !important;height:3em;vertical-align:middle;border-top:0px;border-right:0px;border-radius:50% 50% 0px;\" class=\"main3 bkcolor\"><section style=\"box-sizing:border-box;border-bottom:#ffffff 0.2em solid;border-left:#ffffff 0.2em solid;background-color:transparent;margin:0.2em;width:2.6em;max-width:100%;word-wrap:break-word !important;height:2.6em;border-top:#ffffff 0.2em solid;border-right:#ffffff 0.2em solid;border-radius:50%;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1;margin-top:0.05em;font-family:inherit;max-width:100%;word-wrap:break-word !important;color:#ffffff;font-size:2em;border-top:0px;border-right:0px;\"><span style=\"display:none;\" id=\"__kindeditor_bookmark_end_3__\"></span><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /></section></section></section></section><section style=\"box-sizing:border-box !important;border-bottom-color:#00bbec;border-right-width:0px;margin-top:0.5em;max-width:100%;word-wrap:break-word !important;margin-bottom:0.5em;border-bottom-width:0px;border-right-color:#00bbec;border-left-color:#00bbec;border-top:#00bbec 1px solid;border-left-width:0px;\" class=\"main4 brcolor\"></section><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1;font-family:inherit;max-width:100%;word-wrap:break-word !important;font-size:0.9em;border-top:0px;border-right:0px;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:16px;\"><a href=\"http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209682369&idx=2&sn=f9b79a5898a0c6def790995ee625acbb&scene=1&key=dffc561732c22651d7f296d36e3aba61536177e08817dc1eab94b534d8a940a380c47688a470982c9ad6c4b4d462db81&ascene=0&uin=MTYzMTA0Mjk4MA%3D%3D&devicetype=iMac+MacBookPro11%2C2+OSX+OSX+10.10.4+build(14E46)&version=11020113&pass_ticket=2%2FjkZhoMR%2F143xE0fhvRyh5w4xa8bKBR9pJwgrL0ip5Sl0vzVo7OV%2FZhrEeQbAe4\">带你体验书式生活 亲子活动好去处！</a></span></section></section></section> </fieldset><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#87c943;font-size:18px;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#7f7f7f;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;background-color:#ffff00;max-width:100%;word-wrap:break-word !important;\">“博览书店”万达店：广州番禺区南村镇万达广场万达百货四楼</span></strong></span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><blockquote class=\"bkcolor\" style=\"padding:5px 15px;white-space:normal;border-left-color:#DBDBDB;border-width:0px;border-left-style:solid;line-height:25px;max-width:100%;color:#FFFFFF;font-weight:bold;border-radius:15px 15px 0px 0px;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#F22121;\"><span class=\"ue_t\" style=\"max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;\"><br class=\"Apple-interchange-newline\" />“博览书店”店址&amp;电话一览：</span></blockquote><blockquote class=\"brcolor\" style=\"padding:10px 15px;white-space:normal;border:1px solid #F22121;line-height:25px;max-width:100%;border-radius:0px 0px 15px 15px;box-sizing:border-box !important;word-wrap:break-word !important;\"><p style=\"min-height:1em;max-width:100%;white-space:pre-wrap;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"max-width:100%;font-size:14px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"font-size:12px;line-height:1;\">洛溪店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺洛溪新城如意中心二楼<br /></span><span style=\"line-height:1;\">电话：13060918023</span></span><br /></span></p><hr /><span style=\"font-size:12px;line-height:1;\">大石店：</span><span style=\"line-height:1;font-size:12px;white-space:pre-wrap;\">番禺大石镇105国道大石段新地广场二楼</span><p style=\"min-height:1em;max-width:100%;white-space:pre-wrap;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：13060918032</span></p><hr /><span style=\"font-size:12px;line-height:1;\">钟村店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺钟村镇人民路82号一&amp;二楼</span><br /></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">电话：13060918036</span><hr /><span style=\"font-size:12px;line-height:1;\">石基店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺石基镇龙基北路24号首层</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：13060918082</span><hr /><span style=\"font-size:12px;line-height:1;\">石楼店：</span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"line-height:1;\">番禺石楼镇侨城新天地二楼（石楼牌坊旁）</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：13060918090</span><hr /><span style=\"font-size:12px;line-height:1;\">南村店：</span><span style=\"font-size:12px;line-height:1;\">番禺南村镇文明路72号二&amp;三楼</span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><br /><span style=\"line-height:1;\">电话：13060918393</span></span><hr /><span style=\"font-size:12px;line-height:1;\">万达店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺南村镇万达广场内万达百货四楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：18620483083</span><hr /><span style=\"font-size:12px;line-height:1;\">榄核店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">南沙榄核镇蔡新路B区商住楼一&amp;二楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：15602213700</span><hr /><span style=\"font-size:12px;line-height:1;\">黄阁店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">南沙黄阁镇麒龙东路154号一&amp;二&amp;三楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：15602212977</span><hr /><span style=\"font-size:12px;line-height:1;\">北滘店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">佛山北滘镇南昌路55号一&amp;二&amp;三楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：18665595862</span></blockquote><div><br /></div><p><br /></p><blockquote style=\"box-sizing:border-box !important;border-bottom:medium none;border-left:medium none;padding-bottom:10px;line-height:24px;background-color:#e36c09;padding-left:20px;padding-right:20px;font-family:微软雅黑;max-width:100%;word-wrap:break-word !important;color:#ffffff;border-top:medium none;border-right:medium none;padding-top:10px;border-radius:3px;font-stretch:normal;\" class=\"bkcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"></span><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:18px;\">这个暑假，带着孩子与查理九世一起去探险！ 你准备好了吗？</span> </p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/3/5/f/b/55cac54f5c453.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><section style=\"background-image:none;box-sizing:border-box !important;border-bottom:medium none;border-left:medium none;padding-bottom:10px;margin-top:5px;padding-left:10px;padding-right:10px;max-width:100%;word-wrap:break-word !important;border-top:medium none;border-right:medium none;padding-top:10px;background-size:initial;background-origin:initial;background-clip:initial;\" label=\"Copyright &copy; 2014 playhudong All Rights Reserved.\"><section style=\"background-image:none;box-sizing:border-box !important;border-bottom:#4e99df 3px solid;text-align:center;border-left:#4e99df 3px solid;line-height:37px;margin-top:-1px;min-height:40px;max-width:100%;word-wrap:break-word !important;height:40px;visibility:visible;border-top:#4e99df 3px solid;border-right:#4e99df 3px solid;border-radius:10px;background-size:initial;background-origin:initial;background-clip:initial;\" class=\"color\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:10px;\"><a href=\"http://mp.weixin.qq.com/s?__biz=MzA5MzcyMjI2OA==&mid=209681014&idx=1&sn=fff9434b2f4251d65cd82200d1aefe51&scene=1&key=dffc561732c226517dfdb5b3e304dd1b8ca08b05b023b610dd9e7b52b7e6ca62f77822bb2444f3741d4f317912cc06b0&ascene=0&uin=MTYzMTA0Mjk4MA%3D%3D&devicetype=iMac+MacBookPro11%2C2+OSX+OSX+10.10.4+build(14E46)&version=11020113&pass_ticket=2%2FjkZhoMR%2F143xE0fhvRyh5w4xa8bKBR9pJwgrL0ip5Sl0vzVo7OV%2FZhrEeQbAe4\">点击即可获得前往番禺万达广场的免费巴士行车指引</a></span></section></section> </div><div style=\"line-height:32px;font-family:&apos;white-space:normal;font-size:16px;overflow:hidden;padding-top:15px;\" id=\"js_toobar2\" class=\"rich_media_tool\"></div>','','1439276083','1439437762','262','twllsi1431226863','你试试告诉孩子“在番禺可以和查理九世见面”，TA会有什么反应？？！！','1','','','0','','1','1','0','','1');/* MySQLReback Separation */
 /* 插入数据 `tp_img` */
 INSERT INTO `tp_img` VALUES ('26','2','blbook','','0','免费巴士信息－广州番禺万达广场','0','','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/e/1/1/thumb_55cb03fbb2e7f.jpg','0','<p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">路线1</p><blockquote style=\"margin-bottom:18px;padding-left:15px;border-width:0px 0px 0px 5px;border-left-style:solid;border-left-color:#EEEEEE;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;quotes:none;max-width:100%;color:#3E3E3E;white-space:normal;word-wrap:break-word !important;box-sizing:border-box !important;background-color:#FFFFFF;\"><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\">1号线：锦绣香江至万达广场</p><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\"><span style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:31.9886px;font-family:inherit;vertical-align:baseline;max-width:100%;text-align:center;word-wrap:break-word !important;box-sizing:border-box !important;\">首发时间：锦绣香江AM9:00-PM20:00 &nbsp; &nbsp; &nbsp;万达广场AM9:30-PM21:00&nbsp;</span></p><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\"><br /></p></blockquote><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/07/22/FuOfjjAd_D9cZthAlAitcFL-H8wz.png!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">途径站点：</p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/06/30/FkH6uLsrrtnBI7V2WtkgzUFsUclm.jpg!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">路线2</p><blockquote style=\"margin-bottom:18px;padding-left:15px;border-width:0px 0px 0px 5px;border-left-style:solid;border-left-color:#EEEEEE;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;quotes:none;max-width:100%;color:#3E3E3E;white-space:normal;word-wrap:break-word !important;box-sizing:border-box !important;background-color:#FFFFFF;\"><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\">2号线：雅居乐商业街至万达广场</p><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\">首发站：雅居乐商业街AM9:00-PM20:10 &nbsp; &nbsp; &nbsp; 万达广场AM10：45-PM21:00</p></blockquote><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/07/22/FttFY5Fc5_vXljw1tMrRTm-rpjbq.png!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">途径站点：</p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/06/30/FgNRr2Jqt_2rrAUZL49pjGNM2KT3.jpg!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">路线3</p><blockquote style=\"margin-bottom:18px;padding-left:15px;border-width:0px 0px 0px 5px;border-left-style:solid;border-left-color:#EEEEEE;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;quotes:none;max-width:100%;color:#3E3E3E;white-space:normal;word-wrap:break-word !important;box-sizing:border-box !important;background-color:#FFFFFF;\"><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\">&nbsp;3号线：锦绣银湾-万达广场</p><p style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:pre-wrap;box-sizing:border-box !important;\">&nbsp; 首发站：锦绣银湾：AM8:30-PM20:00 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;万达广场：AM9:00-PM21:00</p></blockquote><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/07/22/FpFlnfVfCnaUB6ePnwypxjR3dTip.png!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\">途径站点：</p><p style=\"border:0px;font-stretch:inherit;line-height:25.6px;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\"><br /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;text-align:center;box-sizing:border-box !important;background-color:#FFFFFF;\"><img src=\"http://imgqn.koudaitong.com/upload_files/2015/06/30/FqFFUQnXTh7LFDJpbzrcEu70PJXL.jpg!730x0.jpg\" style=\"border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;max-width:100%;word-wrap:break-word !important;box-sizing:border-box !important;height:auto !important;\" /></p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;万达全国统一投诉电话：400-009-5066</p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;万达商业管理总部投诉电话：400-950-6611</p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;万达集团服务监督电话：400-950-6666</p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;投诉建议：www.wanda.cn/mobile/feedback</p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;广场咨询电话：020--22938988</p><p style=\"border:0px;font-stretch:inherit;line-height:2em;font-family:&apos;Helvetica Neue&apos;, Helvetica, &apos;Hiragino Sans GB&apos;, &apos;Microsoft YaHei&apos;, 微软雅黑, Arial, sans-serif;font-size:16px;vertical-align:baseline;max-width:100%;word-wrap:normal;min-height:1em;white-space:normal;color:#3E3E3E;box-sizing:border-box !important;background-color:#FFFFFF;\">&nbsp;番禺万达广场，金街火爆招商中，招商热线：020-22938899</p><div><br /></div>','','1439368224','1439368224','170','twllsi1431226863','免费巴士信息－广州番禺万达广场','4','','','0','','1','1','0','','1');/* MySQLReback Separation */
 /* 插入数据 `tp_img` */
 INSERT INTO `tp_img` VALUES ('25','2','blbook','','0','这个月17号“查理九世”在“博览书店”的签售活动也将再次掀起热潮！','0','','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/3/9/4/55cac3b1ea520.png','0','<p style=\"box-sizing:border-box !important;border-bottom-color:#d52020;line-height:2em;border-right-width:0px;min-height:1.5em;font-family:微软雅黑;max-width:100%;word-wrap:normal;border-bottom-width:0px;border-right-color:#d52020;clear:both;font-size:13px;border-left-color:#d52020;border-top:#d52020 2px solid;border-left-width:0px;\" class=\"brcolor\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;padding-bottom:5px;background-color:#d52020;padding-left:10px;padding-right:10px;display:inline-block;max-width:100%;word-wrap:break-word !important;color:#ffffff;font-size:18px;border-top:0px;border-right:0px;padding-top:5px;\">“博览书店”到底有多牛？</span></strong> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">\"博览书店\"去年12月份在番禺万达广场举办过“杨红樱小樱桃见面会”，热闹得呀！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/0/4/9/9/55cac316e4047.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff691f;\">▲<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /></span>看图，根本不用说话！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/6/4/f/55cac36bbd5b4.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff691f;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">见面会开始前，还在“博览书店万达分店”里举行了阅读分享会。</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#ffc000;max-width:100%;word-wrap:break-word !important;\">这个月17号“查理九世”在“博览书店”的签售活动也将再次掀起热潮！<br /><img alt=\"\" src=\"/uploads/t/twllsi1431226863/1/1/1/8/55cac2e7a93f6.png\" /><br /><br /></span>&nbsp;</p><fieldset style=\"box-sizing:border-box;border-bottom:0px;min-width:0px;text-align:center;border-left:0px;line-height:25px;font-family:微软雅黑;max-width:100%;word-wrap:break-word !important;clear:both;font-size:13px;border-top:0px;border-right:0px;\" class=\"brcolor\"><section style=\"box-sizing:border-box !important;border-bottom:#00bbec 0.4em solid;border-left:#00bbec 0.4em solid;background-color:#f8f7f5;display:inline-block;max-width:100%;word-wrap:break-word !important;border-top:#00bbec 0.4em solid;border-right:#00bbec 0.4em solid;\" class=\"main brcolor\"><section style=\"box-sizing:border-box !important;border-bottom:#f8f7f5 0.5em solid;padding-bottom:0.5em;border-right-width:0px;margin:-0.4em 0.5em;padding-left:0.5em;padding-right:0.5em;max-width:100%;word-wrap:break-word !important;border-top:#f8f7f5 0.5em solid;border-left-width:0px;padding-top:0.5em;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;max-width:100%;word-wrap:break-word !important;border-top:0px;border-right:0px;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;display:inline-table;max-width:100%;word-wrap:break-word !important;vertical-align:middle;border-top:0px;border-right:0px;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1.5;display:table;font-family:inherit;max-width:100%;word-wrap:break-word !important;color:#00bbec;font-size:1em;vertical-align:middle;border-top:0px;border-right:0px;\" class=\"main2 bfcolor\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:18px;\">博览书店<br style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;max-width:100%;word-wrap:break-word !important;border-top:0px;border-right:0px;\" /></span></strong></section></section><section style=\"box-sizing:border-box;border-bottom:0px;border-left:0px;background-color:#00bbec;width:3em;display:inline-block;max-width:100%;word-wrap:break-word !important;height:3em;vertical-align:middle;border-top:0px;border-right:0px;border-radius:50% 50% 0px;\" class=\"main3 bkcolor\"><section style=\"box-sizing:border-box;border-bottom:#ffffff 0.2em solid;border-left:#ffffff 0.2em solid;background-color:transparent;margin:0.2em;width:2.6em;max-width:100%;word-wrap:break-word !important;height:2.6em;border-top:#ffffff 0.2em solid;border-right:#ffffff 0.2em solid;border-radius:50%;\"><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1;margin-top:0.05em;font-family:inherit;max-width:100%;word-wrap:break-word !important;color:#ffffff;font-size:2em;border-top:0px;border-right:0px;\"><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /></section></section></section></section><section style=\"box-sizing:border-box !important;border-bottom-color:#00bbec;border-right-width:0px;margin-top:0.5em;max-width:100%;word-wrap:break-word !important;margin-bottom:0.5em;border-bottom-width:0px;border-right-color:#00bbec;border-left-color:#00bbec;border-top:#00bbec 1px solid;border-left-width:0px;\" class=\"main4 brcolor\"></section><section style=\"box-sizing:border-box !important;border-bottom:0px;border-left:0px;line-height:1;font-family:inherit;max-width:100%;word-wrap:break-word !important;font-size:0.9em;border-top:0px;border-right:0px;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:16px;\">带你体验书式生活 亲子活动好去处！</span></section></section></section> </fieldset><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/e/b/7/3/55cac38e77881.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff691f;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">这绝不是一般人所理解的“书店”概念，这是“<span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#c00000;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\">能够让你静下心来看书的书店</strong></span>”。这里简直就是一个小型的购书中心！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">真不敢相信番禺也有如此大型的连锁书店！分店遍及番禺洛溪、大石、钟村、南村、石基、石楼，南沙榄核、黄阁，佛山北滘等地！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#ffff00;max-width:100%;word-wrap:break-word !important;\">现在就去番禺万达分店看看！</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">首先我们来到番禺万达广场~</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/b/3/1/8/55cac39c5541a.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;text-align:center;max-width:100%;word-wrap:break-word !important;\">在三楼食街就能找到<span style=\"box-sizing:border-box !important;text-align:center;max-width:100%;word-wrap:break-word !important;\">“博览书店”</span>的招牌和指引哦！<br /><img alt=\"\" src=\"/uploads/t/twllsi1431226863/9/1/d/8/55cad4a3b2c57.jpg\" width=\"600\" height=\"321\" /> <br />到“万达百货”四楼请注意留意地面，会有明显的“方向指引”哟！清楚明晰地告诉你“博览书店”在哪里！</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/a/c/7/6/55cac3a7ea4fd.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">找到啦找到啦！<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/2/3/9/4/55cac3b1ea520.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">这是萌萌哒的收银处。</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/d/7/4/a/55cac3bdae2a7.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">这真的不是一般的书店，你会立马被这些小可爱们所吸引……</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/b/3/d/1/55cac3cab4494.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;text-align:center;max-width:100%;word-wrap:break-word !important;\">然后学习用品乃至笔墨纸砚都买得到，重点是价格还比较实惠。</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/e/d/e/b/55cac3d5428db.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">时下最流行的各种彩铅也是应有尽有！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/f/9/5/4/55cac3e191b07.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">放得满满的书架在提醒你：其实我主要还是一家书店……</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/7/9/c/9/55cac3f46b966.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/5/8/1/2/55cac412e1710.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">还有各种流行杂志和当红偶像写真集……</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/2/6/5/a/55cac41c4c692.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\">360度无死角！</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/f/9/3/d/55cac43971ff9.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">最重要的是可以带上孩子一起在这里“充充电”，这里学生辅导书也有。</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/0/d/c/1/55cac4415ec98.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">地球仪和各种体育用品也有！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/6/d/e/7/55cac44a9fdb7.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">看到这个感觉像是回到小时候去过的文体用品商店……</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/8/e/2/55cac453b42ed.png\" /> </p><section style=\"box-sizing:border-box !important;border-bottom-style:none;border-right-style:none;margin:1em auto;width:485px;max-width:100%;word-wrap:break-word !important;border-top-style:none;border-left-style:none;\" label=\"Copyright &copy; 2015 playhudong All Rights Reserved.\"><section style=\"box-sizing:border-box !important;border-bottom:#ff1d6b 2px solid;padding-bottom:30px;line-height:1.4;padding-left:20px;padding-right:20px;background-repeat:no-repeat;max-width:100%;word-wrap:break-word !important;background-position:50% 0%;color:#616161;border-right-color:#ff1d6b;border-left-color:#ff1d6b;border-top:#ff1d6b 2px solid;padding-top:30px;background-size:17%;\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#00b0f0;max-width:100%;word-wrap:break-word !important;color:#000000;\">重点要说的是这个“儿童阅读区”，简直太赞了！</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff0000;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/0/2/b/f/55cac45d59384.png\" /> </p></section></section><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/b/5/d/0/55cac46758e27.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;text-align:center;max-width:100%;word-wrap:break-word !important;\">看到孩子们席地而坐认真看书的身影，小编的眼睛都不禁湿润了~</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/9/2/6/1/55cac4a1631c9.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">再不陪我看书我就长大了！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/a/a/2/55cac4a99a872.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">各种儿童读物应有尽有！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/7/d/3/b/55cac4c3737ff.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">就连乐高也有！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/0/1/d/4/55cac4de3014d.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">还有这些……</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/3/4/d/d/55cac4e6e55d1.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">和这些……<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/9/6/3/55cac4eec76d4.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">“儿童阅读区”旁边还有手工区~</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/4/0/7/8/55cac4f7a167c.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/1/1/f/c/55cac500df832.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">小朋友很爱的妙趣沙滩~<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/d/d/6/4/55cac50908b13.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">其实在这里给孩子拍照背景也是极好的~<br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#4676d9;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/b/2/b/1/55cac511130bc.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">很想赞叹一句：你还能不能再更多元化一点！</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/7/4/f/2/55cac51a44a80.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff1d6b;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">阅读的环境很是宜人~周末还有特定时段会有“博览姐姐”和大家讲故事。</p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/c/5/9/6/55cac5238023c.png\" /> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff1d6b;\">▲</span> </p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">认真的孩子最可爱！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/1/1/a/0/55cac52c4a3bd.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff1d6b;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">累了渴了饿了还能在书店里面的HI Coffee喝杯东西，一边吃吃冰淇淋或是糕点，一边看自己选中的书，很好的享受呢！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/6/7/b/4/55cac536d6d23.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff1d6b;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">书店里好几个地方都有桌椅摆设，还有专门的阅读区，我也来充充电咯！</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/f/7/d/0/55cac544b5d1a.png\" /><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#ff1d6b;\">▲</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\">话说这么赞的亲子活动好去处，到底在哪里呀？</p><p style=\"box-sizing:border-box !important;text-align:center;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#87c943;font-size:18px;\">▼</span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;color:#7f7f7f;\"><strong style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"><span style=\"box-sizing:border-box !important;background-color:#ffff00;max-width:100%;word-wrap:break-word !important;\">“博览书店”万达店：广州番禺区南村镇万达广场万达百货四楼</span></strong></span> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;background-color:#ffff00;max-width:100%;word-wrap:break-word !important;\"><br style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" /></span> </p><blockquote style=\"box-sizing:border-box !important;border-left:#dbdbdb 0px solid;padding-bottom:5px;line-height:25px;border-right-width:0px;background-color:#f22121;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top-width:0px;border-bottom-width:0px;color:#ffffff;font-weight:bold;padding-top:5px;border-radius:15px 15px 0px 0px;\" class=\"bkcolor\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\" class=\"ue_t\">“博览书店”店址&amp;电话一览：</span> </blockquote><blockquote style=\"box-sizing:border-box !important;border-bottom:#f22121 1px solid;border-left:#f22121 1px solid;padding-bottom:10px;line-height:25px;padding-left:15px;padding-right:15px;max-width:100%;word-wrap:break-word !important;border-top:#f22121 1px solid;border-right:#f22121 1px solid;padding-top:10px;border-radius:0px 0px 15px 15px;\" class=\"brcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:14px;\"><span style=\"font-size:12px;line-height:1;\">洛溪店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺洛溪新城如意中心二楼<br /></span><span style=\"line-height:1;\">电话：13060918023</span></span><br /></span></p><hr /><span style=\"font-size:12px;line-height:1;\">大石店：</span><span style=\"line-height:1;font-size:12px;white-space:pre-wrap;\">番禺大石镇105国道大石段新地广场二楼</span><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：13060918032</span></p><hr /><span style=\"font-size:12px;line-height:1;\">钟村店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺钟村镇人民路82号一&amp;二楼</span><br /></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">电话：13060918036</span><hr /><span style=\"font-size:12px;line-height:1;\">石基店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺石基镇龙基北路24号首层</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：13060918082</span><hr /><span style=\"font-size:12px;line-height:1;\">石楼店：</span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"line-height:1;\">番禺石楼镇侨城新天地二楼（石楼牌坊旁）</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：13060918090</span><hr /><span style=\"font-size:12px;line-height:1;\">南村店：</span><span style=\"font-size:12px;line-height:1;\">番禺南村镇文明路72号二&amp;三楼</span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><br /><span style=\"line-height:1;\">电话：13060918393</span></span><hr /><span style=\"font-size:12px;line-height:1;\">万达店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">番禺南村镇万达广场内万达百货四楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：18620483083</span><hr /><span style=\"font-size:12px;line-height:1;\">榄核店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">南沙榄核镇蔡新路B区商住楼一&amp;二楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：15602213700</span><hr /><span style=\"font-size:12px;line-height:1;\">黄阁店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">南沙黄阁镇麒龙东路154号一&amp;二&amp;三楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：15602212977</span><hr /><span style=\"font-size:12px;line-height:1;\">北滘店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\">佛山北滘镇南昌路55号一&amp;二&amp;三楼</span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：18665595862</span></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><blockquote style=\"box-sizing:border-box !important;border-bottom:medium none;border-left:medium none;padding-bottom:10px;line-height:24px;background-color:#e36c09;padding-left:20px;padding-right:20px;font-family:微软雅黑;max-width:100%;word-wrap:break-word !important;color:#ffffff;border-top:medium none;border-right:medium none;padding-top:10px;border-radius:3px;font-stretch:normal;\" class=\"bkcolor\"><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;\"></span><span style=\"box-sizing:border-box !important;max-width:100%;word-wrap:break-word !important;font-size:18px;\">这个暑假，带着孩子与查理九世一起去探险！ 你准备好了吗？</span> </p></blockquote><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><img alt=\"\" src=\"/uploads/t/twllsi1431226863/3/5/f/b/55cac54f5c453.png\" /> </p><p style=\"box-sizing:border-box !important;min-height:1em;max-width:100%;word-wrap:break-word !important;white-space:pre-wrap;clear:both;\"><br /></p>','','1439353694','1439373264','190','twllsi1431226863','“博览书店”到底有多牛？！-----杨红樱刚回，“查理九世”就来了！','3','','','0','','1','1','0','','1');/* MySQLReback Separation */
 /* 插入数据 `tp_img` */
 INSERT INTO `tp_img` VALUES ('27','2','blbook','','0','每一本书都是一个用黑字印上白纸的灵魂，它让我们寻回遗忘。','0','','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/b/5/d/thumb_55cca33c7baec.png','1','<p style=\"min-height:1em;max-width:100%;white-space:pre-wrap;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"font-size:14px;font-family:&apos;white-space:normal;margin-bottom:14px;font-weight:400;line-height:1.4;white-space:normal;color:#337FE5;\">“有人说互联网和电子媒体改变了人们的生活习惯，会将书籍走向死亡，我却不这么认为。每一本书都是一个用黑字印上白纸的灵魂，它让我们寻回遗忘。”</span> </p><br />博览书店绝不是一般人所理解的“书店”概念，这是“<span style=\"max-width:100%;color:#C00000;box-sizing:border-box !important;word-wrap:break-word !important;\"><strong style=\"max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;\">能够让你静下心来看书的书店</strong></span>”。<p style=\"min-height:1em;max-width:100%;white-space:pre-wrap;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;\"><blockquote style=\"margin:0;max-width:100%;word-wrap:break-word;padding:15px 25px;top:0px;line-height:24px;font-size:14px;vertical-align:baseline;border-left-color:#00BBEC;border-left-width:10px;border-left-style:solid;display:block;background-color:#efefef;\"><p class=\"ue_t\"><span style=\"white-space:normal;\">这里不仅有各式各样书籍，还有儿童阅览区、儿童收工区；</span><br style=\"white-space:normal;\" /><span style=\"white-space:normal;\">这里不仅有舒适的阅览区，还有优雅的咖啡厅；</span><br style=\"white-space:normal;\" /><span style=\"white-space:normal;\">这里不仅有各式亲子活动，还有大型签售会、新书发布会。</span></p></blockquote><br />真不敢相信番禺也有如此大型的连锁书店！<br />分店遍及番禺洛溪、大石、钟村、南村、石基、石楼，南沙榄核、黄阁，佛山北滘等地！</p><div><br /></div><img src=\"/uploads/t/twllsi1431226863/6/e/c/f/55cca399af433.png\" alt=\"\" /><br /><br /><blockquote class=\"bkcolor\" style=\"padding:5px 15px;white-space:normal;border-left-color:#DBDBDB;border-width:0px;border-left-style:solid;line-height:25px;max-width:100%;color:#FFFFFF;font-weight:bold;border-radius:15px 15px 0px 0px;box-sizing:border-box !important;word-wrap:break-word !important;background-color:#F22121;\"><span class=\"ue_t\" style=\"max-width:100%;box-sizing:border-box !important;word-wrap:break-word !important;\"><br class=\"Apple-interchange-newline\" />“博览书店”店址&amp;电话一览：<span style=\"font-size:10px;\">（点击地址导航）</span></span> </blockquote><blockquote class=\"brcolor\" style=\"padding:10px 15px;white-space:normal;border:1px solid #F22121;line-height:25px;max-width:100%;border-radius:0px 0px 15px 15px;box-sizing:border-box !important;word-wrap:break-word !important;\"><p style=\"min-height:1em;max-width:100%;white-space:pre-wrap;clear:both;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"max-width:100%;font-size:14px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"font-size:12px;line-height:1;\">洛溪店：</span><span style=\"font-size:12px;\"><span><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/mh3g5\"><span style=\"line-height:1;\">番禺洛溪新城如意中心二楼</span></a></span><br /></span><span style=\"line-height:1;\">电话：13060918023</span></span></span></p><hr /><p><span style=\"font-size:12px;line-height:1;\"><span style=\"line-height:1;\">大石店：</span></span><span style=\"font-size:12px;white-space:pre-wrap;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/XCWLl\"><span style=\"line-height:1;\">番禺大石镇105国道大石段新地广场二楼</span></a></span></span> </p><span style=\"font-size:12px;white-space:pre-wrap;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/XCWLl\"><span style=\"line-height:1;\"></span></a></span></span><span style=\"white-space:pre-wrap;max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\"><span style=\"line-height:1;\">电话</span></span><span style=\"white-space:pre-wrap;max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：13060918032</span> <hr /><span style=\"font-size:12px;line-height:1;\">钟村店：</span><span style=\"font-size:12px;\"><span><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/S83g5\">番禺钟村镇人民路82号一&amp;二楼</a></span><br /><span style=\"line-height:1;\"></span></span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">电话：13060918036</span> <hr /><span style=\"font-size:12px;line-height:1;\">石基店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/qC3g5\">番禺石基镇龙基北路24号首层</a></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;line-height:1;\">：13060918082</span> <hr /><span style=\"font-size:12px;line-height:1;\">石楼店：</span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/WJ4g5\">番禺石楼镇侨城新天地二楼（石楼牌坊旁）</a></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：13060918090</span> <hr /><span style=\"font-size:12px;line-height:1;\">南村店：</span><span style=\"font-size:12px;line-height:1;\"><a href=\"http://j.map.baidu.com/Pr4g5\">番禺南村镇文明路72号二&amp;三楼</a></span><span style=\"max-width:100%;font-size:12px;box-sizing:border-box !important;word-wrap:break-word !important;\"><br /><span style=\"line-height:1;\">电话：13060918393</span></span> <hr /><span style=\"font-size:12px;line-height:1;\">万达店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/1v4g5\">番禺南村镇万达广场内万达百货四楼</a></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：18620483083</span> <hr /><span style=\"font-size:12px;line-height:1;\">榄核店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\"><span style=\"font-family:&apos;white-space:normal;color:#3e3e3e;font-size:12px;overflow:hidden;line-height:12px;white-space:normal;\"><a href=\"http://j.map.baidu.com/Ax4g5\">南沙榄核镇蔡新路B区商住楼一&amp;二楼</a></span></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：15602213700</span> <hr /><span style=\"font-size:12px;line-height:1;\">黄阁店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/C54g5\">南沙黄阁镇麒龙东路154号一&amp;二&amp;三楼</a></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：15602212977</span> <hr /><span style=\"font-size:12px;line-height:1;\">北滘店：</span><span style=\"font-size:12px;\"><span style=\"line-height:1;\"><a href=\"http://j.map.baidu.com/n94g5\">佛山北滘镇南昌路55号一&amp;二&amp;三楼</a></span><br /><span style=\"line-height:1;\">电话</span></span><span style=\"max-width:100%;font-size:12px;line-height:1;box-sizing:border-box !important;word-wrap:break-word !important;\">：18665595862</span> </blockquote>','','1439473397','1439477499','59','twllsi1431226863','博览书店','5','','','0','','1','1','0','','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_img_multi` */
 DROP TABLE IF EXISTS `tp_img_multi`;/* MySQLReback Separation */ CREATE TABLE `tp_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_img_multi` */
 INSERT INTO `tp_img_multi` VALUES ('1','查理九世','23,25','twllsi1431226863');/* MySQLReback Separation */
 /* 创建表结构 `tp_indent` */
 DROP TABLE IF EXISTS `tp_indent`;/* MySQLReback Separation */ CREATE TABLE `tp_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite` */
 DROP TABLE IF EXISTS `tp_invite`;/* MySQLReback Separation */ CREATE TABLE `tp_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(360) NOT NULL,
  `replypic` varchar(200) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `meetpic` varchar(150) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `linkman` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `site` varchar(100) NOT NULL,
  `twopic` varchar(150) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `themeurl` varchar(150) NOT NULL,
  `warn` varchar(100) NOT NULL,
  `inback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite_enroll` */
 DROP TABLE IF EXISTS `tp_invite_enroll`;/* MySQLReback Separation */ CREATE TABLE `tp_invite_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite_meeting` */
 DROP TABLE IF EXISTS `tp_invite_meeting`;/* MySQLReback Separation */ CREATE TABLE `tp_invite_meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `ytime` int(11) NOT NULL,
  `xtime` int(11) NOT NULL,
  `content` text NOT NULL,
  `guest` varchar(200) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite_partner` */
 DROP TABLE IF EXISTS `tp_invite_partner`;/* MySQLReback Separation */ CREATE TABLE `tp_invite_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `partnertype` varchar(50) NOT NULL COMMENT '合作伙伴类型',
  `typepic` varchar(200) NOT NULL COMMENT '类型图片',
  `company` varchar(200) NOT NULL COMMENT '公司',
  `photo` varchar(100) NOT NULL COMMENT '服务热线',
  `scheme` text NOT NULL COMMENT '方案',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite_plan` */
 DROP TABLE IF EXISTS `tp_invite_plan`;/* MySQLReback Separation */ CREATE TABLE `tp_invite_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invite_user` */
 DROP TABLE IF EXISTS `tp_invite_user`;/* MySQLReback Separation */ CREATE TABLE `tp_invite_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` char(60) NOT NULL,
  `yid` int(1) NOT NULL,
  `headpic` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `synopsis` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invites` */
 DROP TABLE IF EXISTS `tp_invites`;/* MySQLReback Separation */ CREATE TABLE `tp_invites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `type` int(3) NOT NULL,
  `brief` varchar(200) NOT NULL,
  `content` varchar(300) NOT NULL,
  `statdate` varchar(30) NOT NULL,
  `address` varchar(120) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `qr_code` varchar(120) NOT NULL,
  `copyrite` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_invites_info` */
 DROP TABLE IF EXISTS `tp_invites_info`;/* MySQLReback Separation */ CREATE TABLE `tp_invites_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(15) NOT NULL,
  `rdo_go` int(2) NOT NULL,
  `content` varchar(200) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_jiejing` */
 DROP TABLE IF EXISTS `tp_jiejing`;/* MySQLReback Separation */ CREATE TABLE `tp_jiejing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `pano` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_kefu` */
 DROP TABLE IF EXISTS `tp_kefu`;/* MySQLReback Separation */ CREATE TABLE `tp_kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `info2` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `sc` text NOT NULL,
  `cy` text NOT NULL,
  `lt` text NOT NULL,
  `yy` text NOT NULL,
  `zp` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_keyword` */
 DROP TABLE IF EXISTS `tp_keyword`;/* MySQLReback Separation */ CREATE TABLE `tp_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '0',
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_keyword` */
 INSERT INTO `tp_keyword` VALUES ('3','万水千山','1','twllsi1431226863','vCard','0','0'),('41','追风筝的人,风筝','19','twllsi1431226863','Product','0','0'),('39','股市,K线,练习','17','twllsi1431226863','Product','0','0'),('40','笑猫日记,云朵上的学校','18','twllsi1431226863','Product','0','0'),('38','笑猫日记,云朵上的学校','16','twllsi1431226863','Product','0','0'),('43','阳光姐姐,阳光姐姐小书房,叛逆的蛋壳组合','21','twllsi1431226863','Product','0','0'),('42','查理九世,稻草人之乡','20','twllsi1431226863','Product','0','0'),('19','从0到1,商业','14','twllsi1431226863','Product','0','0'),('20','从0到1,商业','14','twllsi1431226863','Product','0','0'),('21','秒杀','1','twllsi1431226863','Seckill','0','0'),('22','摁死小情侣','1','twllsi1431226863','Lottery','0','0'),('23','签到','1','twllsi1431226863','Sign','0','0'),('25','微助力','16','twllsi1431226863','Helping','0','0'),('35','waphelp','1','twllsi1431226863','waphelp','0','1'),('27','waphelp','1','','waphelp','0','1'),('37','样板房','1','twllsi1431226863','Panorama','0','0'),('44','殷健灵,不一样的暑假','22','twllsi1431226863','Product','0','0'),('45','管家琪,一只会做梦的狗','23','twllsi1431226863','Product','0','0'),('46','孤独,虽败犹荣','24','twllsi1431226863','Product','0','0'),('47','人性的弱点','25','twllsi1431226863','Product','0','0'),('48','傅雷家书','26','twllsi1431226863','Product','0','0'),('49','耶路撒冷','27','twllsi1431226863','Product','0','0'),('50','查理九世,稻草人之乡','28','twllsi1431226863','Product','0','0'),('51','阳光姐姐,阳光姐姐小书房,叛逆的蛋壳组合','29','twllsi1431226863','Product','0','0'),('52','殷健灵,不一样的暑假','30','twllsi1431226863','Product','0','0'),('53','管家琪,一只会做梦的狗','31','twllsi1431226863','Product','0','0'),('54','偷影子的人','32','twllsi1431226863','Product','0','0'),('55','孤独,虽败犹荣','33','twllsi1431226863','Product','0','0'),('56','活着,余华','34','twllsi1431226863','Product','0','0'),('57','百年孤独','35','twllsi1431226863','Product','0','0'),('58','啊','1','twllsi1431226863','Custom','0','0'),('115','','23','twllsi1431226863','Img','0','0'),('125','','27','twllsi1431226863','Img','0','0'),('107','','25','twllsi1431226863','Img','0','0'),('93','','26','twllsi1431226863','Img','0','0'),('99','查理九世','1','twllsi1431226863','Multi','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_leave` */
 DROP TABLE IF EXISTS `tp_leave`;/* MySQLReback Separation */ CREATE TABLE `tp_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1;/* MySQLReback Separation */
 /* 插入数据 `tp_leave` */
 INSERT INTO `tp_leave` VALUES ('1','onHRmuCEpECSyzxz_isbLqeUI0lw','1','soGary','博览书店是个好地方','twllsi1431226863','1432162030');/* MySQLReback Separation */
 /* 创建表结构 `tp_links` */
 DROP TABLE IF EXISTS `tp_links`;/* MySQLReback Separation */ CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `url` char(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(1) CHARACTER SET utf8 NOT NULL,
  `agentid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_live` */
 DROP TABLE IF EXISTS `tp_live`;/* MySQLReback Separation */ CREATE TABLE `tp_live` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_company` enum('0','1') NOT NULL,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `open_pic` char(120) NOT NULL,
  `is_masking` enum('0','1') NOT NULL,
  `masking_pic` char(120) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `music` char(120) NOT NULL,
  `end_pic` char(120) NOT NULL,
  `share_bg` char(120) NOT NULL,
  `share_button` char(120) NOT NULL,
  `add_time` char(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `token` char(25) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `warn` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_live_company` */
 DROP TABLE IF EXISTS `tp_live_company`;/* MySQLReback Separation */ CREATE TABLE `tp_live_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `top_pic` char(120) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `live_id` int(10) unsigned NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `show_map` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_live_content` */
 DROP TABLE IF EXISTS `tp_live_content`;/* MySQLReback Separation */ CREATE TABLE `tp_live_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `movie_pic` char(120) NOT NULL,
  `movie_link` char(200) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `sort` tinyint(4) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  `live_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle` */
 DROP TABLE IF EXISTS `tp_livingcircle`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` text,
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `navpic` varchar(100) NOT NULL,
  `mysellerpic` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_comment` */
 DROP TABLE IF EXISTS `tp_livingcircle_comment`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_comment` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `star` int(11) NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_favorite` */
 DROP TABLE IF EXISTS `tp_livingcircle_favorite`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_favorite` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_mysellercart` */
 DROP TABLE IF EXISTS `tp_livingcircle_mysellercart`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_mysellercart` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `orderid` int(11) NOT NULL DEFAULT '0',
  `goodsid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_mysellergoods` */
 DROP TABLE IF EXISTS `tp_livingcircle_mysellergoods`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_mysellergoods` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  `num` int(11) NOT NULL DEFAULT '1',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_mysellerorder` */
 DROP TABLE IF EXISTS `tp_livingcircle_mysellerorder`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_mysellerorder` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `sellerid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `price` varchar(100) NOT NULL,
  `addtime` int(11) NOT NULL,
  `paytype` varchar(50) DEFAULT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `third_id` varchar(100) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_sellcircle` */
 DROP TABLE IF EXISTS `tp_livingcircle_sellcircle`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_sellcircle` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `display` int(11) NOT NULL DEFAULT '1',
  `sellcircleid` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_seller` */
 DROP TABLE IF EXISTS `tp_livingcircle_seller`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_seller` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL,
  `zitypeid` int(11) NOT NULL DEFAULT '0',
  `sellcircleid` int(11) NOT NULL,
  `zisellcircleid` int(11) NOT NULL DEFAULT '0',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  `weurl` varchar(512) DEFAULT NULL,
  `recommend` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_type` */
 DROP TABLE IF EXISTS `tp_livingcircle_type`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_type` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `pic` varchar(100) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '1',
  `typeid` int(11) NOT NULL DEFAULT '0' COMMENT '父类id',
  `display` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `fistpic` varchar(100) NOT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_livingcircle_user` */
 DROP TABLE IF EXISTS `tp_livingcircle_user`;/* MySQLReback Separation */ CREATE TABLE `tp_livingcircle_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_lottery` */
 DROP TABLE IF EXISTS `tp_lottery`;/* MySQLReback Separation */ CREATE TABLE `tp_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infotxt` text NOT NULL,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `guanzhu` int(11) DEFAULT NULL COMMENT '是否关注',
  `fistpic` varchar(100) DEFAULT NULL,
  `secondpic` varchar(100) DEFAULT NULL,
  `thirdpic` varchar(100) DEFAULT NULL,
  `fourpic` varchar(100) DEFAULT NULL,
  `fivepic` varchar(100) DEFAULT NULL,
  `sixpic` varchar(100) DEFAULT NULL,
  `bg` varchar(100) DEFAULT NULL,
  `bgtype` int(11) NOT NULL DEFAULT '0',
  `timespan` int(11) NOT NULL DEFAULT '0',
  `isdaylottery` int(11) NOT NULL DEFAULT '0',
  `cardid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `zjpic` (`zjpic`) USING BTREE,
  KEY `zjpic_2` (`zjpic`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_lottery` */
 INSERT INTO `tp_lottery` VALUES ('1','','0','0','twllsi1431226863','摁死小情侣','http://weixin.blbook.cn/tpl/static/applegame/start2.jpg','摁死小情侣活动开始了','兑奖请联系我们，电话138********','','1432051200','1434643200','亲，请点击进入摁死小情侣活动页面，祝您好运哦！','亲，继续努力哦！','摁死小情侣活动已经结束了','http://weixin.blbook.cn/tpl/static/applegame/start2.jpg','亲，活动已经结束，请继续关注我们的后续活动哦。','《从0到1:开启商业与未来的秘密》','1','0','《自控力(斯坦福大学最受欢迎的心理学课程)》','8','3','0','《创业维艰:如何完成比难更难的事》','5','0','0','1','0','','','0','0','1','','0','0','','0','0','','0','0','','0','1','1','','','','','','','','','0','0','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_lottery_cheat` */
 DROP TABLE IF EXISTS `tp_lottery_cheat`;/* MySQLReback Separation */ CREATE TABLE `tp_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_lottery_record` */
 DROP TABLE IF EXISTS `tp_lottery_record`;/* MySQLReback Separation */ CREATE TABLE `tp_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` int(10) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_lottery_record` */
 INSERT INTO `tp_lottery_record` VALUES ('1','1','1','onHRmuCEpECSyzxz_isbLqeUI0lw','twllsi1431226863','0','soGary','18588872622','','98','','0','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_market` */
 DROP TABLE IF EXISTS `tp_market`;/* MySQLReback Separation */ CREATE TABLE `tp_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_market_area` */
 DROP TABLE IF EXISTS `tp_market_area`;/* MySQLReback Separation */ CREATE TABLE `tp_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_market_cate` */
 DROP TABLE IF EXISTS `tp_market_cate`;/* MySQLReback Separation */ CREATE TABLE `tp_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_market_nav` */
 DROP TABLE IF EXISTS `tp_market_nav`;/* MySQLReback Separation */ CREATE TABLE `tp_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` varchar(200) NOT NULL,
  `nav_link` varchar(200) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_market_park` */
 DROP TABLE IF EXISTS `tp_market_park`;/* MySQLReback Separation */ CREATE TABLE `tp_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` int(11) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_market_slide` */
 DROP TABLE IF EXISTS `tp_market_slide`;/* MySQLReback Separation */ CREATE TABLE `tp_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL DEFAULT '',
  `slide_url` char(100) NOT NULL,
  `slide_link` char(200) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical` */
 DROP TABLE IF EXISTS `tp_medical`;/* MySQLReback Separation */ CREATE TABLE `tp_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical_departments` */
 DROP TABLE IF EXISTS `tp_medical_departments`;/* MySQLReback Separation */ CREATE TABLE `tp_medical_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical_set` */
 DROP TABLE IF EXISTS `tp_medical_set`;/* MySQLReback Separation */ CREATE TABLE `tp_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) DEFAULT '',
  `menu10` varchar(50) DEFAULT '',
  `picurl1` varchar(200) DEFAULT '',
  `picurl2` varchar(200) DEFAULT '',
  `picurl3` varchar(200) DEFAULT '',
  `picurl4` varchar(200) DEFAULT '',
  `picurl5` varchar(200) DEFAULT '',
  `picurl6` varchar(200) DEFAULT '',
  `picurl7` varchar(200) DEFAULT '',
  `picurl8` varchar(200) DEFAULT '',
  `picurl9` varchar(200) DEFAULT '',
  `picurl10` varchar(200) DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical_setup` */
 DROP TABLE IF EXISTS `tp_medical_setup`;/* MySQLReback Separation */ CREATE TABLE `tp_medical_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical_setup_control` */
 DROP TABLE IF EXISTS `tp_medical_setup_control`;/* MySQLReback Separation */ CREATE TABLE `tp_medical_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` char(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `Process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_medical_user` */
 DROP TABLE IF EXISTS `tp_medical_user`;/* MySQLReback Separation */ CREATE TABLE `tp_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member` */
 DROP TABLE IF EXISTS `tp_member`;/* MySQLReback Separation */ CREATE TABLE `tp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_contact` */
 DROP TABLE IF EXISTS `tp_member_card_contact`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_coupon` */
 DROP TABLE IF EXISTS `tp_member_card_coupon`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` char(150) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `attr` enum('0','1') NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `card_id` char(50) NOT NULL,
  `is_weixin` tinyint(4) NOT NULL,
  `color` char(10) NOT NULL,
  `is_check` tinyint(4) NOT NULL,
  `least_cost` decimal(10,2) NOT NULL,
  `reduce_cost` decimal(10,2) NOT NULL,
  `gift_name` char(30) NOT NULL,
  `integral` int(11) NOT NULL,
  `brand_name` char(20) NOT NULL,
  `logourl` char(150) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `is_huodong` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_coupon_record` */
 DROP TABLE IF EXISTS `tp_member_card_coupon_record`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` enum('1','2','3') NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  `coupon_attr` text NOT NULL,
  `card_id` char(45) NOT NULL,
  `cancel_code` char(15) NOT NULL,
  `company_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `whereid` int(11) NOT NULL DEFAULT '0',
  `iswhere` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_create` */
 DROP TABLE IF EXISTS `tp_member_card_create`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `is_bind` tinyint(4) NOT NULL,
  `old_number` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_member_card_create` */
 INSERT INTO `tp_member_card_create` VALUES ('4','3','twllsi1431226863','BL1001','onHRmuCEpECSyzxz_isbLqeUI0lw','0',''),('5','3','twllsi1431226863','BL1002','onHRmuJBYmpp1rHh2AYbEWGQOqak','0',''),('6','3','twllsi1431226863','BL1003','onHRmuF4pgKcwuRnpyPGEuPDnR4E','0',''),('7','3','twllsi1431226863','BL1004','','0',''),('8','3','twllsi1431226863','BL1005','','0',''),('9','3','twllsi1431226863','BL1006','','0',''),('10','3','twllsi1431226863','BL1007','','0',''),('11','3','twllsi1431226863','BL1008','','0',''),('12','3','twllsi1431226863','BL1009','','0',''),('13','3','twllsi1431226863','BL1010','','0',''),('14','3','twllsi1431226863','BL1011','','0',''),('15','3','twllsi1431226863','BL1012','','0',''),('16','3','twllsi1431226863','BL1013','','0',''),('17','3','twllsi1431226863','BL1014','','0',''),('18','3','twllsi1431226863','BL1015','','0',''),('19','3','twllsi1431226863','BL1016','','0',''),('20','3','twllsi1431226863','BL1017','','0',''),('21','3','twllsi1431226863','BL1018','','0',''),('22','3','twllsi1431226863','BL1019','','0',''),('23','3','twllsi1431226863','BL1020','','0',''),('24','3','twllsi1431226863','BL1021','','0',''),('25','3','twllsi1431226863','BL1022','','0',''),('26','3','twllsi1431226863','BL1023','','0',''),('27','3','twllsi1431226863','BL1024','','0',''),('28','3','twllsi1431226863','BL1025','','0',''),('29','3','twllsi1431226863','BL1026','','0',''),('30','3','twllsi1431226863','BL1027','','0',''),('31','3','twllsi1431226863','BL1028','','0',''),('32','3','twllsi1431226863','BL1029','','0',''),('33','3','twllsi1431226863','BL1030','','0',''),('34','3','twllsi1431226863','BL1031','','0',''),('35','3','twllsi1431226863','BL1032','','0',''),('36','3','twllsi1431226863','BL1033','','0',''),('37','3','twllsi1431226863','BL1034','','0',''),('38','3','twllsi1431226863','BL1035','','0',''),('39','3','twllsi1431226863','BL1036','','0',''),('40','3','twllsi1431226863','BL1037','','0',''),('41','3','twllsi1431226863','BL1038','','0',''),('42','3','twllsi1431226863','BL1039','','0',''),('43','3','twllsi1431226863','BL1040','','0',''),('44','3','twllsi1431226863','BL1041','','0',''),('45','3','twllsi1431226863','BL1042','','0',''),('46','3','twllsi1431226863','BL1043','','0',''),('47','3','twllsi1431226863','BL1044','','0',''),('48','3','twllsi1431226863','BL1045','','0',''),('49','3','twllsi1431226863','BL1046','','0',''),('50','3','twllsi1431226863','BL1047','','0',''),('51','3','twllsi1431226863','BL1048','','0',''),('52','3','twllsi1431226863','BL1049','','0',''),('53','3','twllsi1431226863','BL1050','','0',''),('54','3','twllsi1431226863','BL1051','','0',''),('55','3','twllsi1431226863','BL1052','','0',''),('56','3','twllsi1431226863','BL1053','','0',''),('57','3','twllsi1431226863','BL1054','','0',''),('58','3','twllsi1431226863','BL1055','','0',''),('59','3','twllsi1431226863','BL1056','','0',''),('60','3','twllsi1431226863','BL1057','','0',''),('61','3','twllsi1431226863','BL1058','','0',''),('62','3','twllsi1431226863','BL1059','','0',''),('63','3','twllsi1431226863','BL1060','','0',''),('64','3','twllsi1431226863','BL1061','','0',''),('65','3','twllsi1431226863','BL1062','','0',''),('66','3','twllsi1431226863','BL1063','','0',''),('67','3','twllsi1431226863','BL1064','','0',''),('68','3','twllsi1431226863','BL1065','','0',''),('69','3','twllsi1431226863','BL1066','','0',''),('70','3','twllsi1431226863','BL1067','','0',''),('71','3','twllsi1431226863','BL1068','','0',''),('72','3','twllsi1431226863','BL1069','','0',''),('73','3','twllsi1431226863','BL1070','','0',''),('74','3','twllsi1431226863','BL1071','','0',''),('75','3','twllsi1431226863','BL1072','','0',''),('76','3','twllsi1431226863','BL1073','','0',''),('77','3','twllsi1431226863','BL1074','','0',''),('78','3','twllsi1431226863','BL1075','','0',''),('79','3','twllsi1431226863','BL1076','','0',''),('80','3','twllsi1431226863','BL1077','','0',''),('81','3','twllsi1431226863','BL1078','','0',''),('82','3','twllsi1431226863','BL1079','','0',''),('83','3','twllsi1431226863','BL1080','','0',''),('84','3','twllsi1431226863','BL1081','','0',''),('85','3','twllsi1431226863','BL1082','','0',''),('86','3','twllsi1431226863','BL1083','','0',''),('87','3','twllsi1431226863','BL1084','','0',''),('88','3','twllsi1431226863','BL1085','','0',''),('89','3','twllsi1431226863','BL1086','','0',''),('90','3','twllsi1431226863','BL1087','','0',''),('91','3','twllsi1431226863','BL1088','','0',''),('92','3','twllsi1431226863','BL1089','','0',''),('93','3','twllsi1431226863','BL1090','','0',''),('94','3','twllsi1431226863','BL1091','','0',''),('95','3','twllsi1431226863','BL1092','','0',''),('96','3','twllsi1431226863','BL1093','','0',''),('97','3','twllsi1431226863','BL1094','','0',''),('98','3','twllsi1431226863','BL1095','','0',''),('99','3','twllsi1431226863','BL1096','','0',''),('100','3','twllsi1431226863','BL1097','','0',''),('101','3','twllsi1431226863','BL1098','','0',''),('102','3','twllsi1431226863','BL1099','','0',''),('103','3','twllsi1431226863','BL1100','','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_custom` */
 DROP TABLE IF EXISTS `tp_member_card_custom`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  `is_wechaname` tinyint(1) NOT NULL DEFAULT '1',
  `is_tel` tinyint(1) NOT NULL DEFAULT '1',
  `is_truename` tinyint(1) NOT NULL DEFAULT '0',
  `is_qq` tinyint(1) NOT NULL DEFAULT '0',
  `is_paypass` tinyint(1) NOT NULL DEFAULT '1',
  `is_portrait` tinyint(1) NOT NULL DEFAULT '1',
  `is_sex` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornyear` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornmonth` tinyint(1) NOT NULL DEFAULT '0',
  `is_bornday` tinyint(1) NOT NULL DEFAULT '0',
  `carnumber` tinyint(4) NOT NULL,
  `is_carnumber` tinyint(1) NOT NULL,
  `cart` tinyint(4) NOT NULL DEFAULT '0',
  `is_cart` tinyint(1) NOT NULL DEFAULT '0',
  `address` tinyint(1) NOT NULL DEFAULT '0',
  `is_address` tinyint(1) NOT NULL DEFAULT '0',
  `origin` tinyint(1) NOT NULL DEFAULT '0',
  `is_origin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_donate` */
 DROP TABLE IF EXISTS `tp_member_card_donate`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_donate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(45) NOT NULL,
  `cardid` int(11) NOT NULL,
  `min_price` decimal(10,2) NOT NULL,
  `max_price` decimal(10,2) NOT NULL,
  `donate_price` decimal(10,2) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_exchange` */
 DROP TABLE IF EXISTS `tp_member_card_exchange`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `discount` int(4) NOT NULL COMMENT '充值折扣',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_focus` */
 DROP TABLE IF EXISTS `tp_member_card_focus`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_gifts` */
 DROP TABLE IF EXISTS `tp_member_card_gifts`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `item_value` int(11) NOT NULL,
  `item_attr` char(50) NOT NULL,
  `start` char(11) NOT NULL,
  `end` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `cardid` int(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_info` */
 DROP TABLE IF EXISTS `tp_member_card_info`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_integral` */
 DROP TABLE IF EXISTS `tp_member_card_integral`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL,
  `people` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_notice` */
 DROP TABLE IF EXISTS `tp_member_card_notice`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_pay_record` */
 DROP TABLE IF EXISTS `tp_member_card_pay_record`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_rule` */
 DROP TABLE IF EXISTS `tp_member_card_rule`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_rule` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `percent_rule` varchar(100) NOT NULL COMMENT '百分比返还',
  `fixed_rule` text NOT NULL COMMENT '固定返还',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_scorelottery` */
 DROP TABLE IF EXISTS `tp_member_card_scorelottery`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_scorelottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` varchar(11) NOT NULL DEFAULT '',
  `enddate` varchar(11) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL DEFAULT '',
  `people` int(11) NOT NULL,
  `ranknum` int(11) NOT NULL,
  `daynum` int(11) NOT NULL,
  `islottery` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_scorelottery_record` */
 DROP TABLE IF EXISTS `tp_member_card_scorelottery_record`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_scorelottery_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` varchar(100) NOT NULL DEFAULT '',
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  `staffid` char(11) NOT NULL DEFAULT '',
  `notes` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_set` */
 DROP TABLE IF EXISTS `tp_member_card_set`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `showname` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '显示卡名称',
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `showlogo` int(1) NOT NULL DEFAULT '1' COMMENT '显示logo',
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  `company_pwd` char(32) NOT NULL,
  `is_check` enum('0','1') NOT NULL,
  `donate_intro` text NOT NULL,
  `is_donate` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_member_card_set` */
 INSERT INTO `tp_member_card_set` VALUES ('3','twllsi1431226863','博览书店会员卡','1','0','/tpl/User/default/common/images/cart_info/logo-card.png','1','./tpl/User/default/common/images/card/card_bg05.png','/tpl/User/default/common/images/card/card_bg17.png','博览会员','微信会员卡，方便携带收藏，永不挂失','#000000','#121212','','','','','','','','1431271643','/tpl/User/default/common/images/cart_info/recharge.jpg','/tpl/User/default/common/images/cart_info/payrecord.jpg','','0','','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_sign` */
 DROP TABLE IF EXISTS `tp_member_card_sign`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_member_card_sign` */
 INSERT INTO `tp_member_card_sign` VALUES ('0','twllsi1431226863','onHRmuF4pgKcwuRnpyPGEuPDnR4E','1439486180','1','1','0','0'),('0','twllsi1431226863','onHRmuF4pgKcwuRnpyPGEuPDnR4E','0','0','1','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_signcp` */
 DROP TABLE IF EXISTS `tp_member_card_signcp`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_signcp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` varchar(11) NOT NULL DEFAULT '',
  `enddate` varchar(11) NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL,
  `people` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_signcp_record` */
 DROP TABLE IF EXISTS `tp_member_card_signcp_record`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_signcp_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` varchar(100) NOT NULL DEFAULT '',
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  `staffid` char(11) NOT NULL DEFAULT '',
  `notes` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_use_record` */
 DROP TABLE IF EXISTS `tp_member_card_use_record`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  `notes` varchar(300) NOT NULL,
  `company_id` int(11) NOT NULL,
  `cardid` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `orderid` char(35) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_member_card_use_record` */
 INSERT INTO `tp_member_card_use_record` VALUES ('10','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0','99','0','0','1','1438873394','','0','0','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_member_card_vip` */
 DROP TABLE IF EXISTS `tp_member_card_vip`;/* MySQLReback Separation */ CREATE TABLE `tp_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_microsoft_withdraw` */
 DROP TABLE IF EXISTS `tp_microsoft_withdraw`;/* MySQLReback Separation */ CREATE TABLE `tp_microsoft_withdraw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pigcms_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `opening_bank` varchar(100) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_card` varchar(100) NOT NULL DEFAULT '' COMMENT '卡号',
  `bank_card_user` varchar(100) NOT NULL DEFAULT '' COMMENT '开户名',
  `withdrawal_type` tinyint(1) NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '',
  `amount` float(6,2) NOT NULL,
  `complate_time` int(11) NOT NULL,
  `bank` char(30) NOT NULL,
  `tel` char(30) NOT NULL,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `store` varchar(100) NOT NULL DEFAULT '',
  `user` varchar(100) NOT NULL DEFAULT '',
  `token` char(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_micrstore` */
 DROP TABLE IF EXISTS `tp_micrstore`;/* MySQLReback Separation */ CREATE TABLE `tp_micrstore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paid` tinyint(4) NOT NULL,
  `third_id` varchar(50) DEFAULT NULL,
  `orderid` varchar(50) NOT NULL,
  `price` float unsigned NOT NULL,
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `trade_no` char(50) DEFAULT NULL,
  `paytype` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_micrstore_reply` */
 DROP TABLE IF EXISTS `tp_micrstore_reply`;/* MySQLReback Separation */ CREATE TABLE `tp_micrstore_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `token` varchar(100) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_mobilesite` */
 DROP TABLE IF EXISTS `tp_mobilesite`;/* MySQLReback Separation */ CREATE TABLE `tp_mobilesite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) CHARACTER SET utf8 NOT NULL,
  `owndomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '自己站点域名',
  `admindomain` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '后台域名',
  `tjscript` text CHARACTER SET utf8 NOT NULL COMMENT '第三方js脚本字符创',
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_article` */
 DROP TABLE IF EXISTS `tp_moopha_article`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_attachement` */
 DROP TABLE IF EXISTS `tp_moopha_attachement`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_channel` */
 DROP TABLE IF EXISTS `tp_moopha_channel`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_channel_contentattribute` */
 DROP TABLE IF EXISTS `tp_moopha_channel_contentattribute`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_keywords` */
 DROP TABLE IF EXISTS `tp_moopha_keywords`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_picture` */
 DROP TABLE IF EXISTS `tp_moopha_picture`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_site` */
 DROP TABLE IF EXISTS `tp_moopha_site`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_template` */
 DROP TABLE IF EXISTS `tp_moopha_template`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_moopha_user` */
 DROP TABLE IF EXISTS `tp_moopha_user`;/* MySQLReback Separation */ CREATE TABLE `tp_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_msg` */
 DROP TABLE IF EXISTS `tp_msg`;/* MySQLReback Separation */ CREATE TABLE `tp_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_nearby_user` */
 DROP TABLE IF EXISTS `tp_nearby_user`;/* MySQLReback Separation */ CREATE TABLE `tp_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_news` */
 DROP TABLE IF EXISTS `tp_news`;/* MySQLReback Separation */ CREATE TABLE `tp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxname` varchar(200) NOT NULL,
  `token` char(150) NOT NULL,
  `class1` int(11) NOT NULL,
  `class2` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `agentid` int(11) NOT NULL DEFAULT '0',
  `agentind` int(11) NOT NULL DEFAULT '0',
  `class3` int(11) NOT NULL,
  `name1` varchar(200) NOT NULL,
  `name2` varchar(200) NOT NULL,
  `name3` varchar(200) NOT NULL,
  `title` varchar(90) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` char(60) NOT NULL,
  `category` int(1) NOT NULL COMMENT '1:动态，2：公告，3：其他',
  `content` text NOT NULL,
  `imgs` char(120) NOT NULL,
  `showtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_node` */
 DROP TABLE IF EXISTS `tp_node`;/* MySQLReback Separation */ CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_node` */
 INSERT INTO `tp_node` VALUES ('125','upsave','更新数据库','1','0','88','3','','0','0'),('124','del','删除功能','1','0','88','3','','0','0'),('123','upsave','更新数据库','1','0','117','3','','0','0'),('122','insert','写入数据库','1','0','117','3','','0','0'),('121','edit','编辑横幅','1','0','117','3','','0','0'),('120','add','添加横幅','1','0','117','3','','0','0'),('119','index','图片列表','1','0','117','3','','0','2'),('118','insert','写入数据库','1','0','111','3','','0','0'),('117','Images','横幅图片','1','0','4','2','','0','2'),('116','add','添加新闻','1','0','111','3','','0','0'),('115','upsave','更新数据库','1','0','111','3','','0','0'),('114','del','删除新闻','1','0','111','3','','0','0'),('113','edit','编辑新闻','1','0','111','3','','0','0'),('112','index','新闻列表','1','0','111','3','','0','2'),('111','News','新闻管理','1','0','4','2','','0','2'),('110','upsave','更新数据库','1','0','104','3','','0','0'),('109','insert','写入数据库','1','0','104','3','','0','0'),('108','del','删除更新','1','0','104','3','','0','0'),('107','edit','编辑更新','1','0','104','3','','0','0'),('106','add','添加功能','1','0','104','3','','0','2'),('105','index','功能列表','1','0','104','3','','0','2'),('104','Renew','功能更新进程','1','0','4','2','','0','2'),('103','del','删除幻灯片','1','0','97','3','','0','0'),('102','upsave','更新数据库','1','0','97','3','','0','0'),('101','insert','插入数据库','1','0','97','3','','0','0'),('100','edit','编辑幻灯片','1','0','97','3','','0','0'),('99','add','添加幻灯片','1','0','97','3','','0','2'),('98','index','幻灯片列表','1','0','97','3','','0','2'),('97','Banners','首页幻灯片','1','0','4','2','','0','2'),('96','add','添加','1','0','88','3','','0','2'),('95','Aboutus','关于我们','1','0','45','2','','0','2'),('94','platform','平台支付配置','1','0','6','3','','9','2'),('93','index','对帐列表','1','0','92','3','','0','2'),('92','Platform','平台支付','1','0','4','2','','0','2'),('88','Funintro','功能介绍','1','0','45','2','','0','2'),('87','sms','短信接口','1','','6','3','','6','2'),('83','alipay','在线支付接口','1','0','6','3','','5','2'),('81','Token','公众号管理','1','0','80','2','','0','2'),('79','del','删除友情链接','1','0','73','3','','0','0'),('78','upsave','更新数据库','1','0','73','3','','0','0'),('77','insert','插入数据库','1','0','73','3','','0','0'),('75','add','添加链接','1','0','73','3','','0','2'),('76','edit','编辑链接','1','0','73','3','','0','0'),('74','index','友情链接','1','0','73','3','','0','2'),('73','Links','友情链接','1','0','4','2','','0','2'),('72','upsave','更新数据库','1','0','66','3','','0','0'),('71','insert','写入数据库','1','0','66','3','','0','0'),('70','del','删除案例','1','0','66','3','','0','0'),('69','edit','编辑案例','1','0','66','3','','0','0'),('68','add','添加案例','1','0','66','3','','0','2'),('67','index','案例列表','1','0','66','3','','0','2'),('65','index','充值列表','1','0','64','3','','0','2'),('66','Case','客户案例','1','0','4','2','','0','2'),('64','Records','充值记录','1','0','4','2','','0','2'),('62','edit','编辑','1','0','60','3','','0','0'),('63','del','删除','1','0','60','3','','0','0'),('61','index','列表','1','0','60','3','','0','2'),('60','Custom','自定义页面','1','0','5','2','','0','2'),('59','del','删除','1','0','57','3','','0','0'),('58','index','文本列表','1','0','57','3','','0','2'),('57','Text','微信文本','1','0','5','2','','0','2'),('56','upsave','更新客户','1','0','50','3','','0','0'),('55','insert','写入数据库','1','0','50','3','','0','0'),('54','del','删除客户','1','0','50','3','','0','0'),('53','edit','编辑客户','1','0','50','3','','0','0'),('52','add','添加客户','1','0','50','3','','0','2'),('51','index','客户列表','1','0','50','3','','0','0'),('50','Users','客户管理','1','0','3','2','','0','2'),('49','add','添加套餐','1','0','48','3','','0','2'),('48','User_group','套餐管理','1','0','3','2','','0','2'),('47','add','添加模块','1','0','46','3','','0','2'),('46','Function','功能模块','1','0','45','2','','0','2'),('45','Function','功能模块','1','0','1','0','','5','1'),('80','token','公众号管理','1','0','1','0','','3','1'),('42','del','微信图文删除','1','0','38','3','','0','0'),('41','edit','微信图文编辑','1','0','38','3','','0','0'),('39','index','图文列表','1','0','38','3','','0','2'),('40','add','图文添加','1','0','38','3','','0','2'),('38','Article','微信图文','1','0','5','2','','0','2'),('37','main','右侧栏目','1','0','35','3','','0','0'),('35','System','首页','1','0','2','2','','0','0'),('36','menu','左侧栏','1','0','35','3','','0','0'),('32','insert','保存','1','0','6','3','','0','0'),('148','role_sort','排序','1','','25','3','','0','0'),('30','insert','写入数据库','1','0','25','3','','0','0'),('29','del','删除套餐','1','0','25','3','','0','0'),('28','edit','编辑套餐','1','0','25','3','','0','0'),('27','index','管理组列表','1','0','25','3','','0','2');/* MySQLReback Separation */
 /* 插入数据 `tp_node` */
 INSERT INTO `tp_node` VALUES ('26','add','创建管理组','1','0','25','3','','0','2');/* MySQLReback Separation */
 /* 插入数据 `tp_node` */
 INSERT INTO `tp_node` VALUES ('25','Group','管理组','1','0','3','2','','0','2'),('24','del','删除客户','1','0','18','3','','0','0'),('23','update','更新客户','1','0','18','3','','0','0'),('22','insert','写入数据库','1','0','18','3','','0','0'),('21','edit','编辑客户','1','0','18','3','','0','0'),('20','index','站长列表','1','0','18','3','','0','2'),('19','add','添加站长','1','0','18','3','','0','2'),('18','User','站长管理','1','0','3','2','','0','2'),('17','del','删除节点','1','0','11','3','','0','0'),('16','update','更新节点','1','0','11','3','','0','0'),('15','edit','编辑节点','1','0','11','3','','0','0'),('14','insert','写入','1','0','11','3','','0','0'),('13','index','节点列表','1','','11','3','','0','2'),('12','add','添加节点','1','','11','3','','0','2'),('11','Node','节点管理','1','','2','2','','2','2'),('10','upfile','附件设置','1','','6','3','','4','2'),('9','email','邮箱设置','1','','6','3','','3','2'),('8','safe','安全设置','1','','6','3','','2','2'),('7','index','基本信息设置','1','','6','3','','1','2'),('6','Site','站点设置','1','','2','2','','1','2'),('5','article','内容管理','1','','1','0','','4','1'),('4','extent','扩展管理','1','','1','0','','6','1'),('3','User','客户管理','1','','1','0','','2','1'),('2','Site','站点管理','1','','1','0','','1','1'),('1','cms','根节点','1','','0','1','','0','0'),('126','insert','写入数据库','1','0','88','3','','0','0'),('127','index','功能列表','1','0','88','3','','1','2'),('128','edit','修改功能','1','0','88','3','','0','0'),('129','addclass','添加分类','1','0','88','3','','2','2'),('130','indexs','分类管理','1','0','88','3','','3','2'),('131','indexs','分类管理','1','0','66','3','','0','2'),('132','addclass','添加分类','1','0','66','3','','0','2'),('133','SystemIndex','后台首页','1','0','2','2','','4','2'),('134','Agent','代理商管理','1','0','1','2','','5','1'),('135','Agent','代理商管理','1','0','134','2','','0','2'),('136','add','添加','1','0','135','3','','0','2'),('137','AgentPrice','优惠套餐包','1','0','134','2','','0','2'),('138','add','添加','1','0','137','3','','0','2'),('139','AgentBuyRecords','消费记录','1','0','134','2','','0','2'),('140','add','添加','1','0','95','3','','0','2'),('141','index','后台管理','1','','35','3','','0','0'),('142','Index','回滚','1','','35','2','','0','0'),('143','rollback','回滚程序','1','','142','3','','0','0'),('144','checkUpdate','升级程序','1','','35','3','','0','0'),('145','doSqlUpdate','升级数据库','1','','35','3','','0','0'),('146','index','后台管理','1','','133','3','','0','0'),('147','mysqlajax','优化修复数据库','1','','6','3','','0','0'),('149','access','权限浏览','1','','25','3','','0','0'),('150','access_edit','权限编辑','1','','25','3','','0','0'),('151','index','管理组列表','1','','48','3','','0','2'),('152','edit','修改套餐','1','','48','3','','0','0'),('153','del','删除套餐','1','','48','3','','0','0'),('154','search','客户搜索','1','','50','3','','0','0'),('155','syname','设为系统用户','1','','50','3','','0','0'),('156','sysname','取消系统用户','1','','50','3','','0','0'),('157','index','公众号列表','1','','81','3','','0','2'),('158','del','公众号删除','1','','81','3','','0','0'),('159','index','列表','1','','95','3','','0','2'),('160','edit','修改','1','','95','3','','0','0'),('161','del','删除','1','','95','3','','0','0'),('162','adds','执行添加分类','1','','88','3','','0','0'),('163','edits','分类修改','1','','88','3','','0','0'),('164','dels','分类删除','1','','88','3','','0','0'),('165','upsaves','执行分类修改','1','','88','3','','0','0'),('166','search','确认设置分类','1','','88','3','','0','0'),('167','index','列表','1','','46','3','','0','2'),('168','edit','修改','1','','46','3','','0','0'),('169','del','删除','1','','46','3','','0','0'),('170','paid','处理账单','1','','92','3','','0','0'),('171','paid_all','一键处理','1','','92','3','','0','0'),('172','add','添加','1','','92','3','','0','0'),('173','del','删除','1','','92','3','','0','0'),('174','edit','修改','1','','92','3','','0','0'),('175','insert','插入数据库','1','','92','3','','0','0'),('176','upsave','更新数据库','1','','92','3','','0','0'),('177','adds','执行分类添加','1','','66','3','','0','0'),('178','edits','分类修改','1','','66','3','','0','0'),('179','upsaves','执行分类修改','1','','66','3','','0','0'),('180','dels','分类删除','1','','66','3','','0','0'),('181','send','确认充值','1','','64','3','','0','0'),('185','Database','数据库维护','1','0','2','2','','3','2'),('186','themes','模板设置','1','0','6','3','','7','2'),('187','rippleos_key','微WIFI','1','0','6','3','','8','2'),('188','wechat_api','登录授权','1','0','6','3','','10','2'),('189','Examine_image','图片审核','1','','4','2','','0','2'),('190','index','图片列表','1','','189','3','','0','2'),('191','del','删除','1','','189','3','','0','0'),('192','set','审核','1','','189','3','','0','0'),('193','set_all','一键审核','1','','189','3','','0','0');/* MySQLReback Separation */
 /* 插入数据 `tp_node` */
 INSERT INTO `tp_node` VALUES ('194','Susceptible','敏感词过滤','1','','4','2','','0','2');/* MySQLReback Separation */
 /* 插入数据 `tp_node` */
 INSERT INTO `tp_node` VALUES ('195','index','列表','1','','194','3','','0','2'),('196','add','添加','1','','194','3','','0','2'),('197','adds','批量添加','1','','194','3','','0','2'),('198','del','删除','1','','194','3','','0','0'),('199','set','开启关闭','1','','194','3','','0','0'),('200','set_all','一键开启关闭','1','','194','3','','0','0'),('201','edit','修改','1','','194','3','','0','0'),('202','CheckUpdate','更新程序','1','','2','2','','0','0'),('203','DoSqlUpdate','更新数据库','1','','2','2','','0','0'),('204','info','查看详情','1','','189','3','','0','0'),('205','Use','数据统计','1','','4','2','','0','2'),('206','index','统计图表','1','','205','3','','0','2'),('207','Customs','自定义导航','1','','4','2','','0','2'),('208','index','导航列表','1','','207','3','','0','2');/* MySQLReback Separation */
 /* 创建表结构 `tp_norms` */
 DROP TABLE IF EXISTS `tp_norms`;/* MySQLReback Separation */ CREATE TABLE `tp_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL,
  `value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_notice_record` */
 DROP TABLE IF EXISTS `tp_notice_record`;/* MySQLReback Separation */ CREATE TABLE `tp_notice_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `n_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `n_id` (`n_id`) USING BTREE,
  KEY `customerid` (`userid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_numqueue_action` */
 DROP TABLE IF EXISTS `tp_numqueue_action`;/* MySQLReback Separation */ CREATE TABLE `tp_numqueue_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reply_keyword` char(30) NOT NULL,
  `reply_pic` varchar(100) NOT NULL,
  `reply_title` varchar(20) NOT NULL,
  `reply_content` varchar(200) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '1',
  `token` char(25) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_numqueue_admin` */
 DROP TABLE IF EXISTS `tp_numqueue_admin`;/* MySQLReback Separation */ CREATE TABLE `tp_numqueue_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登陆密码',
  `wecha_id` char(50) NOT NULL DEFAULT '',
  `store_id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '' COMMENT '所属权限',
  `token` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_numqueue_receive` */
 DROP TABLE IF EXISTS `tp_numqueue_receive`;/* MySQLReback Separation */ CREATE TABLE `tp_numqueue_receive` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `queue_type` char(5) NOT NULL DEFAULT 'A' COMMENT '等待类型',
  `queue_number` char(30) NOT NULL DEFAULT '' COMMENT '排队号码',
  `numbers` int(11) NOT NULL DEFAULT '0',
  `phone` char(30) NOT NULL DEFAULT '0' COMMENT '手机号',
  `status` tinyint(1) NOT NULL COMMENT '号码状态',
  `wecha_id` char(50) NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;/* MySQLReback Separation */
 /* 创建表结构 `tp_numqueue_store` */
 DROP TABLE IF EXISTS `tp_numqueue_store`;/* MySQLReback Separation */ CREATE TABLE `tp_numqueue_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `store_type` tinyint(1) NOT NULL,
  `opentime` tinyint(4) NOT NULL DEFAULT '0',
  `closetime` tinyint(4) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL COMMENT 'logo',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `remark` char(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_value` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL DEFAULT '',
  `privilege_link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `action_id` int(11) NOT NULL,
  `token` char(50) NOT NULL,
  `jump_name` varchar(255) NOT NULL,
  `hankowthames` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL,
  `wait_time` int(11) NOT NULL DEFAULT '0',
  `allow_distance` float(6,2) NOT NULL,
  `need_numbers` tinyint(1) NOT NULL DEFAULT '0',
  `need_wait` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_ordering_class` */
 DROP TABLE IF EXISTS `tp_ordering_class`;/* MySQLReback Separation */ CREATE TABLE `tp_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_ordering_set` */
 DROP TABLE IF EXISTS `tp_ordering_set`;/* MySQLReback Separation */ CREATE TABLE `tp_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_orderprinter` */
 DROP TABLE IF EXISTS `tp_orderprinter`;/* MySQLReback Separation */ CREATE TABLE `tp_orderprinter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `companyid` int(10) NOT NULL DEFAULT '0',
  `printtype` varchar(2) NOT NULL DEFAULT '',
  `apikey` varchar(100) NOT NULL DEFAULT '',
  `mc` varchar(50) NOT NULL DEFAULT '',
  `mcode` varchar(60) NOT NULL DEFAULT '',
  `mkey` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `count` mediumint(5) NOT NULL DEFAULT '1',
  `modules` varchar(100) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_other` */
 DROP TABLE IF EXISTS `tp_other`;/* MySQLReback Separation */ CREATE TABLE `tp_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_panorama` */
 DROP TABLE IF EXISTS `tp_panorama`;/* MySQLReback Separation */ CREATE TABLE `tp_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_panorama` */
 INSERT INTO `tp_panorama` VALUES ('1','twllsi1431226863','精品样板房','精品样板房','','/tpl/User/default/common/images/panorama/0.jpg','/tpl/User/default/common/images/panorama/1.jpg','/tpl/User/default/common/images/panorama/2.jpg','/tpl/User/default/common/images/panorama/3.jpg','/tpl/User/default/common/images/panorama/4.jpg','/tpl/User/default/common/images/panorama/5.jpg','样板房','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_paper` */
 DROP TABLE IF EXISTS `tp_paper`;/* MySQLReback Separation */ CREATE TABLE `tp_paper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_config` */
 DROP TABLE IF EXISTS `tp_pc_config`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_config` (
  `token` varchar(50) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `site_logo` varchar(150) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `site_qq` varchar(100) NOT NULL,
  `site_phone` varchar(100) NOT NULL,
  `site_email` varchar(100) NOT NULL,
  `site_count` text NOT NULL,
  `site_icp` varchar(100) NOT NULL,
  `seo_title` varchar(200) NOT NULL,
  `seo_keywords` varchar(200) NOT NULL,
  `seo_description` text NOT NULL,
  `site_tpl` text NOT NULL,
  `other_info` text NOT NULL COMMENT '模板自定义配置项，序列化存储',
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_down` */
 DROP TABLE IF EXISTS `tp_pc_down`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_down_category` */
 DROP TABLE IF EXISTS `tp_pc_down_category`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_down_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_flash` */
 DROP TABLE IF EXISTS `tp_pc_flash`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `url` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_flash_cat` */
 DROP TABLE IF EXISTS `tp_pc_flash_cat`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_flash_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL COMMENT '分类Key,使用Key调用轮播图',
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_nav` */
 DROP TABLE IF EXISTS `tp_pc_nav`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_news` */
 DROP TABLE IF EXISTS `tp_pc_news`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_news_category` */
 DROP TABLE IF EXISTS `tp_pc_news_category`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_news_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_page` */
 DROP TABLE IF EXISTS `tp_pc_page`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_product` */
 DROP TABLE IF EXISTS `tp_pc_product`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hits` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_product_category` */
 DROP TABLE IF EXISTS `tp_pc_product_category`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_product_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_key` varchar(50) NOT NULL,
  `cat_sort` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_key` (`cat_key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pc_site` */
 DROP TABLE IF EXISTS `tp_pc_site`;/* MySQLReback Separation */ CREATE TABLE `tp_pc_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `site` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site` (`site`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_photo` */
 DROP TABLE IF EXISTS `tp_photo`;/* MySQLReback Separation */ CREATE TABLE `tp_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_photo` */
 INSERT INTO `tp_photo` VALUES ('1','twllsi1431226863','博览书店','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/3/b/9/thumb_55c29ade86da2.jpg','0','10','1','0','博览书店一览'),('2','twllsi1431226863','8月17日查理九世签售会','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/c/4/5/thumb_55c9e35ca0a81.jpg','0','23','1','0','8月17日博览书店番禺大石店和番禺万达店举办查理九世签售会！
带着孩子与查理九世一起去探险！ 你准备好了吗？');/* MySQLReback Separation */
 /* 创建表结构 `tp_photo_list` */
 DROP TABLE IF EXISTS `tp_photo_list`;/* MySQLReback Separation */ CREATE TABLE `tp_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_photo_list` */
 INSERT INTO `tp_photo_list` VALUES ('8','twllsi1431226863','1','钟村分店','3','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/0/1/1/55c29b7707ab5.jpg','1438817188','1',''),('5','twllsi1431226863','1','石楼分店','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/2/2/5/55c29b91ccc4f.jpg','1438817188','1',''),('6','twllsi1431226863','1','洛城分店','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/7/3/6/55c29b86ce624.jpg','1438817188','1',''),('7','twllsi1431226863','1','大石分店','2','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/c/9/b/55c29b7ee0c17.jpg','1438817188','1',''),('9','twllsi1431226863','1','石基分店','4','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/5/a/1/55c29b6f7f294.jpg','1438817188','1',''),('10','twllsi1431226863','1','榄核分店','5','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/9/b/4/55c29b677cd84.jpg','1438817188','1',''),('11','twllsi1431226863','1','南村分店','6','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/4/6/a/55c29b5ddf843.jpg','1438817188','1',''),('12','twllsi1431226863','1','黄阁分店','7','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/1/d/3/55c29b482e919.jpg','1438817188','1',''),('13','twllsi1431226863','1','北滘分店','8','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/4/a/6/55c29b34413b5.jpg','1438817188','1',''),('14','twllsi1431226863','1','万达分店','9','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/6/4/8/55c29b2acd1bd.jpg','1438817188','1',''),('15','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/a/2/a/55c9e61396a09.jpg','1439295029','1',''),('20','twllsi1431226863','2','查理九世在博览','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/2/7/3/55c9e7452e12f.jpg','1439295306','1','简直热门啊！'),('17','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/2/6/a/55c9e6d137104.jpg','1439295187','1',''),('18','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/8/0/55c9e6ccaf9d0.jpg','1439295187','1',''),('19','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/2/4/6/55c9e6c317f9b.jpg','1439295187','1',''),('21','twllsi1431226863','2','墨多多','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/5/c/0/55c9e7ac7aa21.jpg','1439295418','1',''),('22','twllsi1431226863','2','尧婷婷','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/1/0/1/55c9e78a392ca.jpg','1439295418','1',''),('23','twllsi1431226863','2','扶幽','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/d/8/9/55c9e7777f886.jpg','1439295418','1',''),('24','twllsi1431226863','2','虎鲨','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/8/b/5/55c9e76bb9c70.jpg','1439295418','1',''),('25','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/4/f/55c9e80b16940.jpg','1439295529','1',''),('26','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/2/9/8/55c9e80a7fc50.jpg','1439295529','1',''),('50','twllsi1431226863','2','博览书店万达店','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/2/7/9/55c9f0a319a74.png','1439297744','1',''),('28','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/3/2/9/55c9e8094bf21.jpg','1439295529','1',''),('29','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/f/6/5/55c9e808be65d.jpg','1439295529','1',''),('30','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/7/b/e/d/55c9e80830cce.jpg','1439295529','1',''),('33','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/e/3/b/55c9e8066ec3c.jpg','1439295529','1',''),('34','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/b/a/55c9e805d479c.jpg','1439295529','1',''),('51','twllsi1431226863','2','博览书店万达店','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/8/8/9/55c9f0a272e4b.png','1439297744','1',''),('40','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/4/1/e/55c9e801e8eaa.jpg','1439295529','1',''),('41','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/1/9/2/55c9e80154afe.jpg','1439295529','1',''),('45','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/f/8/4/55c9e7fed35ab.jpg','1439295529','1',''),('46','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/4/f/b/55c9e7fe3dff6.jpg','1439295529','1',''),('49','twllsi1431226863','2','查理九世','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/4/4/8/55c9e7fc73f41.jpg','1439295529','1','');/* MySQLReback Separation */
 /* 创建表结构 `tp_photo_log` */
 DROP TABLE IF EXISTS `tp_photo_log`;/* MySQLReback Separation */ CREATE TABLE `tp_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_photography` */
 DROP TABLE IF EXISTS `tp_photography`;/* MySQLReback Separation */ CREATE TABLE `tp_photography` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '相册id',
  `token` varchar(60) NOT NULL COMMENT '所属公众号',
  `keyword` varchar(60) NOT NULL COMMENT '关键字',
  `tpl` varchar(30) NOT NULL DEFAULT 'index' COMMENT '模板名',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `picurl` varchar(200) NOT NULL COMMENT '封面图',
  `openpic` varchar(200) NOT NULL COMMENT '开场图',
  `toppic` varchar(200) NOT NULL COMMENT '顶部图',
  `man` varchar(30) NOT NULL COMMENT '男方姓名',
  `woman` varchar(30) NOT NULL COMMENT '女方姓名',
  `who_first` tinyint(1) NOT NULL COMMENT '谁名字在先',
  `video` varchar(200) NOT NULL COMMENT '视频',
  `mp3url` varchar(200) NOT NULL COMMENT '背景音乐',
  `word` varchar(200) NOT NULL COMMENT '留言',
  `firstvote` varchar(20) NOT NULL COMMENT '第一个投票内容',
  `firstvotenum` int(1) NOT NULL COMMENT '第一个投票票数',
  `secondvote` varchar(20) NOT NULL COMMENT '第二个投票内容',
  `secondvotenum` int(1) NOT NULL COMMENT '第二个投票票数',
  `thirdvote` varchar(20) NOT NULL COMMENT '第三个投票内容',
  `thirdvotenum` int(1) NOT NULL COMMENT '第三个投票票数',
  `first` varchar(100) NOT NULL COMMENT '第一个奖品',
  `firstnum` int(1) NOT NULL COMMENT '第一个奖品需要的助力数量',
  `second` varchar(100) NOT NULL COMMENT '第二个奖品',
  `secondnum` int(1) NOT NULL COMMENT '第二个奖品数量',
  `nownum` int(1) NOT NULL COMMENT '当前助力数量',
  `success` varchar(100) NOT NULL COMMENT '报名成功提示',
  `bottompic` varchar(200) NOT NULL COMMENT '底部图片',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `toolbar` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示分类按钮',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_photography_info` */
 DROP TABLE IF EXISTS `tp_photography_info`;/* MySQLReback Separation */ CREATE TABLE `tp_photography_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '主表id',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_photography_ip` */
 DROP TABLE IF EXISTS `tp_photography_ip`;/* MySQLReback Separation */ CREATE TABLE `tp_photography_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '主表id',
  `ip` varchar(32) NOT NULL COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_pic_wall` */
 DROP TABLE IF EXISTS `tp_pic_wall`;/* MySQLReback Separation */ CREATE TABLE `tp_pic_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL COMMENT '点击次数',
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL COMMENT '活动结束图片网址',
  `endinfo` varchar(60) NOT NULL COMMENT '活动结束说明',
  `status` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `ischeck` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_pic_walllog` */
 DROP TABLE IF EXISTS `tp_pic_walllog`;/* MySQLReback Separation */ CREATE TABLE `tp_pic_walllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '活动id',
  `token` varchar(60) NOT NULL COMMENT '公众账号token',
  `picurl` varchar(100) NOT NULL COMMENT '照片链接',
  `wecha_id` varchar(30) NOT NULL COMMENT '微信用户id',
  `username` varchar(30) NOT NULL COMMENT '微信用户名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `state` int(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_platform_pay` */
 DROP TABLE IF EXISTS `tp_platform_pay`;/* MySQLReback Separation */ CREATE TABLE `tp_platform_pay` (
  `platform_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`platform_id`),
  KEY `time` (`time`),
  KEY `orderid` (`orderid`,`from`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_popularity` */
 DROP TABLE IF EXISTS `tp_popularity`;/* MySQLReback Separation */ CREATE TABLE `tp_popularity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(35) NOT NULL,
  `title` char(45) NOT NULL,
  `pic` char(200) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `info` text NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `add_time` char(15) NOT NULL,
  `show_num` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_popularity_prize` */
 DROP TABLE IF EXISTS `tp_popularity_prize`;/* MySQLReback Separation */ CREATE TABLE `tp_popularity_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(45) NOT NULL,
  `img` char(200) NOT NULL,
  `num` int(11) NOT NULL,
  `use_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `gt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;/* MySQLReback Separation */
 /* 创建表结构 `tp_popularity_share` */
 DROP TABLE IF EXISTS `tp_popularity_share`;/* MySQLReback Separation */ CREATE TABLE `tp_popularity_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `share_key` char(32) NOT NULL,
  `add_time` char(15) NOT NULL,
  `num` int(11) NOT NULL,
  `share_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_popularity_user` */
 DROP TABLE IF EXISTS `tp_popularity_user`;/* MySQLReback Separation */ CREATE TABLE `tp_popularity_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(35) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `is_real` tinyint(4) NOT NULL,
  `share_num` int(100) NOT NULL,
  `share_code` varchar(100) NOT NULL,
  `is_see` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;/* MySQLReback Separation */
 /* 创建表结构 `tp_present` */
 DROP TABLE IF EXISTS `tp_present`;/* MySQLReback Separation */ CREATE TABLE `tp_present` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `class` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `info` varchar(300) NOT NULL,
  `img` char(250) NOT NULL,
  `classname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_problem_game` */
 DROP TABLE IF EXISTS `tp_problem_game`;/* MySQLReback Separation */ CREATE TABLE `tp_problem_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `title` char(60) NOT NULL,
  `keyword` char(20) NOT NULL,
  `logo_pic` char(120) NOT NULL,
  `token` char(25) NOT NULL,
  `banner` char(120) NOT NULL,
  `explain` varchar(600) NOT NULL,
  `rule` text NOT NULL,
  `add_time` char(10) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `answer_time` char(5) NOT NULL,
  `sub_limit` smallint(5) unsigned NOT NULL,
  `over_hint` varchar(500) NOT NULL,
  `question_num` mediumint(9) NOT NULL,
  `score` mediumint(9) NOT NULL,
  `end_day` smallint(6) NOT NULL,
  `start_time` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_problem_option` */
 DROP TABLE IF EXISTS `tp_problem_option`;/* MySQLReback Separation */ CREATE TABLE `tp_problem_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `is_true` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_problem_question` */
 DROP TABLE IF EXISTS `tp_problem_question`;/* MySQLReback Separation */ CREATE TABLE `tp_problem_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_problem_question_log` */
 DROP TABLE IF EXISTS `tp_problem_question_log`;/* MySQLReback Separation */ CREATE TABLE `tp_problem_question_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `expend_time` char(5) NOT NULL,
  `add_time` char(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_problem_user` */
 DROP TABLE IF EXISTS `tp_problem_user`;/* MySQLReback Separation */ CREATE TABLE `tp_problem_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(100) NOT NULL,
  `user_name` char(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `nickname` char(50) NOT NULL,
  `add_time` char(10) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `score_count` int(11) NOT NULL,
  `expend_count` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product` */
 DROP TABLE IF EXISTS `tp_product`;/* MySQLReback Separation */ CREATE TABLE `tp_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL,
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL,
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `commission_type` varchar(10) NOT NULL DEFAULT '' COMMENT '佣金类型 固定金额fixed, 百分比 float',
  `commission` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '分销佣金',
  `allow_distribution` char(1) NOT NULL DEFAULT '0' COMMENT '允许分销 0, 1',
  `sn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sn_name` varchar(200) DEFAULT NULL,
  `sn_pass` varchar(200) DEFAULT NULL,
  `groupon_num` int(10) unsigned NOT NULL DEFAULT '200',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`),
  KEY `cid` (`cid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('27','1','4','32','0','0','耶路撒冷三千年','78','78','78','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《耶路撒冷三千年》内容简介：美国前总统克林顿2011年年度选书，基辛格视若珍宝的经典巨作。读《耶路撒冷三千年》，了解真实的耶路撒冷，就会明白世界为何演变成今天的模样。耶路撒冷曾被视为世界的中心，是基督教、犹太教和伊斯兰教三大宗教的圣地，是文明冲突的战略要冲，是让世人魂牵梦绕的去处，是惑人的阴谋、虚构的网络传说和二十四小时新闻发生的地方。</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">西蒙•蒙蒂菲奥里依年代顺序，以三大宗教围绕“圣城”的角逐，以几大家族的兴衰更迭为主线，生动讲述了耶路撒冷的前世今生；作者通过大量的田野调查和文献考据，以客观、中立的角度，透过士兵与先知、诗人与国王、农民与音乐家的生活，以及创造耶路撒冷的家族来呈现这座城市的三千年瑰丽历史，还原真实的耶路撒冷……</span>','twllsi1431226863','耶路撒冷','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/f/3/5/thumb_55c3608d450af.jpg','0','0','0','0','1438867612','0','100','0','0.00','0','0','','','200'),('28','1','1','33','0','0','查理九世--25稻草人之乡','18','18','18','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《稻草人之乡》是“查理九世”系列第25册图书。在这一册书中，DODO冒险队为了追寻埃克斯，来到了一个山阴镇。这个偏远的山村里，随处可见栩栩如生、姿态诡异的稻草人。小伙伴们在那里遇到了性格古怪的老爷爷左西，还偶遇了一个漂亮女孩。这个女孩竟然是几个月前从墨多多班上转学的姜小蝶。但令人吃惊的是，在小伙伴的印象中，姜小蝶是一个满脸雀斑、腿脚不便、性格孤僻的女孩，与眼前这个开朗又美丽的女孩截然不同。她告诉小伙伴们，山阴镇有一个奇妙之处——只要在这里住上一阵子，小孩子都会变得完美。当天晚上，小伙伴们在姜小蝶留宿，然而奇怪的事情发生了：姜小蝶家门口的草坪上凭空出现了一个稻草人，还抓住了多多，对他发出了警告。这到底是怎么回事？稻草人竟然复活了？勇敢的DODO冒险队展开了缜密的调查，发现许多线索都指向那位名叫左西的老爷爷，而这些奇怪的稻草人似乎与山阴镇的孩子变得完美有关系……所有疑团都将在小伙伴们惊心动魄的正义冒险中一一揭开……</span>','twllsi1431226863','查理九世,稻草人之乡','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/7/6/c/thumb_55c3580b67f58.jpg','0','0','0','0','1438868229','0','100','0','0.00','0','0','','','200'),('29','1','2','33','0','0','阳光姐姐小书房：叛逆的蛋壳组合','16','16','16','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">儿童文学作家伍美珍的长篇小说，以成长为主题。女生吴童兴趣广泛，在老师和家长眼里，她的个性未免太过张扬。最不能容忍的是，吴童总是喜欢捣鼓一些和学习无关的东西，比如她和凌杨波、韩笑组成的“蛋壳组合”，又是组阿狸党，又是做快 递业务，最后还惹出了不小的乱子。“蛋壳组合”因此被老师和家长们联合封杀。是听从命运的安排，还是执着于自己的内心？在这本书里，“蛋壳组合”给出了自己的回答。</span>','twllsi1431226863','阳光姐姐,阳光姐姐小书房,叛逆的蛋壳组合','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/4/a/8/thumb_55c358d2c680d.jpg','0','0','0','0','1438868291','0','100','0','0.00','0','0','','','200'),('22','1','3','31','0','0','殷健灵暖心小童书：不一样的暑假','17','17','17','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">一个只属于童年的夏天——它很平常，又很特别。在冰淇淋和橘子汽水中，在和小伙伴的玩闹争吵和好中，在日头晒出的一滴滴汗珠中，夏天有了不一样的颜色。这个夏天，催生了好多故事。《不一样的暑假(殷健灵暖心小童书)》中，殷健灵用她精妙隽永的笔，娓娓道来其中的一个，一个属于容容和小轩的故事。</span>','twllsi1431226863','殷健灵,不一样的暑假','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/b/9/8/thumb_55c35e2d1be52.jpg','0','0','0','0','1438866995','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('23','1','4','31','0','0','管家琪·智慧与成长童话：一只会做梦的狗','18','18','18','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">童话有最曼妙、最温情、最感人至深，最奇思妙想的世界，还有很多很好玩等你去发现的事情。每一次发现都是一种智慧，每一次探索都是一次成长，管家琪的成长和智慧童话，可以让你在阅读中变得更加的睿智，让你在快乐中充满涵养地长大！</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">你想知道超级萝卜有什么奇妙的作用吗？想知道小人马的烦恼和你的烦恼有什么不一样吗？哈哈，如果你想了解这些巧妙的事情，就快到《管家琪智慧与成长童话》的书里来吧！</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">本书是其中的分册《一只会做梦的狗》，其中包含了《我不要睡午觉》、《小巫婆的灵药》、《小箱子的秘密》、《石狮子的芝麻烧饼》等童话故事。</span>','twllsi1431226863','管家琪,一只会做梦的狗','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/b/b/thumb_55c35ea31f83b.jpg','0','0','0','0','1438867138','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('24','1','1','32','0','0','你的孤独，虽败犹荣[平装]','39.8','39.8','39.8','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《你的孤独,虽败犹荣:谁的青春不迷茫系列》内容简介：孤独之前是迷茫，孤独之后是成长。“很长一段日子里，我靠写东西度过了太多的小无聊，伪伤感，假满足与真茫然。我在意细节，算敏感。但知道体谅，算善良。我说喜欢便是喜欢，我不想回答便是真的不知道如何作答。有时我佯装镇定或笑得开心，心里总觉得自己与这个世界格格不入。不停对抗，学着顺从，冷静旁观，终明白我们都不应该是别人世界的参与者，而是自己世界的建造者。书里记录了33种孤独感，希望能让你想起自己某种忘我无形的成长。最后，愿你比别人更不怕一个人独处，愿日后想起时你会被自己感动。”&nbsp;</span>','twllsi1431226863','孤独,虽败犹荣','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/b/e/thumb_55c35f4138070.jpg','0','0','0','0','1438867305','0','100','0','0.00','0','0','','','200'),('25','1','2','32','0','0','人性的弱点全集[平装]','25','25','25','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《人性的弱点全集》的作者戴尔·卡耐基，美国“成人教育之父”。20世纪早期，美国经济陷入萧条，战争和贫困导致人们失去了对美好生活的愿望，而卡耐基独辟蹊径地开创了一套融演讲、推销、为人处世、智能开发于一体的教育方式，他运用社会学和心理学知识，对人性进行了深刻的探讨和分析。《人性的弱点全集》讲述的许多普通人通过奋斗获得成功的真实故事，激励了无数陷和迷茫和困境的人，帮助他们重新找到了自己的人生。&nbsp;</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">接受卡耐基教育的有社会各界人士，其中不乏军政要员，甚至包括几位美国总结。千千万万的人从卡耐基的教育中获益匪浅。&nbsp;</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《人性的弱点全集》汇集了卡耐基的思想精华和最激动人心的内容，是作者最成功的励志经典，出版后立即获得了广大读者的欢迎，成为西方世界最持久的人文畅销书。无数读者通过阅读和实践书中介绍的各种方法，不仅走出困境，有的还成为世人仰慕的杰出人士。只要不断研读《人性的弱点全集》，相信你也可以发掘自己的无穷潜力，创造辉煌的人生。</span><br />','twllsi1431226863','人性的弱点','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/c/f/7/thumb_55c35fd6ac490.jpg','0','0','0','0','1438867449','0','100','0','0.00','0','0','','','200'),('26','1','3','32','0','0','傅雷家书--学生读本','29.8','29.8','29.8','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《傅雷家书(学生读本)》以傅雷夫妇与傅聪留学波兰期间（1954—1958年）的往来家信，全面展示傅雷家风，再现傅聪成长的家教背景。这一时期的家书是在傅聪当学生时所写，内容更适合中学生的阅历和理解。与同期傅聪家信对照阅读，则家书语境更完整，背景更清晰，人物更鲜明，内容更连贯，针对性更强，便于学生双向阅读，以利与父母的沟通。中学语文课本中“傅雷家书两则”即选自这一期间的家书。书中楼适夷初版代序和43封傅聪家信为独家版权，2017年不随傅雷著作权进入公版，其他任何家书选本不能收录。</span>','twllsi1431226863','傅雷家书','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/5/c/e/thumb_55c360320c1a7.jpg','0','0','0','0','1438867523','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('19','1','0','34','0','0','追风筝的人[平装]','29','29','29','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《追风筝的人》内容简介：“许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。回首前尘，我意识到在过去二十六年里，自己始终在窥视着那荒芜的小径。”</span><br />
<br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽最后一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？</span><br />
<br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">小说如此残忍而又美丽，作者以温暖细腻的笔法勾勒人性的本质与救赎，读来令人荡气回肠。</span>','twllsi1431226863','追风筝的人,风筝','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/8/7/1/thumb_55c292bc90610.jpg','0','0','0','0','1438815020','0','0','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('21','1','0','31','0','0','阳光姐姐小书房：叛逆的蛋壳组合','16','16','16','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">儿童文学作家伍美珍的长篇小说，以成长为主题。女生吴童兴趣广泛，在老师和家长眼里，她的个性未免太过张扬。最不能容忍的是，吴童总是喜欢捣鼓一些和学习无关的东西，比如她和凌杨波、韩笑组成的“蛋壳组合”，又是组阿狸党，又是做快 递业务，最后还惹出了不小的乱子。“蛋壳组合”因此被老师和家长们联合封杀。是听从命运的安排，还是执着于自己的内心？在这本书里，“蛋壳组合”给出了自己的回答。</span>','twllsi1431226863','阳光姐姐,阳光姐姐小书房,叛逆的蛋壳组合','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/4/a/8/thumb_55c358d2c680d.jpg','0','0','0','0','1438865631','0','100','0','0.00','0','0','','','200'),('16','1','0','31','0','0','笑猫日记20：云朵上的学校','15','15','15','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">一次离奇的经历，让笑猫和球球老老鼠在高耸入云的山巅意外地发现了一所神奇的学校——云朵上的学校。这所学校里的孩子能跟着小鸟和青蛙学习飞翔和游泳，由拥有魔力的蜜儿老师和从远古穿越而来的花脸兽陪伴着去探寻河流的源头……这些原本在学习压力下噩梦连连的孩子在主动的探索与发现中不断收获知识、自信与快乐。这些孩子究竟是怎么来到云朵上的学校的呢？随着笑猫和球球老老鼠的进一步探究，一个更加惊人的秘密渐渐浮出水面……这部童话作品充满缤纷的想象力和富有趣味的悬念，蕴藏着作者对童年教育的深入思考，整个故事也因此而拥有了别样的厚度与温情。</span>','twllsi1431226863','笑猫日记,云朵上的学校','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/b/3/f/thumb_55c28d6827b89.jpg','0','0','0','0','1438903958','0','100','0','0.00','0','0','','','200'),('17','1','0','32','0','0','股市操练大全(1):K线、技术图形的识别和练习专辑 [精装]','29.8','29.8','29.8','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《股市操练大全(第1册):K线、技术图形的识别和练习专辑》资料翔实，语言通俗易懂，方法简便实用，它既可作为新股民学习股市操作技巧的入门向导，又可帮助老股民通过强化训练来提高操盘水平，是一本不可多得的股票操练实用工具书。许多投资者炒股失利，并不是股票书看得太少，也不是股市盘面研究不够，其真正的原因是缺乏一个必要的强化训练过程。这个道理很简单，股市如战场，不经练兵直接上战场，失利也就在预料之中了。针对这一情况，我们组织了有关专家和操盘手，为投资者精心设计、编写了国内第一本股市强化训练习题集。本习题集将股市基本分折、技术分析、心理分析融为一体，并兼有学习、练习的双重用途。作为学习，它强调了在学中练、练中学。每章开头都有股票操作要点知识介绍，以及像K线、技术图形一览表等可供读者速学、速查之用，而且本书的练习和参考答案放在一起，读者做练习碰到困难，即可直接把它作为股市技巧知识介绍来阅读。作为练习，它为股市每个操作方式都设计了单项练习题，每一种操作方式都安排了系统的强化训练方案，每一章结束都附有测验题供读者自我考核检查之用。本书设计的思路、内容、方法具有独创性，书中所举的实例都源于沪深股市，因而对投资者具有极大的启发性和指导性。</span>','twllsi1431226863','股市,K线,练习','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/e/5/4/0/thumb_55c290472c8a2.jpg','0','0','0','0','1438814477','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('18','1','0','33','0','0','笑猫日记20：云朵上的学校','15','15','15','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">一次离奇的经历，让笑猫和球球老老鼠在高耸入云的山巅意外地发现了一所神奇的学校——云朵上的学校。这所学校里的孩子能跟着小鸟和青蛙学习飞翔和游泳，由拥有魔力的蜜儿老师和从远古穿越而来的花脸兽陪伴着去探寻河流的源头……这些原本在学习压力下噩梦连连的孩子在主动的探索与发现中不断收获知识、自信与快乐。这些孩子究竟是怎么来到云朵上的学校的呢？随着笑猫和球球老老鼠的进一步探究，一个更加惊人的秘密渐渐浮出水面……这部童话作品充满缤纷的想象力和富有趣味的悬念，蕴藏着作者对童年教育的深入思考，整个故事也因此而拥有了别样的厚度与温情。</span>','twllsi1431226863','笑猫日记,云朵上的学校','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/b/3/f/thumb_55c28d6827b89.jpg','0','0','0','0','1438814647','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('14','1','0','8388607','0','1','从0到1   开启商业与未来的秘密','0.01','0','27','0','0','<h3 class=\"productDescriptionSource\" style=\"color:#333333;font-size:1.23em;font-weight:normal;font-family:verdana, arial, helvetica, sans-serif;background-color:#FFFFFF;\">
	编辑推荐
</h3>
<div class=\"productDescriptionWrapper\" style=\"margin:0px 0px 1em;color:#333333;font-family:verdana, arial, helvetica, sans-serif;font-size:small;background-color:#FFFFFF;\">
	《从0到1》是当下中国谁都不容错过的著作，迄今为止最重要的一本商业书！马克•扎克伯格、埃隆•马斯克、马克•安德森、纳西姆•塔勒布、周鸿祎、雷军、徐小平、刘强东、徐新、唐彬、吴伯凡、牛文文等大咖鼎力推荐的创新、创业、创投哲学！上市半个月突破30万册！<br />
一位传奇的创投教父，一部开启秘密的商业之作，一部事关所有人的生存哲学：<br />
《从0到1》作者彼得•蒂尔为首的“PayPal黑帮”开创了硅谷的新格局，他本身就是一部商业传奇！<br />
他是Facebook第一位外部投资人，投资了Tesla（特斯拉）、LinkedIn（领英）、SpaceX、Yelp等企业。他创立的数据分析公司Palantir市值约150亿美元。<br />
在《从0到1》中，硅谷投资家彼得•蒂尔将创业心法第一手分享，在网络上造成560000人访问、2400000次的点击率，引起全球疯传！<br />
中美互联网界大佬集体追捧，2015创投极客论坛持续热议！<br />
周鸿祎（中国互联网安全之父）对话彼得•蒂尔，警惕“大数据”变“大忽悠”。<br />
徐小平（真格基金创始合伙人）称彼得•蒂尔是改变世界的逆行者。<br />
吴伯凡（《21世纪商业评论》发行人）：对于投资者来说找鲨鱼苗是非常重要的。<br />
牛文文（《创业家》杂志总编辑）：《从0到1》让普通人变成创业者。<br />
唐彬（易宝支付CEO）：互联网进入深水区，从0到1带来最好的创业的时代。<br />
徐新（今日资本创始人）对话彼得•蒂尔：赢家都有杀手本能。<br />
余晨（易宝支付联合创始人）：《从0到1》是近年来最好的商业书籍，没有之一！<br />
埃隆•马斯克、马克•扎克伯格、马克•安德森、纳西姆•塔勒布、雷军、傅盛、罗振宇、金错刀、杨守彬等商界领军人物，新浪、搜狐、网易、中国经济网、和讯网、南方网、环球网、钛媒体、36氪、中国新闻网、i黑马、虎嗅网、正和岛等持续报道，《对话》《创业家》《老友记》《罗辑思维》《三联生活周刊》《商业周刊》《北京青年报》《环球人物》《博客天下》《第一财经周刊》《南方人物周刊》《经济观察报》等强势媒体鼎力推荐！<br />
《从0到1》揭开创新的秘密，纠正创业上的众多偏见：<br />
创新不是从1到N，而是从0到1；<br />
全球化并不全是进步；<br />
竞争扼杀创新；<br />
“产品会说话”是谎言；<br />
失败者才去竞争，创业者应当选择垄断；<br />
创业开局十分重要，“频繁试错”是错误的；<br />
没有科技公司可以仅靠品牌吃饭；<br />
初创公司要打造帮派文化。<br />
亚马逊编辑推荐：<br />
作者蒂尔被称为硅谷创投之父，既是Paypal的创始人，也是各大知名企业的早期投资者，指引他走向成功之路的重要信念就是创新。这里的创新不是从 1到N，而是从0到1，也就是所谓专利，技术，开启一片未知的领域。从1到N很容易，只要是把成功的事物进行复制扩大，水平式的进步可以快速实现；但是从 0到1，也就是从无到有，尝试从未有人做过的事情，这种垂直式的进步却需要漫长的过程，但正是这种突破式的进展让企业能立于红海之中持久生存。
	<p>
		书中重复提到垄断性企业的胜利，此处更强调的是创造性垄断，也就是新产品既利于每个人又可以给创造者带来长期利益。而创造性垄断企业最实质性的优势是专 利，且优于替代品10倍以上的专利，这种10倍的优势最明确的就是创新，因此从0到1的飞跃式创新才可以让企业立足于长远发展。
	</p>
	<p>
		也许很多读者都想从本书中获取创业的圣经，其实通读下来并没有所谓开启创业秘密的钥匙，也没有实操性极强的指导。我觉得作者更有一种情怀，对于科技推动力的崇拜，与其说这是一本创业法则，倒不如说它在陈述着一种为世界创造价值的商业哲学。
	</p>
	<p>
		——亚马逊编辑双儿
	</p>
	<p>
		<br />
	</p>
	<div class=\"emptyClear\" style=\"font-size:0px;\">
	</div>
</div>
<h3 class=\"productDescriptionSource\" style=\"color:#333333;font-size:1.23em;font-weight:normal;font-family:verdana, arial, helvetica, sans-serif;background-color:#FFFFFF;\">
	名人推荐
</h3>
<div class=\"productDescriptionWrapper\" style=\"margin:0px 0px 1em;color:#333333;font-family:verdana, arial, helvetica, sans-serif;font-size:small;background-color:#FFFFFF;\">
	彼得•蒂尔对青年人创业的强劲推动和支持，是全球创业大合唱里最强劲的声音，激发了世界各地的创业潮。《从0到1》中文版的推出，对中国投资人、创业者、政府机构、教育机构，都是一件喜悦和激动的事情。<br />
——徐小平，真格基金创始合伙人<br />
这是一本把普通人变成创业者的进化指南。<br />
——牛文文，《创业家》杂志社社长、创始人<br />
《从0到1》的成功，不仅仅在于彼得•蒂尔深入剖析了对于当代企业突围竞争红海至关重要的“大道”，更在于这本书凝练了他身经百战的智慧和经验精华。<br />
——余晨，易宝支付联合创始人<br />
《从0到1》传达了前所未见、让人为之一振的新观念，教导人们如何在世界上创造价值。<br />
──马克•扎克伯格（Mark Zuckerberg），脸谱网（Facebook）CEO<br />
彼得•蒂尔打造了多家异军突起的公司，《从0到1》展现了他到底是如何做到的。&nbsp;<br />
──埃隆•马斯克（Elon Musk），特斯拉汽车（Tesla）CEO<br />
当一个有冒险精神的人写书了，务必要读一读。如果作者的是彼得•蒂尔，就要读两遍。但是保险起见，请看三遍。因为《从0到1》绝对是经典之作。<br />
──纳西姆•尼古拉斯•塔勒布（Nassim Nicholas Taleb），著有《黑天鹅》<br />
《从0到1》是指导大企业不断改进提升的重要手册，也是新创企业家们的心法秘籍。读这本书吧，接受彼得•蒂尔的挑战，开创超乎期待的事业。<br />
──杰夫•伊梅尔特（Jeff Immelt），通用电气公司（GE）董事长兼CEO<br />
《从0到1》是每个想要创业与正在创业的人，都必须优先阅读的一本书，绝对不可错过。<br />
──马克•安德森（Marc Andreessen），网景（Netscape）联合创始人<br />
《从0到1》是每个人都必读的第一本、也是最后一本商业著作。在充满0的世界，这本书是唯一的1。<br />
──尼尔•斯蒂芬森（Neal Stephenson），畅销书作者<br />
彼得•蒂尔是成就非凡的创业家和投资人，他也是这个时代的公共知识分子领袖。阅读《从0到1》，你就能一探他为何能够引领思潮。<br />
──泰勒•考恩（Tyler Cowen），畅销书作者、经济学教授<br />
《从0到1》写得清晰、理性又实际。不只是企业家，每个不满于现状、对世界前景有想法的人都应该读一读这本书。<br />
——《经济学人》<br />
蒂尔在《从0到1》中融会贯通了他广泛的知识，综合了对哲学、历史学、经济学、人类学多个学科独具特质的理解，可以说是当今美国最顶尖的公知作品。<br />
——《财富》杂志<br />
《从0到1》不同于一贯的正统观点，它辛辣有力，为读者创立新事业提供了坚实的指导。<br />
——《科克斯书评》<br />
这可能是迄今为止最好的商业书。清晰如散文、精炼如格言，蒂尔打造了一本表述完美、发人深省的商业手册。<br />
——《大西洋月刊》资深编辑德里克•汤姆森
</div>','twllsi1431226863','从0到1,商业','5','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/5/f/a/thumb_555bc65e4ba95.jpg','0','1','1433606399','1','1432077945','0','0','','0.00','0','1','1','222','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('20','1','1','31','0','0','查理九世--25稻草人之乡','18','18','18','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《稻草人之乡》是“查理九世”系列第25册图书。在这一册书中，DODO冒险队为了追寻埃克斯，来到了一个山阴镇。这个偏远的山村里，随处可见栩栩如生、姿态诡异的稻草人。小伙伴们在那里遇到了性格古怪的老爷爷左西，还偶遇了一个漂亮女孩。这个女孩竟然是几个月前从墨多多班上转学的姜小蝶。但令人吃惊的是，在小伙伴的印象中，姜小蝶是一个满脸雀斑、腿脚不便、性格孤僻的女孩，与眼前这个开朗又美丽的女孩截然不同。她告诉小伙伴们，山阴镇有一个奇妙之处——只要在这里住上一阵子，小孩子都会变得完美。当天晚上，小伙伴们在姜小蝶留宿，然而奇怪的事情发生了：姜小蝶家门口的草坪上凭空出现了一个稻草人，还抓住了多多，对他发出了警告。这到底是怎么回事？稻草人竟然复活了？勇敢的DODO冒险队展开了缜密的调查，发现许多线索都指向那位名叫左西的老爷爷，而这些奇怪的稻草人似乎与山阴镇的孩子变得完美有关系……所有疑团都将在小伙伴们惊心动魄的正义冒险中一一揭开……</span>','twllsi1431226863','查理九世,稻草人之乡','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/7/6/c/thumb_55c3580b67f58.jpg','0','0','0','0','1438865459','0','100','0','0.00','0','0','','','200'),('30','1','3','33','0','0','殷健灵暖心小童书：不一样的暑假','17','17','17','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">一个只属于童年的夏天——它很平常，又很特别。在冰淇淋和橘子汽水中，在和小伙伴的玩闹争吵和好中，在日头晒出的一滴滴汗珠中，夏天有了不一样的颜色。这个夏天，催生了好多故事。《不一样的暑假(殷健灵暖心小童书)》中，殷健灵用她精妙隽永的笔，娓娓道来其中的一个，一个属于容容和小轩的故事。</span>','twllsi1431226863','殷健灵,不一样的暑假','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/b/9/8/thumb_55c35e2d1be52.jpg','0','0','0','0','1438868345','0','100','0','0.00','0','0','','','200'),('31','1','4','33','0','0','管家琪·智慧与成长童话：一只会做梦的狗','18','18','18','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">童话有最曼妙、最温情、最感人至深，最奇思妙想的世界，还有很多很好玩等你去发现的事情。每一次发现都是一种智慧，每一次探索都是一次成长，管家琪的成长和智慧童话，可以让你在阅读中变得更加的睿智，让你在快乐中充满涵养地长大！</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">你想知道超级萝卜有什么奇妙的作用吗？想知道小人马的烦恼和你的烦恼有什么不一样吗？哈哈，如果你想了解这些巧妙的事情，就快到《管家琪智慧与成长童话》的书里来吧！</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">本书是其中的分册《一只会做梦的狗》，其中包含了《我不要睡午觉》、《小巫婆的灵药》、《小箱子的秘密》、《石狮子的芝麻烧饼》等童话故事。</span>','twllsi1431226863','管家琪,一只会做梦的狗','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/8/b/b/thumb_55c35ea31f83b.jpg','0','0','0','0','1438868404','0','100','0','0.00','0','0','','','200'),('32','1','1','34','0','0','偷影子的人[平装]','29.8','29.8','29.8','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《偷影子的人(精装插图版)》内容简介：一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。他开始成为需要帮助者的心灵伙伴，为每个偷来的影子找到点亮生命的小小光芒。某年灿烂的夏天，他在海边邂逅了一位又聋又哑的女孩。他该如何用自己的能力帮助她？他将如何信守与她共许的承诺？</span>','twllsi1431226863','偷影子的人','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/b/5/f/thumb_55c36497affaf.jpg','0','0','0','0','1438868652','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('33','1','1','34','0','0','你的孤独，虽败犹荣[平装]','39.8','39.8','39.8','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《你的孤独,虽败犹荣:谁的青春不迷茫系列》内容简介：孤独之前是迷茫，孤独之后是成长。“很长一段日子里，我靠写东西度过了太多的小无聊，伪伤感，假满足与真茫然。我在意细节，算敏感。但知道体谅，算善良。我说喜欢便是喜欢，我不想回答便是真的不知道如何作答。有时我佯装镇定或笑得开心，心里总觉得自己与这个世界格格不入。不停对抗，学着顺从，冷静旁观，终明白我们都不应该是别人世界的参与者，而是自己世界的建造者。书里记录了33种孤独感，希望能让你想起自己某种忘我无形的成长。最后，愿你比别人更不怕一个人独处，愿日后想起时你会被自己感动。”&nbsp;</span>','twllsi1431226863','孤独,虽败犹荣','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/b/e/thumb_55c35f4138070.jpg','0','0','0','0','1438868734','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 插入数据 `tp_product` */
 INSERT INTO `tp_product` VALUES ('34','1','3','34','0','0','活着 [平装]--余华','20','20','20','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。</span><br />
<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《活着(新版)》荣获意大利格林扎纳•卡佛文学奖最高奖项（1998年）、台湾《中国时报》10本好书奖（1994年）、香港“博益”15本好书奖（1994年）、第三届世界华文“冰心文学奖”（2002年），入选香港《亚洲周刊》评选的“20世纪中文小说百年百强”、中国百位批评家和文学编辑评选的“20世纪90年代最有影响的10部作品”。</span>','twllsi1431226863','活着,余华','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/1/4/e/thumb_55c36545b4777.jpg','0','0','0','0','1438868843','0','100','0','0.00','0','0','','','200'),('35','1','4','34','0','0','百年孤独[精装]','39.5','39.5','39.5','0','10','<span style=\"color:#333333;font-family:Arial, sans-serif;font-size:14px;line-height:22.4px;background-color:#FFFFFF;\">《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世界最重要的经典文学巨著之一。1982年加西亚?马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。</span>','twllsi1431226863','百年孤独','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/4/a/4/thumb_55c365b26251a.jpg','0','0','0','0','1438868942','0','100','0','0.00','0','0','','','200');/* MySQLReback Separation */
 /* 创建表结构 `tp_product_attribute` */
 DROP TABLE IF EXISTS `tp_product_attribute`;/* MySQLReback Separation */ CREATE TABLE `tp_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_cart` */
 DROP TABLE IF EXISTS `tp_product_cart`;/* MySQLReback Separation */ CREATE TABLE `tp_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `comment` varchar(300) NOT NULL DEFAULT '' COMMENT '????????',
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '????id',
  `twid` varchar(20) NOT NULL COMMENT '来源推广人的推广ID',
  `totalprice` float NOT NULL COMMENT '购买商品的订单总价',
  `sn` tinyint(1) NOT NULL DEFAULT '0',
  `sn_content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_product_cart` */
 INSERT INTO `tp_product_cart` VALUES ('14','1','','','14','onHRmu1438873266','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0','a:1:{i:14;a:2:{s:5:\"count\";i:1;s:5:\"price\";i:0;}}','1','0','soGary','18588872622','番禺广场','0','0','1438873266','','1','0','0','0','0','0','0','egca1438873266','0','','','0','0','0','0','0','0','','0','','0','1',''),('15','1','','','14','onHRmu1438873281','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0','a:1:{i:14;a:2:{s:5:\"count\";i:1;s:5:\"price\";i:0;}}','1','0','soGary','18588872622','番禺广场','0','0','1438873281','','1','0','0','0','0','0','0','bbmr1438873281','0','','','0','0','0','0','0','0','','0','','0','1',''),('16','1','','','14','onHRmu1438873349','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0','a:1:{i:14;a:2:{s:5:\"count\";i:1;s:5:\"price\";i:0;}}','1','0.01','soGary','18588872622','番禺广场','0','0','1438873349','','1','0','0','0','0','0','0','sswq1438873349','0','','','0','0','0','0','0','0','','0','','0','1',''),('17','1','1004200649201508060566740574','weixin','14','onHRmu1438873372','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0','a:1:{i:14;a:2:{s:5:\"count\";i:1;s:5:\"price\";i:0;}}','1','0.01','soGary','18588872622','番禺广场','0','0','1438873372','','1','0','0','0','0','0','1','cnbn1438873372','1','','','0','1','0','0','0','0','','0','','0','1','a:1:{i:0;a:8:{s:3:\"pid\";s:2:\"14\";s:8:\"order_id\";s:2:\"17\";s:8:\"wecha_id\";s:28:\"onHRmuCEpECSyzxz_isbLqeUI0lw\";s:5:\"token\";s:16:\"twllsi1431226863\";s:2:\"sn\";s:3:\"sn1\";s:4:\"pass\";s:1:\"1\";s:10:\"sendstutas\";i:1;s:8:\"sendtime\";i:1438873394;}}'),('18','1','1001310649201508060566787327','weixin','14','onHRmu1438873991','twllsi1431226863','onHRmuG4vAjIUAYfruXeEo1rBQNg','0','a:1:{i:14;a:2:{s:5:\"count\";i:1;s:5:\"price\";i:0;}}','1','0.01','陈海健ken','13809200888','上海','0','0','1438873991','','1','0','0','0','0','0','1','rmgh1438873991','1','','','0','1','0','0','0','0','','0','','0','1','a:1:{i:0;a:8:{s:3:\"pid\";s:2:\"14\";s:8:\"order_id\";s:2:\"18\";s:8:\"wecha_id\";s:28:\"onHRmuG4vAjIUAYfruXeEo1rBQNg\";s:5:\"token\";s:16:\"twllsi1431226863\";s:2:\"sn\";s:3:\"sn2\";s:4:\"pass\";s:1:\"2\";s:10:\"sendstutas\";i:1;s:8:\"sendtime\";i:1438874004;}}');/* MySQLReback Separation */
 /* 创建表结构 `tp_product_cart_list` */
 DROP TABLE IF EXISTS `tp_product_cart_list`;/* MySQLReback Separation */ CREATE TABLE `tp_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `shipping` float NOT NULL DEFAULT '0' COMMENT '?˷?',
  `sku_id` int(10) NOT NULL DEFAULT '0' COMMENT '????id',
  `comment` varchar(300) NOT NULL DEFAULT '0' COMMENT '????????',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_cat` */
 DROP TABLE IF EXISTS `tp_product_cat`;/* MySQLReback Separation */ CREATE TABLE `tp_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `isfinal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_product_cat` */
 INSERT INTO `tp_product_cat` VALUES ('34','3','1','twllsi1431226863','社科图书排行','博览书店社科图书排行榜','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/9/0/e/thumb_55c28c5b8c17d.jpg','0','1438813293','图书排行','','1','0','0'),('31','0','1','twllsi1431226863','热门少儿图书','博览书店热门少儿图书','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/5/d/3/thumb_55c285044c956.jpg','0','1438811440','少儿图书','','1','0','0'),('32','1','1','twllsi1431226863','热门社科图书','博览书店热门社科图书','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/0/3/f/0/thumb_55c2856ee09d4.jpg','0','1438811542','社科图书','','1','0','0'),('33','2','1','twllsi1431226863','少儿图书排行','博览书店少儿图书销售排行','0','http://weixin.blbook.cn/uploads/t/twllsi1431226863/2/6/4/8/thumb_55c28c2394dcf.jpg','0','1438813240','图书排行','','1','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_product_comment` */
 DROP TABLE IF EXISTS `tp_product_comment`;/* MySQLReback Separation */ CREATE TABLE `tp_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_detail` */
 DROP TABLE IF EXISTS `tp_product_detail`;/* MySQLReback Separation */ CREATE TABLE `tp_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `format` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_diningtable` */
 DROP TABLE IF EXISTS `tp_product_diningtable`;/* MySQLReback Separation */ CREATE TABLE `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_group` */
 DROP TABLE IF EXISTS `tp_product_group`;/* MySQLReback Separation */ CREATE TABLE `tp_product_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_image` */
 DROP TABLE IF EXISTS `tp_product_image`;/* MySQLReback Separation */ CREATE TABLE `tp_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_product_image` */
 INSERT INTO `tp_product_image` VALUES ('1','7','http://119.29.116.37/uploads/t/twllsi1431226863/b/6/e/2/thumb_554fd3de9b894.jpg'),('2','8','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/e/1/b/thumb_555a051213f22.jpg'),('3','8','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/c/a/c/thumb_555a051b2702d.jpg'),('4','9','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/b/6/3/thumb_555a066423529.jpg'),('5','9','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/6/8/6/thumb_555a066dc0553.jpg'),('6','10','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/1/b/7/thumb_555a07805e3b2.jpg'),('7','11','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/2/9/thumb_555a0875bf6a4.jpg'),('8','12','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/3/1/thumb_555a086db4dfb.jpg'),('9','13','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/6/8/6/thumb_555a066dc0553.jpg'),('10','13','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/b/6/3/thumb_555a066423529.jpg'),('11','17','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/7/2/9/thumb_55c290a3d75c7.jpg'),('12','17','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/7/6/7/thumb_55c2904fc6ddb.jpg'),('13','19','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/8/7/1/thumb_55c292bc90610.jpg'),('14','19','http://weixin.blbook.cn/uploads/t/twllsi1431226863/c/a/e/a/thumb_55c292e019baf.jpg'),('15','19','http://weixin.blbook.cn/uploads/t/twllsi1431226863/f/3/f/8/thumb_55c2930a0388d.jpg'),('16','19','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/f/a/f/thumb_55c29313123d5.jpg'),('17','20','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/7/6/c/thumb_55c3580b67f58.jpg'),('18','20','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/2/9/thumb_55c3581a9aed0.jpg'),('19','24','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/b/e/thumb_55c35f4138070.jpg'),('20','24','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/b/9/6/thumb_55c35f51445ef.jpg'),('21','24','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/1/a/thumb_55c35f59e9a7c.jpg'),('22','24','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/0/f/3/thumb_55c35f62d62e5.jpg'),('23','25','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/c/f/7/thumb_55c35fd6ac490.jpg'),('24','25','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/e/3/5/thumb_55c35fe368998.jpg'),('25','28','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/7/6/c/thumb_55c3580b67f58.jpg'),('26','28','http://weixin.blbook.cn/uploads/t/twllsi1431226863/b/6/2/9/thumb_55c3581a9aed0.jpg'),('27','33','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/5/b/e/thumb_55c35f4138070.jpg'),('28','33','http://weixin.blbook.cn/uploads/t/twllsi1431226863/5/b/9/6/thumb_55c35f51445ef.jpg'),('29','33','http://weixin.blbook.cn/uploads/t/twllsi1431226863/d/3/1/a/thumb_55c35f59e9a7c.jpg'),('30','33','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/0/f/3/thumb_55c35f62d62e5.jpg'),('31','34','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/1/4/e/thumb_55c36545b4777.jpg'),('32','34','http://weixin.blbook.cn/uploads/t/twllsi1431226863/1/d/a/1/thumb_55c365528bbac.jpg'),('33','35','http://weixin.blbook.cn/uploads/t/twllsi1431226863/4/4/a/4/thumb_55c365b26251a.jpg'),('34','35','http://weixin.blbook.cn/uploads/t/twllsi1431226863/8/f/6/9/thumb_55c365bdaf70b.jpg');/* MySQLReback Separation */
 /* 创建表结构 `tp_product_mail_price` */
 DROP TABLE IF EXISTS `tp_product_mail_price`;/* MySQLReback Separation */ CREATE TABLE `tp_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_relation` */
 DROP TABLE IF EXISTS `tp_product_relation`;/* MySQLReback Separation */ CREATE TABLE `tp_product_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_product_setting` */
 DROP TABLE IF EXISTS `tp_product_setting`;/* MySQLReback Separation */ CREATE TABLE `tp_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL DEFAULT '-1' COMMENT '满多少元免邮费',
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `tpid` int(10) unsigned NOT NULL,
  `footerid` int(10) unsigned NOT NULL,
  `headerbackgroud` text NOT NULL,
  `headerid` int(10) unsigned NOT NULL,
  `isgroup` tinyint(1) unsigned NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `email_status` char(1) NOT NULL DEFAULT '0',
  `shop_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_product_setting` */
 INSERT INTO `tp_product_setting` VALUES ('1','1','twllsi1431226863','10','0','0','234','6','','14','0','','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_product_sn` */
 DROP TABLE IF EXISTS `tp_product_sn`;/* MySQLReback Separation */ CREATE TABLE `tp_product_sn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `sn` varchar(200) NOT NULL COMMENT '中奖后序列号',
  `pass` varchar(200) NOT NULL,
  `sendstutas` int(10) unsigned NOT NULL DEFAULT '0',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_product_sn` */
 INSERT INTO `tp_product_sn` VALUES ('1','14','17','onHRmuCEpECSyzxz_isbLqeUI0lw','twllsi1431226863','sn1','1','1','1438873394'),('2','14','18','onHRmuG4vAjIUAYfruXeEo1rBQNg','twllsi1431226863','sn2','2','1','1438874004'),('3','14','0','','twllsi1431226863','sn3','3','0','0'),('4','14','0','','twllsi1431226863','sn4','4','0','0'),('5','14','0','','twllsi1431226863','sn5','5','0','0'),('6','14','0','','twllsi1431226863','sn6','6','0','0'),('7','14','0','','twllsi1431226863','sn7','7','0','0'),('8','14','0','','twllsi1431226863','sn8','8','0','0'),('9','14','0','','twllsi1431226863','sn9','9','0','0'),('10','14','0','','twllsi1431226863','sn10','10','0','0'),('11','14','0','','twllsi1431226863','sn11','11','0','0'),('12','14','0','','twllsi1431226863','sn12','12','0','0'),('13','14','0','','twllsi1431226863','sn13','13','0','0'),('14','14','0','','twllsi1431226863','sn14','14','0','0'),('15','14','0','','twllsi1431226863','sn15','15','0','0'),('16','14','0','','twllsi1431226863','sn16','16','0','0'),('17','14','0','','twllsi1431226863','sn17','17','0','0'),('18','14','0','','twllsi1431226863','sn18','18','0','0'),('19','14','0','','twllsi1431226863','sn19','19','0','0'),('20','14','0','','twllsi1431226863','sn20','20','0','0'),('21','14','0','','twllsi1431226863','sn21','21','0','0'),('22','14','0','','twllsi1431226863','sn22','22','0','0'),('23','14','0','','twllsi1431226863','sn23','23','0','0'),('24','14','0','','twllsi1431226863','sn24','24','0','0'),('25','14','0','','twllsi1431226863','sn25','25','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_punish` */
 DROP TABLE IF EXISTS `tp_punish`;/* MySQLReback Separation */ CREATE TABLE `tp_punish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `pic` char(120) NOT NULL,
  `name` char(10) NOT NULL,
  `use_num` int(11) NOT NULL,
  `info` varchar(500) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_punish_item` */
 DROP TABLE IF EXISTS `tp_punish_item`;/* MySQLReback Separation */ CREATE TABLE `tp_punish_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_qcloud_sendout` */
 DROP TABLE IF EXISTS `tp_qcloud_sendout`;/* MySQLReback Separation */ CREATE TABLE `tp_qcloud_sendout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suborderid` varchar(1000) DEFAULT NULL,
  `orderid` varchar(1000) DEFAULT NULL,
  `packageid` varchar(1000) DEFAULT NULL,
  `payprice` varchar(100) DEFAULT NULL,
  `openid` varchar(1000) DEFAULT NULL,
  `paynum` varchar(100) DEFAULT NULL,
  `freedays` varchar(100) DEFAULT NULL,
  `servicedays` varchar(100) DEFAULT NULL,
  `payunit` char(100) DEFAULT NULL,
  `service` char(50) DEFAULT 'site',
  `serviceId` varchar(1000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `providerId` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_qcloud_user` */
 DROP TABLE IF EXISTS `tp_qcloud_user`;/* MySQLReback Separation */ CREATE TABLE `tp_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_question_bank` */
 DROP TABLE IF EXISTS `tp_question_bank`;/* MySQLReback Separation */ CREATE TABLE `tp_question_bank` (
  `id` int(11) NOT NULL,
  `figure` varchar(2) DEFAULT NULL,
  `question_types` varchar(2) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option_num` int(11) DEFAULT NULL,
  `optionA` varchar(100) DEFAULT NULL,
  `optionB` varchar(100) DEFAULT NULL,
  `optionC` varchar(100) DEFAULT NULL,
  `optionD` varchar(100) DEFAULT NULL,
  `optionE` varchar(100) DEFAULT NULL,
  `optionF` varchar(100) DEFAULT NULL,
  `answer` varchar(6) DEFAULT NULL,
  `classify` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_recipe` */
 DROP TABLE IF EXISTS `tp_recipe`;/* MySQLReback Separation */ CREATE TABLE `tp_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_recognition` */
 DROP TABLE IF EXISTS `tp_recognition`;/* MySQLReback Separation */ CREATE TABLE `tp_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `fuwu_code_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_recognition_data` */
 DROP TABLE IF EXISTS `tp_recognition_data`;/* MySQLReback Separation */ CREATE TABLE `tp_recognition_data` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `rid` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `is_ali` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_red_packet` */
 DROP TABLE IF EXISTS `tp_red_packet`;/* MySQLReback Separation */ CREATE TABLE `tp_red_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_red_packet_exchange` */
 DROP TABLE IF EXISTS `tp_red_packet_exchange`;/* MySQLReback Separation */ CREATE TABLE `tp_red_packet_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `log_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_red_packet_log` */
 DROP TABLE IF EXISTS `tp_red_packet_log`;/* MySQLReback Separation */ CREATE TABLE `tp_red_packet_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_red_packet_prize` */
 DROP TABLE IF EXISTS `tp_red_packet_prize`;/* MySQLReback Separation */ CREATE TABLE `tp_red_packet_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `name` char(40) NOT NULL,
  `worth` int(11) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `odds` decimal(10,0) NOT NULL,
  `sue` mediumint(9) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `packet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_red_packet_reward` */
 DROP TABLE IF EXISTS `tp_red_packet_reward`;/* MySQLReback Separation */ CREATE TABLE `tp_red_packet_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `mobile` char(11) NOT NULL,
  `wxname` char(40) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_renew` */
 DROP TABLE IF EXISTS `tp_renew`;/* MySQLReback Separation */ CREATE TABLE `tp_renew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` char(255) NOT NULL,
  `img_x` char(200) NOT NULL,
  `img_w` char(200) NOT NULL,
  `time` varchar(13) NOT NULL,
  `status` int(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `imgs` char(250) NOT NULL,
  `color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_reply` */
 DROP TABLE IF EXISTS `tp_reply`;/* MySQLReback Separation */ CREATE TABLE `tp_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1;/* MySQLReback Separation */
 /* 创建表结构 `tp_reply_info` */
 DROP TABLE IF EXISTS `tp_reply_info`;/* MySQLReback Separation */ CREATE TABLE `tp_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  `readpass` char(40) DEFAULT NULL,
  `banner` varchar(500) NOT NULL DEFAULT '',
  `money_chg_send_sms` int(1) NOT NULL,
  `integral_chg_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_reply_info` */
 INSERT INTO `tp_reply_info` VALUES ('1','twllsi1431226863','博览书店商城','http://weixin.blbook.cn/uploads/t/twllsi1431226863/9/3/b/6/thumb_55c286e833e5d.jpg','博览书店，书中的海洋～','Shop','1','1','','商城','','','','0','0'),('2','twllsi1431226863','团购','','博览书店团购','Groupon','1','1','a:1:{s:5:\"tplid\";i:0;}','','','','','0','0'),('3','twllsi1431226863','留言板','','博览书店留言板','message','1','1','a:2:{s:9:\"needcheck\";i:0;s:8:\"needpass\";i:0;}','','','',' ','0','0'),('4','twllsi1431226863','相册','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/3/c/9/thumb_55c9e5d84c300.jpg','','album','1','1','','','','','','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_requestdata` */
 DROP TABLE IF EXISTS `tp_requestdata`;/* MySQLReback Separation */ CREATE TABLE `tp_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_requestdata` */
 INSERT INTO `tp_requestdata` VALUES ('1','twllsi1431226863','2015','5','10','1431227893','9','0','0','5','0','3','0'),('2','twllsi1431226863','2015','5','11','1431358293','0','0','0','2','0','0','0'),('3','twllsi1431226863','2015','5','12','1431384692','4','0','0','1','0','0','0'),('4','twllsi1431226863','2015','5','17','1431858627','0','0','0','0','0','1','0'),('5','twllsi1431226863','2015','5','18','1431960462','1','0','0','0','0','0','0'),('6','twllsi1431226863','2015','5','19','1431965273','0','16','0','2','0','0','0'),('7','twllsi1431226863','2015','5','20','1432078055','0','1','0','36','0','0','0'),('8','twllsi1431226863','2015','5','21','1432161949','6','0','0','0','0','1','0'),('9','twllsi1431226863','2015','6','2','1433247600','28','0','0','0','0','0','0'),('10','twllsi1431226863','2015','6','3','1433282823','2','0','0','0','0','0','0'),('11','twllsi1431226863','2015','6','4','1433410169','9','0','0','0','0','0','0'),('12','twllsi1431226863','2015','6','6','1433559765','2','0','0','1','0','0','0'),('13','twllsi1431226863','2015','6','10','1433904974','2','0','0','0','0','0','0'),('14','twllsi1431226863','2015','6','11','1434021750','0','0','0','0','0','1','0'),('15','twllsi1431226863','2015','6','16','1434445993','9','0','0','0','0','0','0'),('16','twllsi1431226863','2015','6','20','1434782696','48','0','0','0','0','0','0'),('17','twllsi1431226863','2015','6','21','1434839601','50','0','0','0','0','0','0'),('18','twllsi1431226863','2015','6','22','1434903319','14','0','0','0','0','2','0'),('19','twllsi1431226863','2015','6','25','1435199757','0','1','0','0','1','1','0'),('20','twllsi1431226863','2015','6','27','1435390639','3','0','0','0','2','0','0'),('21','twllsi1431226863','2015','6','29','1435583511','0','0','0','0','0','1','0'),('22','twllsi1431226863','2015','7','4','1436017042','0','0','0','0','1','0','0'),('23','twllsi1431226863','2015','7','8','1436356699','0','0','0','0','2','0','0'),('24','twllsi1431226863','2015','7','9','1436424148','0','0','0','0','11','0','0'),('25','twllsi1431226863','2015','7','10','1436489306','0','0','0','0','0','1','0'),('26','twllsi1431226863','2015','7','12','1436693405','1','0','0','0','0','1','0'),('27','twllsi1431226863','2015','7','13','1436773582','0','0','0','0','1','0','0'),('28','twllsi1431226863','2015','7','15','1436936697','0','0','0','0','1','1','0'),('29','twllsi1431226863','2015','7','17','1437071684','0','0','0','0','2','1','0'),('30','twllsi1431226863','2015','7','18','1437228939','0','0','0','0','1','0','0'),('31','twllsi1431226863','2015','7','26','1437840357','9','0','0','0','0','0','0'),('32','twllsi1431226863','2015','7','28','1438045029','0','0','0','0','1','2','0'),('33','twllsi1431226863','2015','7','30','1438222348','5','0','0','0','0','0','0'),('34','twllsi1431226863','2015','7','31','1438334681','0','0','0','0','1','1','0'),('35','twllsi1431226863','2015','8','1','1438360150','0','0','0','0','2','0','0'),('36','twllsi1431226863','2015','8','2','1438478548','0','1','0','0','3','1','0'),('37','twllsi1431226863','2015','8','3','1438567684','14','1','0','0','5','2','0'),('38','twllsi1431226863','2015','8','4','1438638210','2','3','0','0','3','3','0'),('39','twllsi1431226863','2015','8','5','1438728461','1','1','0','2','3','3','0'),('40','twllsi1431226863','2015','8','6','1438811516','2','1','0','2','6','3','0'),('41','twllsi1431226863','2015','8','7','1438878514','0','0','0','22','6','0','0'),('42','twllsi1431226863','2015','8','8','1438995556','0','0','0','5','3','0','0'),('43','twllsi1431226863','2015','8','9','1439062192','0','0','0','13','0','0','0'),('44','twllsi1431226863','2015','8','10','1439171140','0','0','0','5','1','0','0'),('45','twllsi1431226863','2015','8','11','1439293071','0','66','0','0','5','3','0'),('46','twllsi1431226863','2015','8','12','1439332567','0','45','0','0','11','1','0'),('47','twllsi1431226863','2015','8','13','1439400069','0','105','0','0','21','1','0'),('48','twllsi1431226863','2015','8','14','1439485773','1','26','0','0','8','1','0'),('49','twllsi1431226863','2015','8','15','1439591383','0','5','0','0','0','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_research` */
 DROP TABLE IF EXISTS `tp_research`;/* MySQLReback Separation */ CREATE TABLE `tp_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_research_answer` */
 DROP TABLE IF EXISTS `tp_research_answer`;/* MySQLReback Separation */ CREATE TABLE `tp_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_research_question` */
 DROP TABLE IF EXISTS `tp_research_question`;/* MySQLReback Separation */ CREATE TABLE `tp_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_research_result` */
 DROP TABLE IF EXISTS `tp_research_result`;/* MySQLReback Separation */ CREATE TABLE `tp_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_reservation` */
 DROP TABLE IF EXISTS `tp_reservation`;/* MySQLReback Separation */ CREATE TABLE `tp_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_reservebook` */
 DROP TABLE IF EXISTS `tp_reservebook`;/* MySQLReback Separation */ CREATE TABLE `tp_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `carnum` varchar(50) DEFAULT '',
  `orderName` varchar(50) DEFAULT '',
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  `km` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_rippleos_node` */
 DROP TABLE IF EXISTS `tp_rippleos_node`;/* MySQLReback Separation */ CREATE TABLE `tp_rippleos_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `node` int(20) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `code_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_role` */
 DROP TABLE IF EXISTS `tp_role`;/* MySQLReback Separation */ CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_role` */
 INSERT INTO `tp_role` VALUES ('1','超级管理员','0','1','0',''),('2','演示组','0','1','0',''),('3','普通会员','0','1','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_role_user` */
 DROP TABLE IF EXISTS `tp_role_user`;/* MySQLReback Separation */ CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_router` */
 DROP TABLE IF EXISTS `tp_router`;/* MySQLReback Separation */ CREATE TABLE `tp_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_router_config` */
 DROP TABLE IF EXISTS `tp_router_config`;/* MySQLReback Separation */ CREATE TABLE `tp_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_scene` */
 DROP TABLE IF EXISTS `tp_scene`;/* MySQLReback Separation */ CREATE TABLE `tp_scene` (
  `sceneid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `scenecode_varchar` varchar(50) NOT NULL,
  `scenename_varchar` varchar(50) DEFAULT NULL,
  `scenetype_int` int(11) NOT NULL DEFAULT '0',
  `userid_int` int(50) NOT NULL,
  `hitcount_int` int(11) NOT NULL DEFAULT '0',
  `createtime_time` datetime DEFAULT NULL,
  `musicurl_varchar` varchar(500) DEFAULT NULL,
  `videocode_varchar` varchar(2000) DEFAULT NULL,
  `showstatus_int` int(11) NOT NULL DEFAULT '1' COMMENT '显示状态1显示,2关闭',
  `thumbnail_varchar` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `movietype_int` int(11) DEFAULT '0' COMMENT '翻页方式',
  `desc_varchar` varchar(500) DEFAULT NULL COMMENT '场景描述',
  `ip_varchar` varchar(50) DEFAULT NULL,
  `delete_int` int(11) NOT NULL DEFAULT '0' COMMENT '0未删,1已经删除 ',
  `tagid_int` int(11) NOT NULL DEFAULT '0',
  `sourceId_int` int(11) NOT NULL DEFAULT '0',
  `biztype_int` int(11) NOT NULL DEFAULT '1',
  `eqid_int` int(11) DEFAULT NULL,
  `eqcode` varchar(50) DEFAULT NULL,
  `datacount_int` int(11) NOT NULL DEFAULT '0',
  `musictype_int` int(11) NOT NULL DEFAULT '3',
  `usecount_int` int(11) NOT NULL DEFAULT '0',
  `fromsceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `publishTime` int(10) unsigned NOT NULL DEFAULT '0',
  `updateTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sceneid_bigint`),
  UNIQUE KEY `scenecode` (`scenecode_varchar`) USING BTREE,
  KEY `userid` (`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_scenedata` */
 DROP TABLE IF EXISTS `tp_scenedata`;/* MySQLReback Separation */ CREATE TABLE `tp_scenedata` (
  `dataid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `elementid_int` int(11) DEFAULT '0',
  `elementtitle_varchar` varchar(50) DEFAULT NULL,
  `elementtype_int` int(11) NOT NULL DEFAULT '5',
  `userid_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid_bigint`),
  KEY `sceneid` (`sceneid_bigint`,`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_scenedatadetail` */
 DROP TABLE IF EXISTS `tp_scenedatadetail`;/* MySQLReback Separation */ CREATE TABLE `tp_scenedatadetail` (
  `detailid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `createtime_time` datetime DEFAULT NULL,
  `ip_varchar` varchar(50) DEFAULT NULL,
  `content_varchar` text,
  `is_import` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`detailid_bigint`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_scenedatasys` */
 DROP TABLE IF EXISTS `tp_scenedatasys`;/* MySQLReback Separation */ CREATE TABLE `tp_scenedatasys` (
  `dataid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `pageid_bigint` bigint(20) NOT NULL DEFAULT '0',
  `elementid_int` int(11) DEFAULT '0',
  `elementtitle_varchar` varchar(50) DEFAULT NULL,
  `elementtype_int` int(11) NOT NULL DEFAULT '5',
  `userid_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid_bigint`),
  KEY `sceneid` (`sceneid_bigint`,`userid_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_scenepage` */
 DROP TABLE IF EXISTS `tp_scenepage`;/* MySQLReback Separation */ CREATE TABLE `tp_scenepage` (
  `pageid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL,
  `scenecode_varchar` varchar(50) NOT NULL,
  `pagecurrentnum_int` int(11) NOT NULL DEFAULT '1' COMMENT '当前页数',
  `createtime_time` datetime DEFAULT NULL,
  `content_text` longtext,
  `pagename_varchar` varchar(50) DEFAULT NULL,
  `userid_int` int(11) NOT NULL,
  `properties_text` text NOT NULL,
  `myTypl_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageid_bigint`),
  KEY `sceneid` (`scenecode_varchar`) USING BTREE,
  KEY `scenid` (`sceneid_bigint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_scenepagesys` */
 DROP TABLE IF EXISTS `tp_scenepagesys`;/* MySQLReback Separation */ CREATE TABLE `tp_scenepagesys` (
  `pageid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `sceneid_bigint` bigint(20) NOT NULL,
  `scenecode_varchar` varchar(50) NOT NULL,
  `pagecurrentnum_int` int(11) NOT NULL DEFAULT '1' COMMENT '当前页数',
  `createtime_time` datetime DEFAULT NULL,
  `content_text` longtext,
  `pagename_varchar` varchar(50) DEFAULT NULL,
  `userid_int` int(11) NOT NULL,
  `biztype_int` int(11) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT NULL,
  `thumbsrc_varchar` varchar(200) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `eqid_int` int(11) DEFAULT NULL,
  `usecount_int` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageid_bigint`),
  KEY `sceneid` (`scenecode_varchar`) USING BTREE,
  KEY `scenid` (`sceneid_bigint`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_cat` */
 DROP TABLE IF EXISTS `tp_school_cat`;/* MySQLReback Separation */ CREATE TABLE `tp_school_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('1','0') NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_school_cat` */
 INSERT INTO `tp_school_cat` VALUES ('1','twllsi1431226863','教师风采','/tpl/static/attachment/icon/edu/edu_red/27.png','100','1','{siteUrl}/index.php?g=Wap&m=School&a=public_list&token=twllsi1431226863&wecha_id={wechat_id}&cid=0&type=assess','1'),('2','twllsi1431226863','食谱安排','/tpl/static/attachment/icon/canyin/canyin_red/9.png','99','1','{siteUrl}/index.php?g=Wap&m=School&a=public_list&token=twllsi1431226863&wecha_id={wechat_id}&type=school','1'),('3','twllsi1431226863','成绩查询','/tpl/static/attachment/icon/edu/edu_red/25.png','98','1','{siteUrl}/index.php?g=Wap&m=School&a=qresults&token=twllsi1431226863&wecha_id={wechat_id}','1'),('4','twllsi1431226863','课程预约','/tpl/static/attachment/icon/edu/edu_red/4.png','97','1','{siteUrl}/index.php?g=Wap&m=School&a=public_list&token=twllsi1431226863&wecha_id={wechat_id}&type=course','1'),('5','twllsi1431226863','课程安排','/tpl/static/attachment/icon/edu/edu_red/6.png','96','1','{siteUrl}/index.php?g=Wap&m=School&a=public_list&token=twllsi1431226863&wecha_id={wechat_id}&type=curriculum','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_school_classify` */
 DROP TABLE IF EXISTS `tp_school_classify`;/* MySQLReback Separation */ CREATE TABLE `tp_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_score` */
 DROP TABLE IF EXISTS `tp_school_score`;/* MySQLReback Separation */ CREATE TABLE `tp_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_set_index` */
 DROP TABLE IF EXISTS `tp_school_set_index`;/* MySQLReback Separation */ CREATE TABLE `tp_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_students` */
 DROP TABLE IF EXISTS `tp_school_students`;/* MySQLReback Separation */ CREATE TABLE `tp_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_tcourse` */
 DROP TABLE IF EXISTS `tp_school_tcourse`;/* MySQLReback Separation */ CREATE TABLE `tp_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_school_teachers` */
 DROP TABLE IF EXISTS `tp_school_teachers`;/* MySQLReback Separation */ CREATE TABLE `tp_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_score_gift` */
 DROP TABLE IF EXISTS `tp_score_gift`;/* MySQLReback Separation */ CREATE TABLE `tp_score_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '奖品名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '所需积分',
  `num` int(11) NOT NULL COMMENT '剩余数量',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_score_logs` */
 DROP TABLE IF EXISTS `tp_score_logs`;/* MySQLReback Separation */ CREATE TABLE `tp_score_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `scoretype` int(3) NOT NULL COMMENT '积分类型1.消耗2.增加',
  `typename` varchar(200) NOT NULL COMMENT '操作类型名称',
  `info` text NOT NULL COMMENT '详情记录',
  `time` varchar(200) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakeadminuser` */
 DROP TABLE IF EXISTS `tp_secakeadminuser`;/* MySQLReback Separation */ CREATE TABLE `tp_secakeadminuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakecouexp` */
 DROP TABLE IF EXISTS `tp_secakecouexp`;/* MySQLReback Separation */ CREATE TABLE `tp_secakecouexp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `zhan_gui` varchar(255) DEFAULT NULL,
  `zhan_gui_num` varchar(255) DEFAULT NULL,
  `img_1` varchar(255) DEFAULT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakecoupon` */
 DROP TABLE IF EXISTS `tp_secakecoupon`;/* MySQLReback Separation */ CREATE TABLE `tp_secakecoupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `coupon_name` varchar(100) NOT NULL DEFAULT '',
  `coupon_value` varchar(100) NOT NULL DEFAULT '0.00',
  `start_time` int(15) unsigned NOT NULL DEFAULT '0',
  `if_issue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pro_id` int(10) DEFAULT NULL,
  `x_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `store_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakehd` */
 DROP TABLE IF EXISTS `tp_secakehd`;/* MySQLReback Separation */ CREATE TABLE `tp_secakehd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL,
  `jp_name` varchar(100) NOT NULL DEFAULT '',
  `start_time` int(15) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakepro` */
 DROP TABLE IF EXISTS `tp_secakepro`;/* MySQLReback Separation */ CREATE TABLE `tp_secakepro` (
  `p_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) NOT NULL DEFAULT '',
  `pro_num` varchar(100) NOT NULL DEFAULT '',
  `pro_zhanguan` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`p_id`),
  KEY `pro_name` (`pro_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakepur` */
 DROP TABLE IF EXISTS `tp_secakepur`;/* MySQLReback Separation */ CREATE TABLE `tp_secakepur` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `add_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_secakexunbao` */
 DROP TABLE IF EXISTS `tp_secakexunbao`;/* MySQLReback Separation */ CREATE TABLE `tp_secakexunbao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `state` int(5) NOT NULL DEFAULT '0',
  `x_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_action` */
 DROP TABLE IF EXISTS `tp_seckill_action`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(20) NOT NULL COMMENT '活动名称',
  `action_header_img` text NOT NULL COMMENT '活动头部图片',
  `action_key` varchar(50) NOT NULL COMMENT '活动key',
  `action_sdate` int(11) NOT NULL COMMENT '活动开始时间',
  `action_edate` int(11) NOT NULL COMMENT '活动结束时间',
  `rand_min_time` int(11) NOT NULL COMMENT '最小分享时间',
  `rand_max_time` int(11) NOT NULL COMMENT '最大分享时间',
  `reply_pic` text COMMENT '活动图片',
  `action_token` varchar(50) DEFAULT '' COMMENT '活动发起人',
  `action_rule` text COMMENT '活动规则',
  `action_open` tinyint(4) DEFAULT '0' COMMENT '活动状态',
  `reply_title` varchar(20) DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) DEFAULT '' COMMENT '回复简介',
  `reply_keyword` varchar(50) DEFAULT '' COMMENT '关键词',
  `action_is_reg` tinyint(4) NOT NULL DEFAULT '1',
  `action_is_attention` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`action_id`),
  KEY `action_name` (`action_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_seckill_action` */
 INSERT INTO `tp_seckill_action` VALUES ('1','微信开张秒杀活动','http://weixin.blbook.cn/uploads/t/twllsi1431226863/a/0/3/4/thumb_555ca2a43176f.jpg','74e2f8c5c939f297','1432216800','1434758400','10','30','http://weixin.blbook.cn/tpl/static/seckill/images/banner.png','twllsi1431226863','博览书店在微信平台开放后可以进行秒杀活动！','0','博览书店秒杀活动','博览书店秒杀活动，大家一起来抢购！','秒杀','1','2');/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_base_shop` */
 DROP TABLE IF EXISTS `tp_seckill_base_shop`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_base_shop` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL COMMENT '活动id',
  `shop_name` varchar(20) NOT NULL COMMENT '商品名称',
  `shop_num` int(11) unsigned NOT NULL,
  `shop_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `shop_tran` decimal(10,2) NOT NULL COMMENT '运费',
  `shop_open` tinyint(4) DEFAULT '0' COMMENT '商品状态',
  `shop_detail` text COMMENT '商品描述文本',
  `shop_img` text NOT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `shop_name` (`shop_name`) USING BTREE,
  KEY `action_id` (`action_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_book` */
 DROP TABLE IF EXISTS `tp_seckill_book`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(32) NOT NULL COMMENT '订单号',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `wecha_id` varchar(100) NOT NULL COMMENT '公众号的标识',
  `token` varchar(50) NOT NULL COMMENT '公众号的标识',
  `paytype` varchar(50) NOT NULL DEFAULT '' COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) NOT NULL DEFAULT '' COMMENT '第三方支付平台的订单ID，用于对帐',
  `book_aid` int(11) NOT NULL COMMENT '活动id',
  `book_sid` int(11) NOT NULL COMMENT '商品id',
  `book_time` int(11) NOT NULL COMMENT '订单时间',
  `book_uid` int(11) NOT NULL COMMENT '订单用户',
  `deli_addr` varchar(100) DEFAULT '' COMMENT '收货地址',
  `true_name` varchar(30) DEFAULT '' COMMENT '收件人姓名',
  `tel` varchar(20) DEFAULT '' COMMENT '固话',
  `cel` varchar(20) DEFAULT '' COMMENT '手机',
  PRIMARY KEY (`book_id`),
  KEY `orderid` (`orderid`) USING BTREE,
  KEY `book_aid` (`book_aid`) USING BTREE,
  KEY `book_sid` (`book_sid`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_share` */
 DROP TABLE IF EXISTS `tp_seckill_share`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_share` (
  `share_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_share` varchar(50) NOT NULL COMMENT '分享key',
  `share_nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `share_time` int(11) DEFAULT '0' COMMENT '减少时间',
  `share_pic` varchar(255) DEFAULT '' COMMENT '用户图像',
  `is_opened` tinyint(4) DEFAULT '0' COMMENT '0 表示用户未接受 1 表示已接受',
  `open_time` int(11) DEFAULT '0' COMMENT '分享时间',
  `share_wechaid` varchar(50) DEFAULT '' COMMENT '分享链接wecha_id',
  PRIMARY KEY (`share_id`),
  KEY `user_share` (`user_share`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_shop_thum` */
 DROP TABLE IF EXISTS `tp_seckill_shop_thum`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_shop_thum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(20) NOT NULL COMMENT '商品id',
  `shop_thum` varchar(500) NOT NULL COMMENT '缩略图',
  `shop_big` varchar(500) NOT NULL COMMENT '大图',
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_seckill_users` */
 DROP TABLE IF EXISTS `tp_seckill_users`;/* MySQLReback Separation */ CREATE TABLE `tp_seckill_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_aid` int(11) NOT NULL COMMENT '活动id',
  `user_nickname` varchar(20) DEFAULT '' COMMENT '普通用户昵称',
  `user_headimgurl` varchar(500) DEFAULT '' COMMENT '用户用户头像',
  `user_shareid` varchar(100) DEFAULT '' COMMENT '用户分享key',
  `user_wechaid` varchar(100) DEFAULT '' COMMENT '用户wcha_id',
  `user_sex` tinyint(4) DEFAULT '0' COMMENT '用户性别',
  `user_tel` varchar(20) DEFAULT '' COMMENT '用户电话',
  `user_qq` varchar(20) DEFAULT '' COMMENT '用户QQ',
  `user_address` varchar(50) DEFAULT '' COMMENT '用户address',
  `user_province` varchar(50) DEFAULT '' COMMENT '用户province',
  `user_city` varchar(50) DEFAULT '' COMMENT '用户city',
  `user_mintime` int(11) DEFAULT '0' COMMENT '用户分享奖励时间',
  `token` varchar(50) DEFAULT NULL COMMENT 'token',
  PRIMARY KEY (`user_id`),
  KEY `user_shareid` (`user_shareid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_seckill_users` */
 INSERT INTO `tp_seckill_users` VALUES ('1','1','soGary','http://weixin.blbook.cn/tpl/static/portrait/8.jpg','a76973b75283a52d0b6c619df38ecfca','onHRmuCEpECSyzxz_isbLqeUI0lw','1','18588872622','229034523','','广东','广州','0','twllsi1431226863'),('2','1','吕端','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLEjWrPfGK1aRlpgiaeSylLDib5uqELqFDzzgbNYIucO6ibCm793LZc6qLv7grsqN57GjTXbshS20DpZ/0','8fa64247848dd94b24410ab8b5dd5242','onHRmuAvwwx6K08Guyj02PIKTyBc','1','','','','北京','石景山','0','twllsi1431226863'),('3','1','LigneousCat','http://wx.qlogo.cn/mmopen/PiajxSqBRaELU760teOQtCGdw29EFlFPJzahciboasibNVRI5ky06lRouHh3AyDibLCvVI7o6YCzVg4ZoicaGtbOpDg/0','eb51dc4475bcd1f6fe80189140411f3c','onHRmuBJhvmUblM7QEf9ecnd9Y7U','1','','','','广东','广州','0','twllsi1431226863'),('4','1','吴翠丽','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDpAfrktHVYkEZAN3gw5Vut8WfUd013agibHSaEPl0bVzQJm79yicXB0un5xzKLEWL9pY8Ys2Cqw1YibNL9ZhunOVlDEnbNY8p8Fo/0','e2f679931298b48b6e6839c1b1f73443','onHRmuIloEzDCoNFch0PacyF4CS0','2','','','','','','0','twllsi1431226863'),('5','1','微营销','http://wx.qlogo.cn/mmopen/lKflbtDRhzwGzVuLHz1CQPsdhK87jJNEJlIFbYJ9pHXibbAEqPsNiaBNRVf1dqHS05duO6OiaDAXMkrW3iaaRHdbicPb6HQ8ce5iaT/0','426b4665d499e06ac340c645e61363fb','onHRmuHOMziAIGbnqE5mz1RSpef0','1','','','','广东','广州','0','twllsi1431226863'),('6','1','Evildoer','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNcpO4VdIFkbWa35emBFKq5YicU1Zic58hyfqs6JkxwM59dlsf9XmE5P7mA0XpHPym2E3cuqTviaibRNw01puM4fA8X/0','4ec3e12f3c5dda5235a1c5bcee5e910b','onHRmuPOyq4N1tWU3UdFrMuPb2rk','2','','','','','','0','twllsi1431226863'),('7','1','神秘用户','http://wx.qlogo.cn/mmopen/oQ7QIr12iawq0I1ibdKkUeR79UbyxfVTAIDmrqDsFEXyljKSbibibjDWkPn1knJibia8Z8lsvY4FswpxOgrN2ibXMRyF5KZz0tq0crq/0','e1087b85406fb74660686f30c66a048d','onHRmuI8QJzJeqpD8ia-wKETRElE','2','','','','广东','广州','0','twllsi1431226863'),('8','1','.April','http://wx.qlogo.cn/mmopen/lKflbtDRhzwSPibslC3jx0YRVvD7XXH3yKsK3zBc0hzQx5KAmFTpEOaFlwhP9t55aMC60p9s3iccLcq9NwGAC3OibeG0M5uxj24/0','cb28411d8b086194742b585b0237b5ca','onHRmuFo6gTCT3H8MBbYd_y4YJKs','2','','','','广东','广州','0','twllsi1431226863'),('9','1','梁.','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSj0A5KVHLgib73BToLpqFFzXTzNusjWlbJbwwTeIFOWZ1ZkuicQhVl0yjUnMsSXUYkCJzXeVlrdvUydhTw5Jayokic/0','781b2055b91248c323076d64a1c7d521','onHRmuF3tHrZ7QKiggvfSlQxjorw','2','','','','广东','广州','0','twllsi1431226863');/* MySQLReback Separation */
 /* 创建表结构 `tp_selfform` */
 DROP TABLE IF EXISTS `tp_selfform`;/* MySQLReback Separation */ CREATE TABLE `tp_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_selfform_input` */
 DROP TABLE IF EXISTS `tp_selfform_input`;/* MySQLReback Separation */ CREATE TABLE `tp_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_selfform_value` */
 DROP TABLE IF EXISTS `tp_selfform_value`;/* MySQLReback Separation */ CREATE TABLE `tp_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_send_message` */
 DROP TABLE IF EXISTS `tp_send_message`;/* MySQLReback Separation */ CREATE TABLE `tp_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `openid` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `send_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_send_message` */
 INSERT INTO `tp_send_message` VALUES ('4','2357161657','博览书店','twllsi1431226863','news','','24','','wgZTYOz1SdoJ0O2W5ZogwHXnP6yFniUkP2I1mxlJOYS25G9onSGfSHDIfBNZxE0m','0','0','1439345083','onHRmuD5eAyABVzl3tWBJKXtPjjs,onHRmuCEpECSyzxz_isbLqeUI0lw','1','2'),('5','2357163848','你试试告诉孩子“在番禺可以和查理九世见面”，TA会有什么反应？？！！','twllsi1431226863','news','','23','','_He6a7ovfB7eUAVvPoX6P-3z-WA5NNbIxeDLshfgXBxurTlk1Ilc0pl1DmZeV7YC','0','0','1439364574','onHRmuAvwwx6K08Guyj02PIKTyBc,onHRmuD5eAyABVzl3tWBJKXtPjjs','1','2'),('6','2357163915','“博览书店”到底有多牛？！-----杨红樱刚回，“查理九世”就来了！','twllsi1431226863','news','','25','','WF6qKxR0NV_7TA9dO0G2oGpfWM84xvmQVFeBKRFQBNktOSega9eR7FUzpw5iCCn-','0','0','1439365179','onHRmuAvwwx6K08Guyj02PIKTyBc,onHRmuD5eAyABVzl3tWBJKXtPjjs','1','2'),('7','2357163973','你试试告诉孩子“在番禺可以和查理九世见面”，TA会有什么反','twllsi1431226863','news','','23','','y6d268tRYKUolHy_rNtcXGJCY_Lq2J3Zkqj9XKEZFsEZr5RCIU3h2fWanmsLYW5E','0','0','1439365934','onHRmuD5eAyABVzl3tWBJKXtPjjs,onHRmuCEpECSyzxz_isbLqeUI0lw','1','2'),('9','2357164169','你试试告诉孩子“在番禺可以和查理九世见面”，TA会有什么反','twllsi1431226863','news','','23','','APnnyvLEkHrEiw1pRRwOK2SULhSI6yHcPGVhUpwwCPqt-xx3rMhH-SiprVVW7lqt','0','0','1439367392','onHRmuD5eAyABVzl3tWBJKXtPjjs,onHRmuCEpECSyzxz_isbLqeUI0lw','1','2'),('10','2357164316','你试试告诉孩子“在番禺可以和查理九世见面”，TA会有什么反','twllsi1431226863','news','','23','','Zac_lzqFZBCr8r5ynjP_tF572EzoyVsXtSDx0n8cf8vxNeAsXv74cZZQfk3cVbvy','0','0','1439367830','onHRmuD5eAyABVzl3tWBJKXtPjjs,onHRmuCEpECSyzxz_isbLqeUI0lw','1','2'),('11','2357164665','免费巴士信息－广州番禺万达广场','twllsi1431226863','news','','26','','KLKNu7uwK-lL5j9Y8WD_0ujK-AC6P5goQEyomFEEVE8ralLPDJm9-XCccKyxjqZR','0','0','1439368268','onHRmuD5eAyABVzl3tWBJKXtPjjs,onHRmuCEpECSyzxz_isbLqeUI0lw','1','2'),('27','2357166740','“博览书店”到底有多牛？！-----杨红樱刚回，“查理九世”就来了！','twllsi1431226863','news','','23,25','','WhbzehkIibW7QWvmZEpTRCUiGaOz43fL-MJbDhtpuS407ayePVSUN9QNLmHzz3No','0','0','1439380347','','1','3'),('29','','“博览书店”到底有多牛？！-----杨红樱刚回，“查理九世”就来了！','twllsi1431226863','news','','23,25','','-iSy0oXJqhOtgmk3HYpZxflIvQyQOxkmJ7CJhOTcp1ipFqNxGJ61OF6lb4pnfcyf','0','0','0','','0','3'),('36','','博览书店','twllsi1431226863','news','','27','','4NhF9DpKVQAfJjLRzFHdP10tTQcEuKpxXK9L6XXg9iSs8oFLdUQhZu4DyHR5_I-_','0','0','0','','0','3'),('37','','博览书店','twllsi1431226863','news','','27','','ZKReDogS1dnfEQaIFL-66hEqCRWgaPexieNZ0HxK0hju3tXyyYxglYigVVhBNI1Q','0','0','0','','0','3');/* MySQLReback Separation */
 /* 创建表结构 `tp_senior_scene` */
 DROP TABLE IF EXISTS `tp_senior_scene`;/* MySQLReback Separation */ CREATE TABLE `tp_senior_scene` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `add_time` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `intro` varchar(200) NOT NULL,
  `pic` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_service_logs` */
 DROP TABLE IF EXISTS `tp_service_logs`;/* MySQLReback Separation */ CREATE TABLE `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_service_my` */
 DROP TABLE IF EXISTS `tp_service_my`;/* MySQLReback Separation */ CREATE TABLE `tp_service_my` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `type` varchar(2) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_service_my` */
 INSERT INTO `tp_service_my` VALUES ('1','twllsi1431226863','cy','我的餐饮','http://s.404.cn/tpl/static/attachment/icon/canyin/canyin_red/5.png','1'),('2','twllsi1431226863','sc','我的商城','http://s.404.cn/tpl/static/attachment/icon/hotel/hotel_red/8.png','1'),('3','twllsi1431226863','tg','我的团购','http://s.404.cn/tpl/static/attachment/icon/hotel/hotel_red/27.png','1'),('4','twllsi1431226863','wm','我的外卖','http://s.404.cn/tpl/static/attachment/icon/canyin/canyin_red/20.png','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_service_preferential` */
 DROP TABLE IF EXISTS `tp_service_preferential`;/* MySQLReback Separation */ CREATE TABLE `tp_service_preferential` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `info` text,
  `img` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_service_setup` */
 DROP TABLE IF EXISTS `tp_service_setup`;/* MySQLReback Separation */ CREATE TABLE `tp_service_setup` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `openid` varchar(200) NOT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_service_user` */
 DROP TABLE IF EXISTS `tp_service_user`;/* MySQLReback Separation */ CREATE TABLE `tp_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_service_wxuser` */
 DROP TABLE IF EXISTS `tp_service_wxuser`;/* MySQLReback Separation */ CREATE TABLE `tp_service_wxuser` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_key` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `wxappid` varchar(200) DEFAULT NULL,
  `wxappsecret` varchar(500) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_service_wxuser` */
 INSERT INTO `tp_service_wxuser` VALUES ('1','twllsi1431226863','','','0','','','');/* MySQLReback Separation */
 /* 创建表结构 `tp_shake` */
 DROP TABLE IF EXISTS `tp_shake`;/* MySQLReback Separation */ CREATE TABLE `tp_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `logo` char(100) NOT NULL,
  `cheer` varchar(350) NOT NULL,
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_shake_rt` */
 DROP TABLE IF EXISTS `tp_shake_rt`;/* MySQLReback Separation */ CREATE TABLE `tp_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL,
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_shakearoung_device` */
 DROP TABLE IF EXISTS `tp_shakearoung_device`;/* MySQLReback Separation */ CREATE TABLE `tp_shakearoung_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int(11) NOT NULL COMMENT '设备ID',
  `uuid` char(50) NOT NULL COMMENT '设备UUID',
  `major` int(11) NOT NULL COMMENT '主设备ID',
  `minor` int(11) NOT NULL COMMENT '次设备ID',
  `apply_id` int(11) NOT NULL DEFAULT '0' COMMENT '批次ID',
  `device_comment` char(30) NOT NULL DEFAULT '' COMMENT '设备名称',
  `page_num` int(11) NOT NULL COMMENT '关联的页面数',
  `page_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '关联的页面ID列表',
  `status` tinyint(1) NOT NULL COMMENT '设备状态',
  `token` char(50) NOT NULL,
  `add_reason` varchar(300) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_shakearoung_page` */
 DROP TABLE IF EXISTS `tp_shakearoung_page`;/* MySQLReback Separation */ CREATE TABLE `tp_shakearoung_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL COMMENT '页面ID',
  `title` char(10) NOT NULL DEFAULT '' COMMENT '页面标题',
  `description` char(10) NOT NULL DEFAULT '' COMMENT '页面副标题',
  `icon_url` varchar(255) NOT NULL DEFAULT '' COMMENT '页面图标URL',
  `page_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `page_comment` char(15) NOT NULL DEFAULT '' COMMENT '页面的备注信息',
  `token` char(50) NOT NULL DEFAULT '',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_shakelog` */
 DROP TABLE IF EXISTS `tp_shakelog`;/* MySQLReback Separation */ CREATE TABLE `tp_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_share` */
 DROP TABLE IF EXISTS `tp_share`;/* MySQLReback Separation */ CREATE TABLE `tp_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_share` */
 INSERT INTO `tp_share` VALUES ('1','Card','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1432104207','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Card&amp;a=index&amp;token=twllsi1431226863'),('2','Card','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1432104953','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Card&amp;a=index&amp;token=twllsi1431226863'),('3','Helping','16','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1432346656','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Helping&amp;a=index&amp;token=twllsi1431226863&amp;id=16&amp;share_key=a9df79693030a934'),('4','Store','24','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1438867936','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Store&amp;a=product&amp;token=twllsi1431226863&amp;id=24&amp;twid=CTh49&amp;cid=1'),('5','Groupon','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1438873920','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Groupon&amp;a=grouponIndex&amp;token=twllsi1431226863'),('6','Photo','0','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','frineds','1438998861','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Photo&amp;a=plist&amp;token=twllsi1431226863&amp;id=1'),('7','Photo','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','frined','1439298015','http://weixin.blbook.cn/index.php?g=Wap&amp;m=Photo&amp;a=plist&amp;token=twllsi1431226863&amp;id=2');/* MySQLReback Separation */
 /* 创建表结构 `tp_share_set` */
 DROP TABLE IF EXISTS `tp_share_set`;/* MySQLReback Separation */ CREATE TABLE `tp_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_sign_conf` */
 DROP TABLE IF EXISTS `tp_sign_conf`;/* MySQLReback Separation */ CREATE TABLE `tp_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_sign_in` */
 DROP TABLE IF EXISTS `tp_sign_in`;/* MySQLReback Separation */ CREATE TABLE `tp_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_sign_in` */
 INSERT INTO `tp_sign_in` VALUES ('1','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','5','1431962534','0','18588872622','0'),('2','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','5','1432161720','0','18588872622','0'),('3','twllsi1431226863','onHRmuD5eAyABVzl3tWBJKXtPjjs','soGary','5','1432249758','0','','0'),('4','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','5','1432346612','0','18588872622','0'),('5','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','Happy','5','1433051473','0','','0'),('6','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','吕端','5','1433258514','0','','0'),('7','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','Happy','5','1433560056','0','','0'),('8','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','吕端','5','1437840125','0','','0'),('9','twllsi1431226863','onHRmuOCs7jcLkwmiotxd5w4dAXE','双子星罗t','5','1438485262','0','','0'),('10','twllsi1431226863','onHRmuDcnVZKr07-0gdxQkoNSknI','波波','5','1438847087','0','','0'),('11','twllsi1431226863','onHRmuNgqpxURQCC-QS7NCR750oY','小奕','5','1438878736','0','','0'),('12','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','吕端','5','1438915500','0','','0'),('13','twllsi1431226863','onHRmuO_Od1rAtH6EniASrqQv16g','熊爱军','5','1438930049','0','','0'),('14','twllsi1431226863','onHRmuADaak92lxaJf2nu8EFIb34','Sylvia华女','5','1438952325','0','','0'),('15','twllsi1431226863','onHRmuBsJeUGkT0OfpK0f0CrAWsk','芳','5','1438952498','0','','0'),('16','twllsi1431226863','onHRmuElVClSOAT1llROvWc1V6aU','Kaungsun','5','1439000277','0','','0'),('17','twllsi1431226863','onHRmuMqu5DelI0z7SPFsWli34XU','林小乖','5','1439062251','0','','0'),('18','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','daVid','5','1439119123','0','','0'),('19','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','daVid','5','1439293792','0','','0'),('20','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','5','1439293982','0','18588872622','0'),('21','twllsi1431226863','onHRmuI7vFQTrNevc60FaLjIQc08','活着活着就老了','5','1439295352','0','','0'),('22','twllsi1431226863','onHRmuJrhck9V-aOSAt8S8FDbEDg','CC','5','1439297807','0','','0'),('23','twllsi1431226863','onHRmuDXK_rH_WUKkl7xeNrgr8wU','荣','5','1439305489','0','','0'),('24','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','daVid','5','1439381077','1','','0'),('25','twllsi1431226863','onHRmuJDi5nhWapWU4BgiPw_p_gw','2甘草话梅2','5','1439387122','0','','0'),('26','twllsi1431226863','onHRmuI7vFQTrNevc60FaLjIQc08','活着活着就老了','5','1439394189','1','','0'),('27','twllsi1431226863','onHRmuKCpYSrDw6ODqL4hg09u6Rc','梁奕墉','5','1439433805','0','','0'),('28','twllsi1431226863','onHRmuLgP5Ne_0ZyQkkM8MGYpYFU','青青河边草','5','1439442449','0','','0'),('29','twllsi1431226863','onHRmuOZBK5IKqBEdgSVae4zVgdc','王桂斌','5','1439465046','0','','0'),('30','twllsi1431226863','onHRmuOuerZGxpl9vT6vRHi9NjYM','随心出发','5','1439477124','0','','0'),('31','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','daVid','5','1439591390','0','','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_sign_set` */
 DROP TABLE IF EXISTS `tp_sign_set`;/* MySQLReback Separation */ CREATE TABLE `tp_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_sign_set` */
 INSERT INTO `tp_sign_set` VALUES ('1','签到','博览微信签到','来博览书店签到每天都有积分噢～','twllsi1431226863','http://weixin.blbook.cn/tpl/static/sign/r.jpg','http://weixin.blbook.cn/tpl/static/sign/top.jpg');/* MySQLReback Separation */
 /* 创建表结构 `tp_site_message` */
 DROP TABLE IF EXISTS `tp_site_message`;/* MySQLReback Separation */ CREATE TABLE `tp_site_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `from` varchar(60) NOT NULL,
  `relation` tinyint(3) unsigned DEFAULT '0',
  `content` varchar(255) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `read_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站内信';/* MySQLReback Separation */
 /* 创建表结构 `tp_site_plugmenu` */
 DROP TABLE IF EXISTS `tp_site_plugmenu`;/* MySQLReback Separation */ CREATE TABLE `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_site_plugmenu` */
 INSERT INTO `tp_site_plugmenu` VALUES ('twllsi1431226863','video','','0','0'),('twllsi1431226863','music','','0','0'),('twllsi1431226863','wechat','','0','0'),('twllsi1431226863','qqzone','','0','0'),('twllsi1431226863','tencentweibo','','0','0'),('twllsi1431226863','weibo','','0','0'),('twllsi1431226863','activity','','0','0'),('twllsi1431226863','membercard','','0','0'),('twllsi1431226863','shopping','','0','0'),('twllsi1431226863','email','','0','0'),('twllsi1431226863','album','','0','0'),('twllsi1431226863','home','','0','0'),('twllsi1431226863','share','','0','0'),('twllsi1431226863','message','','0','0'),('twllsi1431226863','nav','','0','0'),('twllsi1431226863','memberinfo','','0','0'),('twllsi1431226863','tel','','0','0'),('twllsi1431226863','recommend','','0','0'),('twllsi1431226863','other','','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_sms_code` */
 DROP TABLE IF EXISTS `tp_sms_code`;/* MySQLReback Separation */ CREATE TABLE `tp_sms_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(40) NOT NULL,
  `token` char(30) NOT NULL,
  `wecha_id` char(45) NOT NULL,
  `action` char(100) NOT NULL,
  `create_time` char(11) NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_sms_expendrecord` */
 DROP TABLE IF EXISTS `tp_sms_expendrecord`;/* MySQLReback Separation */ CREATE TABLE `tp_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_sms_record` */
 DROP TABLE IF EXISTS `tp_sms_record`;/* MySQLReback Separation */ CREATE TABLE `tp_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_sms_record` */
 INSERT INTO `tp_sms_record` VALUES ('1','2','twllsi1431226863','1431270639','','您的顾客好刚刚下了一个订单，订单号：20150510231039994547，手机号：18588872622请您注意查看并处理','101','1'),('2','2','twllsi1431226863','1431271324','','您的顾客好刚刚下了一个订单，订单号：20150510232204145912，手机号：18588872622请您注意查看并处理','101','1'),('3','2','twllsi1431226863','1431272372','','有新的会员领了会员卡','101','1'),('4','2','twllsi1431226863','1431963868','','您的顾客好刚刚下了一个订单，订单号：20150518234428162081，手机号：18588872622请您注意查看并处理','101','1'),('5','2','twllsi1431226863','1431989687','','您的顾客好刚刚下了一个订单，订单号：20150519065447812950，手机号：18588872622请您注意查看并处理','101','1'),('6','2','twllsi1431226863','1432103373','','有新的会员领了会员卡','101','1'),('7','2','twllsi1431226863','1432162030','','留言板有新的留言','101','1'),('8','2','twllsi1431226863','1436395482','','有新的会员领了会员卡','101','1'),('9','2','twllsi1431226863','1438406543','','有新的会员领了会员卡','101','1'),('10','2','twllsi1431226863','1438813669','','您的顾客soGary刚刚下了一个订单，订单号：20150806062747853717，手机号：18588872622请您注意查看并处理','101','1'),('11','2','twllsi1431226863','1438813745','','您的顾客soGary刚刚下了一个订单，订单号：20150806062904604953，手机号：18588872622请您注意查看并处理','101','1'),('12','2','twllsi1431226863','1438813845','','您的顾客soGary刚刚下了一个订单，订单号：20150806063045755576，手机号：18588872622请您注意查看并处理','101','1'),('13','2','twllsi1431226863','1438872385','18588872622','您在博览书店石楼分店商城购买的商品，商家已经给您发货了，请您注意查收','101','1'),('14','2','twllsi1431226863','1438872406','18588872622','您在博览书店石楼分店商城购买的商品，商家已经给您发货了，请您注意查收','101','1'),('15','2','twllsi1431226863','1438873395','','您的微信里有团购订单已经付款','101','1'),('16','2','twllsi1431226863','1438874004','','您的微信里有团购订单已经付款','101','1'),('17','2','twllsi1431226863','1439293295','','您的顾客soGary刚刚下了一个订单，订单号：20150811194135622559，手机号：18588872622请您注意查看并处理','101','1'),('18','2','twllsi1431226863','1439486147','','有新的会员领了会员卡','101','1');/* MySQLReback Separation */
 /* 创建表结构 `tp_snccode` */
 DROP TABLE IF EXISTS `tp_snccode`;/* MySQLReback Separation */ CREATE TABLE `tp_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_sncode` */
 DROP TABLE IF EXISTS `tp_sncode`;/* MySQLReback Separation */ CREATE TABLE `tp_sncode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `module` varchar(60) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islucky` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_store_flash` */
 DROP TABLE IF EXISTS `tp_store_flash`;/* MySQLReback Separation */ CREATE TABLE `tp_store_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `img` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `info` varchar(90) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_store_flash` */
 INSERT INTO `tp_store_flash` VALUES ('1','1','twllsi1431226863','http://weixin.blbook.cn/tpl/static/attachment/background/view/../edu/18.jpg','','博览书店','0'),('2','1','twllsi1431226863','http://weixin.blbook.cn/tpl/static/attachment/background/view/../edu/17.jpg','','博览书店','0'),('3','1','twllsi1431226863','http://weixin.blbook.cn/tpl/static/attachment/background/view/../edu/22.jpg','','博览书店','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_storeflash` */
 DROP TABLE IF EXISTS `tp_storeflash`;/* MySQLReback Separation */ CREATE TABLE `tp_storeflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_styleset` */
 DROP TABLE IF EXISTS `tp_styleset`;/* MySQLReback Separation */ CREATE TABLE `tp_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_susceptible` */
 DROP TABLE IF EXISTS `tp_susceptible`;/* MySQLReback Separation */ CREATE TABLE `tp_susceptible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `word` (`word`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=1063 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('1','阿扁推翻','0','1438637933','1438637933'),('2','阿宾','0','1438637933','1438637933'),('3','阿賓','0','1438637933','1438637933'),('4','挨了一炮','0','1438637933','1438637933'),('5','爱液横流','0','1438637933','1438637933'),('6','安街逆','0','1438637933','1438637933'),('7','安局办公楼','0','1438637933','1438637933'),('8','安局豪华','0','1438637933','1438637933'),('9','安门事','0','1438637933','1438637933'),('10','安眠藥','0','1438637933','1438637933'),('11','案的准确','0','1438637933','1438637933'),('12','八九民','0','1438637933','1438637933'),('13','八九学','0','1438637933','1438637933'),('14','八九政治','0','1438637933','1438637933'),('15','把病人整','0','1438637933','1438637933'),('16','把邓小平','0','1438637933','1438637933'),('17','把学生整','0','1438637933','1438637933'),('18','罢工门','0','1438637933','1438637933'),('19','白黄牙签','0','1438637933','1438637933'),('20','败培训','0','1438637933','1438637933'),('21','办本科','0','1438637933','1438637933'),('22','办理本科','0','1438637933','1438637933'),('23','办理各种','0','1438637933','1438637933'),('24','办理票据','0','1438637933','1438637933'),('25','办理文凭','0','1438637933','1438637933'),('26','办理真实','0','1438637933','1438637933'),('27','办理证书','0','1438637933','1438637933'),('28','办理资格','0','1438637933','1438637933'),('29','办文凭','0','1438637933','1438637933'),('30','办怔','0','1438637933','1438637933'),('31','办证','0','1438637933','1438637933'),('32','半刺刀','0','1438637933','1438637933'),('33','辦毕业','0','1438637933','1438637933'),('34','辦證','0','1438637933','1438637933'),('35','谤罪获刑','0','1438637933','1438637933'),('36','磅解码器','0','1438637933','1438637933'),('37','磅遥控器','0','1438637933','1438637933'),('38','宝在甘肃修','0','1438637933','1438637933'),('39','保过答案','0','1438637933','1438637933'),('40','报复执法','0','1438637933','1438637933'),('41','爆发骚','0','1438637933','1438637933'),('42','北省委门','0','1438637933','1438637933'),('43','被打死','0','1438637933','1438637933'),('44','被指抄袭','0','1438637933','1438637933'),('45','被中共','0','1438637933','1438637933'),('46','本公司担','0','1438637933','1438637933'),('47','本无码','0','1438637933','1438637933'),('48','毕业證','0','1438637933','1438637933'),('49','变牌绝','0','1438637933','1438637933'),('50','辩词与梦','0','1438637933','1438637933'),('51','冰毒','0','1438637933','1438637933'),('52','冰火毒','0','1438637933','1438637933'),('53','冰火佳','0','1438637933','1438637933'),('54','冰火九重','0','1438637933','1438637933'),('55','冰火漫','0','1438637933','1438637933'),('56','冰淫传','0','1438637933','1438637933'),('57','冰在火上','0','1438637933','1438637933'),('58','波推龙','0','1438637933','1438637933'),('59','博彩娱','0','1438637933','1438637933'),('60','博会暂停','0','1438637933','1438637933'),('61','博园区伪','0','1438637933','1438637933'),('62','不查都','0','1438637933','1438637933'),('63','不查全','0','1438637933','1438637933'),('64','不思四化','0','1438637933','1438637933'),('65','布卖淫女','0','1438637933','1438637933'),('66','部忙组阁','0','1438637933','1438637933'),('67','部是这样','0','1438637933','1438637933'),('68','才知道只生','0','1438637933','1438637933'),('69','财众科技','0','1438637933','1438637933'),('70','采花堂','0','1438637933','1438637933'),('71','踩踏事','0','1438637933','1438637933'),('72','苍山兰','0','1438637933','1438637933'),('73','苍蝇水','0','1438637933','1438637933'),('74','藏春阁','0','1438637933','1438637933'),('75','藏獨','0','1438637933','1438637933'),('76','操了嫂','0','1438637933','1438637933'),('77','操嫂子','0','1438637933','1438637933'),('78','策没有不','0','1438637933','1438637933'),('79','插屁屁','0','1438637933','1438637933'),('80','察象蚂','0','1438637933','1438637933'),('81','拆迁灭','0','1438637933','1438637933'),('82','车牌隐','0','1438637933','1438637933'),('83','成人电','0','1438637933','1438637933'),('84','成人卡通','0','1438637933','1438637933'),('85','成人聊','0','1438637933','1438637933'),('86','成人片','0','1438637933','1438637933'),('87','成人视','0','1438637933','1438637933'),('88','成人图','0','1438637933','1438637933'),('89','成人文','0','1438637933','1438637933'),('90','成人小','0','1438637933','1438637933'),('91','城管灭','0','1438637933','1438637933'),('92','惩公安','0','1438637933','1438637933'),('93','惩贪难','0','1438637933','1438637933'),('94','充气娃','0','1438637933','1438637933'),('95','冲凉死','0','1438637933','1438637933'),('96','抽着大中','0','1438637933','1438637933'),('97','抽着芙蓉','0','1438637933','1438637933'),('98','出成绩付','0','1438637933','1438637933'),('99','出售发票','0','1438637933','1438637933'),('100','出售军','0','1438637933','1438637933'),('101','穿透仪器','0','1438637933','1438637933'),('102','春水横溢','0','1438637933','1438637933'),('103','纯度白','0','1438637933','1438637933'),('104','纯度黄','0','1438637933','1438637933');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('105','次通过考','0','1438637933','1438637933');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('106','催眠水','0','1438637933','1438637933'),('107','催情粉','0','1438637933','1438637933'),('108','催情药','0','1438637933','1438637933'),('109','催情藥','0','1438637933','1438637933'),('110','挫仑','0','1438637933','1438637933'),('111','达毕业证','0','1438637933','1438637933'),('112','答案包','0','1438637933','1438637933'),('113','答案提供','0','1438637933','1438637933'),('114','打标语','0','1438637933','1438637933'),('115','打错门','0','1438637933','1438637933'),('116','打飞机专','0','1438637933','1438637933'),('117','打死经过','0','1438637933','1438637933'),('118','打死人','0','1438637933','1438637933'),('119','打砸办公','0','1438637933','1438637933'),('120','大鸡巴','0','1438637933','1438637933'),('121','大雞巴','0','1438637933','1438637933'),('122','大纪元','0','1438637933','1438637933'),('123','大揭露','0','1438637933','1438637933'),('124','大奶子','0','1438637933','1438637933'),('125','大批贪官','0','1438637933','1438637933'),('126','大肉棒','0','1438637933','1438637933'),('127','大嘴歌','0','1438637933','1438637933'),('128','代办发票','0','1438637933','1438637933'),('129','代办各','0','1438637933','1438637933'),('130','代办文','0','1438637933','1438637933'),('131','代办学','0','1438637933','1438637933'),('132','代办制','0','1438637933','1438637933'),('133','代辦','0','1438637933','1438637933'),('134','代表烦','0','1438637933','1438637933'),('135','代開','0','1438637933','1438637933'),('136','代考','0','1438637933','1438637933'),('137','代理发票','0','1438637933','1438637933'),('138','代理票据','0','1438637933','1438637933'),('139','代您考','0','1438637933','1438637933'),('140','代您考','0','1438637933','1438637933'),('141','代写毕','0','1438637933','1438637933'),('142','代写论','0','1438637933','1438637933'),('143','代孕','0','1438637933','1438637933'),('144','贷办','0','1438637933','1438637933'),('145','贷借款','0','1438637933','1438637933'),('146','贷开','0','1438637933','1438637933'),('147','戴海静','0','1438637933','1438637933'),('148','当代七整','0','1438637933','1438637933'),('149','当官要精','0','1438637933','1438637933'),('150','当官在于','0','1438637933','1438637933'),('151','党的官','0','1438637933','1438637933'),('152','党后萎','0','1438637933','1438637933'),('153','党前干劲','0','1438637933','1438637933'),('154','刀架保安','0','1438637933','1438637933'),('155','导的情人','0','1438637933','1438637933'),('156','导叫失','0','1438637933','1438637933'),('157','导人的最','0','1438637933','1438637933'),('158','导人最','0','1438637933','1438637933'),('159','导小商','0','1438637933','1438637933'),('160','到花心','0','1438637933','1438637933'),('161','得财兼','0','1438637933','1438637933'),('162','的同修','0','1438637933','1438637933'),('163','灯草和','0','1438637933','1438637933'),('164','等级證','0','1438637933','1438637933'),('165','等屁民','0','1438637933','1438637933'),('166','等人老百','0','1438637933','1438637933'),('167','等人是老','0','1438637933','1438637933'),('168','等人手术','0','1438637933','1438637933'),('169','邓爷爷转','0','1438637933','1438637933'),('170','邓玉娇','0','1438637933','1438637933'),('171','地产之歌','0','1438637933','1438637933'),('172','地下先烈','0','1438637933','1438637933'),('173','地震哥','0','1438637933','1438637933'),('174','帝国之梦','0','1438637933','1438637933'),('175','递纸死','0','1438637933','1438637933'),('176','点数优惠','0','1438637933','1438637933'),('177','电狗','0','1438637933','1438637933'),('178','电话监','0','1438637933','1438637933'),('179','电鸡','0','1438637933','1438637933'),('180','甸果敢','0','1438637933','1438637933'),('181','蝶舞按','0','1438637933','1438637933'),('182','丁香社','0','1438637933','1438637933'),('183','丁子霖','0','1438637933','1438637933'),('184','顶花心','0','1438637933','1438637933'),('185','东北独立','0','1438637934','1438637934'),('186','东复活','0','1438637934','1438637934'),('187','东京热','0','1438637934','1438637934'),('188','東京熱','0','1438637934','1438637934'),('189','洞小口紧','0','1438637934','1438637934'),('190','都当警','0','1438637934','1438637934'),('191','都当小姐','0','1438637934','1438637934'),('192','都进中央','0','1438637934','1438637934'),('193','毒蛇钻','0','1438637934','1438637934'),('194','独立台湾','0','1438637934','1438637934'),('195','赌球网','0','1438637934','1438637934'),('196','短信截','0','1438637934','1438637934'),('197','对日强硬','0','1438637934','1438637934'),('198','多美康','0','1438637934','1438637934'),('199','躲猫猫','0','1438637934','1438637934'),('200','俄羅斯','0','1438637934','1438637934'),('201','恶势力操','0','1438637934','1438637934'),('202','恶势力插','0','1438637934','1438637934'),('203','恩氟烷','0','1438637934','1438637934'),('204','儿园惨','0','1438637934','1438637934'),('205','儿园砍','0','1438637934','1438637934'),('206','儿园杀','0','1438637934','1438637934'),('207','儿园凶','0','1438637934','1438637934'),('208','二奶大','0','1438637934','1438637934');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('209','发牌绝','0','1438637934','1438637934');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('210','发票出','0','1438637934','1438637934'),('211','发票代','0','1438637934','1438637934'),('212','发票销','0','1438637934','1438637934'),('213','發票','0','1438637934','1438637934'),('214','法车仑','0','1438637934','1438637934'),('215','法伦功','0','1438637934','1438637934'),('216','法轮','0','1438637934','1438637934'),('217','法轮佛','0','1438637934','1438637934'),('218','法维权','0','1438637934','1438637934'),('219','法一轮','0','1438637934','1438637934'),('220','法院给废','0','1438637934','1438637934'),('221','法正乾','0','1438637934','1438637934'),('222','反测速雷','0','1438637934','1438637934'),('223','反雷达测','0','1438637934','1438637934'),('224','反屏蔽','0','1438637934','1438637934'),('225','范燕琼','0','1438637934','1438637934'),('226','方迷香','0','1438637934','1438637934'),('227','防电子眼','0','1438637934','1438637934'),('228','防身药水','0','1438637934','1438637934'),('229','房贷给废','0','1438637934','1438637934'),('230','仿真枪','0','1438637934','1438637934'),('231','仿真证','0','1438637934','1438637934'),('232','诽谤罪','0','1438637934','1438637934'),('233','费私服','0','1438637934','1438637934'),('234','封锁消','0','1438637934','1438637934'),('235','佛同修','0','1438637934','1438637934'),('236','夫妻交换','0','1438637934','1438637934'),('237','福尔马林','0','1438637934','1438637934'),('238','福娃的預','0','1438637934','1438637934'),('239','福娃頭上','0','1438637934','1438637934'),('240','福香巴','0','1438637934','1438637934'),('241','府包庇','0','1438637934','1438637934'),('242','府集中领','0','1438637934','1438637934'),('243','妇销魂','0','1438637934','1438637934'),('244','附送枪','0','1438637934','1438637934'),('245','复印件生','0','1438637934','1438637934'),('246','复印件制','0','1438637934','1438637934'),('247','富民穷','0','1438637934','1438637934'),('248','富婆给废','0','1438637934','1438637934'),('249','改号软件','0','1438637934','1438637934'),('250','感扑克','0','1438637934','1438637934'),('251','冈本真','0','1438637934','1438637934'),('252','肛交','0','1438637934','1438637934'),('253','肛门是邻','0','1438637934','1438637934'),('254','岡本真','0','1438637934','1438637934'),('255','钢针狗','0','1438637934','1438637934'),('256','钢珠枪','0','1438637934','1438637934'),('257','港澳博球','0','1438637934','1438637934'),('258','港馬會','0','1438637934','1438637934'),('259','港鑫華','0','1438637934','1438637934'),('260','高就在政','0','1438637934','1438637934'),('261','高考黑','0','1438637934','1438637934'),('262','高莺莺','0','1438637934','1438637934'),('263','搞媛交','0','1438637934','1438637934'),('264','告长期','0','1438637934','1438637934'),('265','告洋状','0','1438637934','1438637934'),('266','格证考试','0','1438637934','1438637934'),('267','各类考试','0','1438637934','1438637934'),('268','各类文凭','0','1438637934','1438637934'),('269','跟踪器','0','1438637934','1438637934'),('270','工程吞得','0','1438637934','1438637934'),('271','工力人','0','1438637934','1438637934'),('272','公安错打','0','1438637934','1438637934'),('273','公安网监','0','1438637934','1438637934'),('274','公开小姐','0','1438637934','1438637934'),('275','攻官小姐','0','1438637934','1438637934'),('276','共狗','0','1438637934','1438637934'),('277','共王储','0','1438637934','1438637934'),('278','狗粮','0','1438637934','1438637934'),('279','狗屁专家','0','1438637934','1438637934'),('280','鼓动一些','0','1438637934','1438637934'),('281','乖乖粉','0','1438637934','1438637934'),('282','官商勾','0','1438637934','1438637934'),('283','官也不容','0','1438637934','1438637934'),('284','官因发帖','0','1438637934','1438637934'),('285','光学真题','0','1438637934','1438637934'),('286','跪真相','0','1438637934','1438637934'),('287','滚圆大乳','0','1438637934','1438637934'),('288','国际投注','0','1438637934','1438637934'),('289','国家妓','0','1438637934','1438637934'),('290','国家软弱','0','1438637934','1438637934'),('291','国家吞得','0','1438637934','1438637934'),('292','国库折','0','1438637934','1438637934'),('293','国一九五七','0','1438637934','1438637934'),('294','國內美','0','1438637934','1438637934'),('295','哈药直销','0','1438637934','1438637934'),('296','海访民','0','1438637934','1438637934'),('297','豪圈钱','0','1438637934','1438637934'),('298','号屏蔽器','0','1438637934','1438637934'),('299','和狗交','0','1438637934','1438637934'),('300','和狗性','0','1438637934','1438637934'),('301','和狗做','0','1438637934','1438637934'),('302','黑火药的','0','1438637934','1438637934'),('303','红色恐怖','0','1438637934','1438637934'),('304','红外透视','0','1438637934','1438637934'),('305','紅色恐','0','1438637934','1438637934'),('306','胡江内斗','0','1438637934','1438637934'),('307','胡紧套','0','1438637934','1438637934'),('308','胡錦濤','0','1438637934','1438637934'),('309','胡适眼','0','1438637934','1438637934'),('310','胡耀邦','0','1438637934','1438637934'),('311','湖淫娘','0','1438637934','1438637934');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('312','虎头猎','0','1438637934','1438637934');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('313','华国锋','0','1438637934','1438637934'),('314','华门开','0','1438637934','1438637934'),('315','化学扫盲','0','1438637934','1438637934'),('316','划老公','0','1438637934','1438637934'),('317','还会吹萧','0','1438637934','1438637934'),('318','还看锦涛','0','1438637934','1438637934'),('319','环球证件','0','1438637934','1438637934'),('320','换妻','0','1438637934','1438637934'),('321','皇冠投注','0','1438637934','1438637934'),('322','黄冰','0','1438637934','1438637934'),('323','浑圆豪乳','0','1438637934','1438637934'),('324','活不起','0','1438637934','1438637934'),('325','火车也疯','0','1438637934','1438637934'),('326','机定位器','0','1438637934','1438637934'),('327','机号定','0','1438637934','1438637934'),('328','机号卫','0','1438637934','1438637934'),('329','机卡密','0','1438637934','1438637934'),('330','机屏蔽器','0','1438637934','1438637934'),('331','基本靠吼','0','1438637934','1438637934'),('332','绩过后付','0','1438637934','1438637934'),('333','激情电','0','1438637934','1438637934'),('334','激情短','0','1438637934','1438637934'),('335','激情妹','0','1438637934','1438637934'),('336','激情炮','0','1438637934','1438637934'),('337','级办理','0','1438637934','1438637934'),('338','级答案','0','1438637934','1438637934'),('339','急需嫖','0','1438637934','1438637934'),('340','集体打砸','0','1438637934','1438637934'),('341','集体腐','0','1438637934','1438637934'),('342','挤乳汁','0','1438637934','1438637934'),('343','擠乳汁','0','1438637934','1438637934'),('344','佳静安定','0','1438637934','1438637934'),('345','家一样饱','0','1438637934','1438637934'),('346','家属被打','0','1438637934','1438637934'),('347','甲虫跳','0','1438637934','1438637934'),('348','甲流了','0','1438637934','1438637934'),('349','奸成瘾','0','1438637934','1438637934'),('350','兼职上门','0','1438637934','1438637934'),('351','监听器','0','1438637934','1438637934'),('352','监听王','0','1438637934','1438637934'),('353','简易炸','0','1438637934','1438637934'),('354','江胡内斗','0','1438637934','1438637934'),('355','江太上','0','1438637934','1438637934'),('356','江系人','0','1438637934','1438637934'),('357','江贼民','0','1438637934','1438637934'),('358','疆獨','0','1438637934','1438637934'),('359','蒋彦永','0','1438637934','1438637934'),('360','叫自慰','0','1438637934','1438637934'),('361','揭贪难','0','1438637934','1438637934'),('362','姐包夜','0','1438637934','1438637934'),('363','姐服务','0','1438637934','1438637934'),('364','姐兼职','0','1438637934','1438637934'),('365','姐上门','0','1438637934','1438637934'),('366','金扎金','0','1438637934','1438637934'),('367','金钟气','0','1438637934','1438637934'),('368','津大地震','0','1438637934','1438637934'),('369','津地震','0','1438637934','1438637934'),('370','进来的罪','0','1438637934','1438637934'),('371','京地震','0','1438637934','1438637934'),('372','京要地震','0','1438637934','1438637934'),('373','经典谎言','0','1438637934','1438637934'),('374','精子射在','0','1438637934','1438637934'),('375','警察被','0','1438637934','1438637934'),('376','警察的幌','0','1438637934','1438637934'),('377','警察殴打','0','1438637934','1438637934'),('378','警察说保','0','1438637934','1438637934'),('379','警车雷达','0','1438637934','1438637934'),('380','警方包庇','0','1438637934','1438637934'),('381','警用品','0','1438637934','1438637934'),('382','径步枪','0','1438637934','1438637934'),('383','敬请忍','0','1438637934','1438637934'),('384','究生答案','0','1438637934','1438637934'),('385','九龙论坛','0','1438637934','1438637934'),('386','九评共','0','1438637934','1438637934'),('387','酒象喝汤','0','1438637934','1438637934'),('388','酒像喝汤','0','1438637934','1438637934'),('389','就爱插','0','1438637934','1438637934'),('390','就要色','0','1438637934','1438637934'),('391','举国体','0','1438637934','1438637934'),('392','巨乳','0','1438637934','1438637934'),('393','据说全民','0','1438637934','1438637934'),('394','绝食声','0','1438637934','1438637934'),('395','军长发威','0','1438637934','1438637934'),('396','军刺','0','1438637935','1438637935'),('397','军品特','0','1438637935','1438637935'),('398','军用手','0','1438637935','1438637935'),('399','开邓选','0','1438637935','1438637935'),('400','开锁工具','0','1438637935','1438637935'),('401','開碼','0','1438637935','1438637935'),('402','開票','0','1438637935','1438637935'),('403','砍杀幼','0','1438637935','1438637935'),('404','砍伤儿','0','1438637935','1438637935'),('405','康没有不','0','1438637935','1438637935'),('406','康跳楼','0','1438637935','1438637935'),('407','考答案','0','1438637935','1438637935'),('408','考后付款','0','1438637935','1438637935'),('409','考机构','0','1438637935','1438637935'),('410','考考邓','0','1438637935','1438637935'),('411','考联盟','0','1438637935','1438637935'),('412','考前答','0','1438637935','1438637935'),('413','考前答案','0','1438637935','1438637935'),('414','考前付','0','1438637935','1438637935');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('415','考设备','0','1438637935','1438637935');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('416','考试包过','0','1438637935','1438637935'),('417','考试保','0','1438637935','1438637935'),('418','考试答案','0','1438637935','1438637935'),('419','考试机构','0','1438637935','1438637935'),('420','考试联盟','0','1438637935','1438637935'),('421','考试枪','0','1438637935','1438637935'),('422','考研考中','0','1438637935','1438637935'),('423','考中答案','0','1438637935','1438637935'),('424','磕彰','0','1438637935','1438637935'),('425','克分析','0','1438637935','1438637935'),('426','克千术','0','1438637935','1438637935'),('427','克透视','0','1438637935','1438637935'),('428','空和雅典','0','1438637935','1438637935'),('429','孔摄像','0','1438637935','1438637935'),('430','控诉世博','0','1438637935','1438637935'),('431','控制媒','0','1438637935','1438637935'),('432','口手枪','0','1438637935','1438637935'),('433','骷髅死','0','1438637935','1438637935'),('434','快速办','0','1438637935','1438637935'),('435','矿难不公','0','1438637935','1438637935'),('436','拉登说','0','1438637935','1438637935'),('437','拉开水晶','0','1438637935','1438637935'),('438','来福猎','0','1438637935','1438637935'),('439','拦截器','0','1438637935','1438637935'),('440','狼全部跪','0','1438637935','1438637935'),('441','浪穴','0','1438637935','1438637935'),('442','老虎机','0','1438637935','1438637935'),('443','雷人女官','0','1438637935','1438637935'),('444','类准确答','0','1438637935','1438637935'),('445','黎阳平','0','1438637935','1438637935'),('446','李洪志','0','1438637935','1438637935'),('447','李咏曰','0','1438637935','1438637935'),('448','理各种证','0','1438637935','1438637935'),('449','理是影帝','0','1438637935','1438637935'),('450','理证件','0','1438637935','1438637935'),('451','理做帐报','0','1438637935','1438637935'),('452','力骗中央','0','1438637935','1438637935'),('453','力月西','0','1438637935','1438637935'),('454','丽媛离','0','1438637935','1438637935'),('455','利他林','0','1438637935','1438637935'),('456','连发手','0','1438637935','1438637935'),('457','聯繫電','0','1438637935','1438637935'),('458','炼大法','0','1438637935','1438637935'),('459','两岸才子','0','1438637935','1438637935'),('460','两会代','0','1438637935','1438637935'),('461','两会又三','0','1438637935','1438637935'),('462','聊视频','0','1438637935','1438637935'),('463','聊斋艳','0','1438637935','1438637935'),('464','了件渔袍','0','1438637935','1438637935'),('465','猎好帮手','0','1438637935','1438637935'),('466','猎枪销','0','1438637935','1438637935'),('467','猎槍','0','1438637935','1438637935'),('468','獵槍','0','1438637935','1438637935'),('469','领土拿','0','1438637935','1438637935'),('470','流血事','0','1438637935','1438637935'),('471','六合彩','0','1438637935','1438637935'),('472','六死','0','1438637935','1438637935'),('473','六四事','0','1438637935','1438637935'),('474','六月联盟','0','1438637935','1438637935'),('475','龙湾事件','0','1438637935','1438637935'),('476','隆手指','0','1438637935','1438637935'),('477','陆封锁','0','1438637935','1438637935'),('478','陆同修','0','1438637935','1438637935'),('479','氯胺酮','0','1438637935','1438637935'),('480','乱奸','0','1438637935','1438637935'),('481','乱伦类','0','1438637935','1438637935'),('482','乱伦小','0','1438637935','1438637935'),('483','亂倫','0','1438637935','1438637935'),('484','伦理大','0','1438637935','1438637935'),('485','伦理电影','0','1438637935','1438637935'),('486','伦理毛','0','1438637935','1438637935'),('487','伦理片','0','1438637935','1438637935'),('488','轮功','0','1438637935','1438637935'),('489','轮手枪','0','1438637935','1438637935'),('490','论文代','0','1438637935','1438637935'),('491','罗斯小姐','0','1438637935','1438637935'),('492','裸聊网','0','1438637935','1438637935'),('493','裸舞视','0','1438637935','1438637935'),('494','落霞缀','0','1438637935','1438637935'),('495','麻古','0','1438637935','1438637935'),('496','麻果配','0','1438637935','1438637935'),('497','麻果丸','0','1438637935','1438637935'),('498','麻将透','0','1438637935','1438637935'),('499','麻醉狗','0','1438637935','1438637935'),('500','麻醉枪','0','1438637935','1438637935'),('501','麻醉槍','0','1438637935','1438637935'),('502','麻醉藥','0','1438637935','1438637935'),('503','蟆叫专家','0','1438637935','1438637935'),('504','卖地财政','0','1438637935','1438637935'),('505','卖发票','0','1438637935','1438637935'),('506','卖银行卡','0','1438637935','1438637935'),('507','卖自考','0','1438637935','1438637935'),('508','漫步丝','0','1438637935','1438637935'),('509','忙爱国','0','1438637935','1438637935'),('510','猫眼工具','0','1438637935','1438637935'),('511','毛一鲜','0','1438637935','1438637935'),('512','媒体封锁','0','1438637935','1438637935'),('513','每周一死','0','1438637935','1438637935'),('514','美艳少妇','0','1438637935','1438637935'),('515','妹按摩','0','1438637935','1438637935'),('516','妹上门','0','1438637935','1438637935'),('517','门按摩','0','1438637935','1438637935'),('518','门保健','0','1438637935','1438637935');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('519','門服務','0','1438637935','1438637935');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('520','氓培训','0','1438637935','1438637935'),('521','蒙汗药','0','1438637935','1438637935'),('522','迷幻型','0','1438637935','1438637935'),('523','迷幻药','0','1438637935','1438637935'),('524','迷幻藥','0','1438637935','1438637935'),('525','迷昏口','0','1438637935','1438637935'),('526','迷昏药','0','1438637935','1438637935'),('527','迷昏藥','0','1438637935','1438637935'),('528','迷魂香','0','1438637935','1438637935'),('529','迷魂药','0','1438637935','1438637935'),('530','迷魂藥','0','1438637935','1438637935'),('531','迷奸药','0','1438637935','1438637935'),('532','迷情水','0','1438637935','1438637935'),('533','迷情药','0','1438637935','1438637935'),('534','迷藥','0','1438637935','1438637935'),('535','谜奸药','0','1438637935','1438637935'),('536','蜜穴','0','1438637935','1438637935'),('537','灭绝罪','0','1438637935','1438637935'),('538','民储害','0','1438637935','1438637935'),('539','民九亿商','0','1438637935','1438637935'),('540','民抗议','0','1438637935','1438637935'),('541','明慧网','0','1438637935','1438637935'),('542','铭记印尼','0','1438637935','1438637935'),('543','摩小姐','0','1438637935','1438637935'),('544','母乳家','0','1438637935','1438637935'),('545','木齐针','0','1438637935','1438637935'),('546','幕没有不','0','1438637935','1438637935'),('547','幕前戲','0','1438637935','1438637935'),('548','内射','0','1438637935','1438637935'),('549','南充针','0','1438637935','1438637935'),('550','嫩穴','0','1438637935','1438637935'),('551','嫩阴','0','1438637935','1438637935'),('552','泥马之歌','0','1438637935','1438637935'),('553','你的西域','0','1438637935','1438637935'),('554','拟涛哥','0','1438637935','1438637935'),('555','娘两腿之间','0','1438637935','1438637935'),('556','妞上门','0','1438637935','1438637935'),('557','浓精','0','1438637935','1438637935'),('558','怒的志愿','0','1438637935','1438637935'),('559','女被人家搞','0','1438637935','1438637935'),('560','女激情','0','1438637935','1438637935'),('561','女技师','0','1438637935','1438637935'),('562','女人和狗','0','1438637935','1438637935'),('563','女任职名','0','1438637935','1438637935'),('564','女上门','0','1438637935','1438637935'),('565','女優','0','1438637935','1438637935'),('566','鸥之歌','0','1438637935','1438637935'),('567','拍肩神药','0','1438637935','1438637935'),('568','拍肩型','0','1438637935','1438637935'),('569','牌分析','0','1438637935','1438637935'),('570','牌技网','0','1438637935','1438637935'),('571','炮的小蜜','0','1438637935','1438637935'),('572','陪考枪','0','1438637935','1438637935'),('573','配有消','0','1438637935','1438637935'),('574','喷尿','0','1438637935','1438637935'),('575','嫖俄罗','0','1438637935','1438637935'),('576','嫖鸡','0','1438637935','1438637935'),('577','平惨案','0','1438637935','1438637935'),('578','平叫到床','0','1438637935','1438637935'),('579','仆不怕饮','0','1438637935','1438637935'),('580','普通嘌','0','1438637935','1438637935'),('581','期货配','0','1438637935','1438637935'),('582','奇迹的黄','0','1438637935','1438637935'),('583','奇淫散','0','1438637935','1438637935'),('584','骑单车出','0','1438637935','1438637935'),('585','气狗','0','1438637935','1438637935'),('586','气枪','0','1438637935','1438637935'),('587','汽狗','0','1438637935','1438637935'),('588','汽枪','0','1438637935','1438637935'),('589','氣槍','0','1438637935','1438637935'),('590','铅弹','0','1438637935','1438637935'),('591','钱三字经','0','1438637935','1438637935'),('592','枪出售','0','1438637935','1438637935'),('593','枪的参','0','1438637935','1438637935'),('594','枪的分','0','1438637935','1438637935'),('595','枪的结','0','1438637935','1438637935'),('596','枪的制','0','1438637935','1438637935'),('597','枪货到','0','1438637935','1438637935'),('598','枪决女犯','0','1438637935','1438637935'),('599','枪决现场','0','1438637935','1438637935'),('600','枪模','0','1438637935','1438637935'),('601','枪手队','0','1438637935','1438637935'),('602','枪手网','0','1438637935','1438637935'),('603','枪销售','0','1438637935','1438637935'),('604','枪械制','0','1438637935','1438637935'),('605','枪子弹','0','1438637935','1438637935'),('606','强权政府','0','1438637935','1438637935'),('607','强硬发言','0','1438637935','1438637935'),('608','抢其火炬','0','1438637935','1438637935'),('609','切听器','0','1438637935','1438637935'),('610','窃听器','0','1438637936','1438637936'),('611','禽流感了','0','1438637936','1438637936'),('612','勤捞致','0','1438637936','1438637936'),('613','氢弹手','0','1438637936','1438637936'),('614','清除负面','0','1438637936','1438637936'),('615','清純壆','0','1438637936','1438637936'),('616','情聊天室','0','1438637936','1438637936'),('617','情妹妹','0','1438637936','1438637936'),('618','情视频','0','1438637936','1438637936'),('619','情自拍','0','1438637936','1438637936'),('620','氰化钾','0','1438637936','1438637936'),('621','氰化钠','0','1438637936','1438637936'),('622','请集会','0','1438637936','1438637936');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('623','请示威','0','1438637936','1438637936');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('624','请愿','0','1438637936','1438637936'),('625','琼花问','0','1438637936','1438637936'),('626','区的雷人','0','1438637936','1438637936'),('627','娶韩国','0','1438637936','1438637936'),('628','全真证','0','1438637936','1438637936'),('629','群奸暴','0','1438637936','1438637936'),('630','群起抗暴','0','1438637936','1438637936'),('631','群体性事','0','1438637936','1438637936'),('632','绕过封锁','0','1438637936','1438637936'),('633','惹的国','0','1438637936','1438637936'),('634','人权律','0','1438637936','1438637936'),('635','人体艺','0','1438637936','1438637936'),('636','人游行','0','1438637936','1438637936'),('637','人在云上','0','1438637936','1438637936'),('638','人真钱','0','1438637936','1438637936'),('639','认牌绝','0','1438637936','1438637936'),('640','任于斯国','0','1438637936','1438637936'),('641','柔胸粉','0','1438637936','1438637936'),('642','肉洞','0','1438637936','1438637936'),('643','肉棍','0','1438637936','1438637936'),('644','如厕死','0','1438637936','1438637936'),('645','乳交','0','1438637936','1438637936'),('646','软弱的国','0','1438637936','1438637936'),('647','赛后骚','0','1438637936','1438637936'),('648','三挫','0','1438637936','1438637936'),('649','三级片','0','1438637936','1438637936'),('650','三秒倒','0','1438637936','1438637936'),('651','三网友','0','1438637936','1438637936'),('652','三唑','0','1438637936','1438637936'),('653','骚妇','0','1438637936','1438637936'),('654','骚浪','0','1438637936','1438637936'),('655','骚穴','0','1438637936','1438637936'),('656','骚嘴','0','1438637936','1438637936'),('657','扫了爷爷','0','1438637936','1438637936'),('658','色电影','0','1438637936','1438637936'),('659','色妹妹','0','1438637936','1438637936'),('660','色视频','0','1438637936','1438637936'),('661','色小说','0','1438637936','1438637936'),('662','杀指南','0','1438637936','1438637936'),('663','山涉黑','0','1438637936','1438637936'),('664','煽动不明','0','1438637936','1438637936'),('665','煽动群众','0','1438637936','1438637936'),('666','上门激','0','1438637936','1438637936'),('667','烧公安局','0','1438637936','1438637936'),('668','烧瓶的','0','1438637936','1438637936'),('669','韶关斗','0','1438637936','1438637936'),('670','韶关玩','0','1438637936','1438637936'),('671','韶关旭','0','1438637936','1438637936'),('672','射网枪','0','1438637936','1438637936'),('673','涉嫌抄袭','0','1438637936','1438637936'),('674','深喉冰','0','1438637936','1438637936'),('675','神七假','0','1438637936','1438637936'),('676','神韵艺术','0','1438637936','1438637936'),('677','生被砍','0','1438637936','1438637936'),('678','生踩踏','0','1438637936','1438637936'),('679','生肖中特','0','1438637936','1438637936'),('680','圣战不息','0','1438637936','1438637936'),('681','盛行在舞','0','1438637936','1438637936'),('682','尸博','0','1438637936','1438637936'),('683','失身水','0','1438637936','1438637936'),('684','失意药','0','1438637936','1438637936'),('685','狮子旗','0','1438637936','1438637936'),('686','十八等','0','1438637936','1438637936'),('687','十大谎','0','1438637936','1438637936'),('688','十大禁','0','1438637936','1438637936'),('689','十个预言','0','1438637936','1438637936'),('690','十类人不','0','1438637936','1438637936'),('691','十七大幕','0','1438637936','1438637936'),('692','实毕业证','0','1438637936','1438637936'),('693','实体娃','0','1438637936','1438637936'),('694','实学历文','0','1438637936','1438637936'),('695','士康事件','0','1438637936','1438637936'),('696','式粉推','0','1438637936','1438637936'),('697','视解密','0','1438637936','1438637936'),('698','是躲猫','0','1438637936','1438637936'),('699','手变牌','0','1438637936','1438637936'),('700','手答案','0','1438637936','1438637936'),('701','手狗','0','1438637936','1438637936'),('702','手机跟','0','1438637936','1438637936'),('703','手机监','0','1438637936','1438637936'),('704','手机窃','0','1438637936','1438637936'),('705','手机追','0','1438637936','1438637936'),('706','手拉鸡','0','1438637936','1438637936'),('707','手木仓','0','1438637936','1438637936'),('708','手槍','0','1438637936','1438637936'),('709','守所死法','0','1438637936','1438637936'),('710','兽交','0','1438637936','1438637936'),('711','售步枪','0','1438637936','1438637936'),('712','售纯度','0','1438637936','1438637936'),('713','售单管','0','1438637936','1438637936'),('714','售弹簧刀','0','1438637936','1438637936'),('715','售防身','0','1438637936','1438637936'),('716','售狗子','0','1438637936','1438637936'),('717','售虎头','0','1438637936','1438637936'),('718','售火药','0','1438637936','1438637936'),('719','售假币','0','1438637936','1438637936'),('720','售健卫','0','1438637936','1438637936'),('721','售军用','0','1438637936','1438637936'),('722','售猎枪','0','1438637936','1438637936'),('723','售氯胺','0','1438637936','1438637936'),('724','售麻醉','0','1438637936','1438637936'),('725','售冒名','0','1438637936','1438637936'),('726','售枪支','0','1438637936','1438637936');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('727','售热武','0','1438637936','1438637936');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('728','售三棱','0','1438637936','1438637936'),('729','售手枪','0','1438637936','1438637936'),('730','售五四','0','1438637936','1438637936'),('731','售信用','0','1438637936','1438637936'),('732','售一元硬','0','1438637936','1438637936'),('733','售子弹','0','1438637936','1438637936'),('734','售左轮','0','1438637936','1438637936'),('735','书办理','0','1438637936','1438637936'),('736','熟妇','0','1438637936','1438637936'),('737','术牌具','0','1438637936','1438637936'),('738','双管立','0','1438637936','1438637936'),('739','双管平','0','1438637936','1438637936'),('740','水阎王','0','1438637936','1438637936'),('741','丝护士','0','1438637936','1438637936'),('742','丝情侣','0','1438637936','1438637936'),('743','丝袜保','0','1438637936','1438637936'),('744','丝袜恋','0','1438637936','1438637936'),('745','丝袜美','0','1438637936','1438637936'),('746','丝袜妹','0','1438637936','1438637936'),('747','丝袜网','0','1438637936','1438637936'),('748','丝足按','0','1438637936','1438637936'),('749','司长期有','0','1438637936','1438637936'),('750','司法黑','0','1438637936','1438637936'),('751','私房写真','0','1438637936','1438637936'),('752','死法分布','0','1438637936','1438637936'),('753','死要见毛','0','1438637936','1438637936'),('754','四博会','0','1438637936','1438637936'),('755','四大扯','0','1438637936','1438637936'),('756','个四小码','0','1438637936','1438637936'),('757','苏家屯集','0','1438637936','1438637936'),('758','诉讼集团','0','1438637936','1438637936'),('759','素女心','0','1438637936','1438637936'),('760','速代办','0','1438637936','1438637936'),('761','速取证','0','1438637936','1438637936'),('762','酸羟亚胺','0','1438637936','1438637936'),('763','蹋纳税','0','1438637936','1438637936'),('764','太王四神','0','1438637936','1438637936'),('765','泰兴幼','0','1438637936','1438637936'),('766','泰兴镇中','0','1438637936','1438637936'),('767','泰州幼','0','1438637936','1438637936'),('768','贪官也辛','0','1438637936','1438637936'),('769','探测狗','0','1438637936','1438637936'),('770','涛共产','0','1438637936','1438637936'),('771','涛一样胡','0','1438637936','1438637936'),('772','特工资','0','1438637936','1438637936'),('773','特码','0','1438637936','1438637936'),('774','特上门','0','1438637936','1438637936'),('775','体透视镜','0','1438637936','1438637936'),('776','替考','0','1438637936','1438637936'),('777','替人体','0','1438637936','1438637936'),('778','天朝特','0','1438637936','1438637936'),('779','天鹅之旅','0','1438637936','1438637936'),('780','天推广歌','0','1438637936','1438637936'),('781','田罢工','0','1438637936','1438637936'),('782','田田桑','0','1438637936','1438637936'),('783','田停工','0','1438637936','1438637936'),('784','庭保养','0','1438637936','1438637936'),('785','庭审直播','0','1438637936','1438637936'),('786','通钢总经','0','1438637936','1438637936'),('787','偷電器','0','1438637936','1438637936'),('788','偷肃贪','0','1438637936','1438637936'),('789','偷听器','0','1438637936','1438637936'),('790','偷偷贪','0','1438637936','1438637936'),('791','头双管','0','1438637936','1438637936'),('792','透视功能','0','1438637936','1438637936'),('793','透视镜','0','1438637936','1438637936'),('794','透视扑','0','1438637936','1438637936'),('795','透视器','0','1438637936','1438637936'),('796','透视眼镜','0','1438637936','1438637936'),('797','透视药','0','1438637936','1438637936'),('798','透视仪','0','1438637936','1438637936'),('799','秃鹰汽','0','1438637936','1438637936'),('800','突破封锁','0','1438637936','1438637936'),('801','突破网路','0','1438637936','1438637936'),('802','推油按','0','1438637936','1438637936'),('803','脱衣艳','0','1438637936','1438637936'),('804','瓦斯手','0','1438637936','1438637936'),('805','袜按摩','0','1438637936','1438637936'),('806','外透视镜','0','1438637936','1438637936'),('807','外围赌球','0','1438637936','1438637936'),('808','湾版假','0','1438637936','1438637936'),('809','万能钥匙','0','1438637936','1438637936'),('810','万人骚动','0','1438637936','1438637936'),('811','王立军','0','1438637936','1438637936'),('812','王益案','0','1438637936','1438637936'),('813','网民案','0','1438637936','1438637936'),('814','网民获刑','0','1438637936','1438637936'),('815','网民诬','0','1438637936','1438637936'),('816','微型摄像','0','1438637936','1438637936'),('817','围攻警','0','1438637936','1438637936'),('818','围攻上海','0','1438637936','1438637936'),('819','维汉员','0','1438637936','1438637936'),('820','维权基','0','1438637936','1438637936'),('821','维权人','0','1438637936','1438637936'),('822','维权谈','0','1438637936','1438637936'),('823','委坐船','0','1438637937','1438637937'),('824','谓的和谐','0','1438637937','1438637937'),('825','温家堡','0','1438637937','1438637937'),('826','温切斯特','0','1438637937','1438637937'),('827','温影帝','0','1438637937','1438637937'),('828','溫家寶','0','1438637937','1438637937'),('829','瘟加饱','0','1438637937','1438637937');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('830','瘟假饱','0','1438637937','1438637937');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('831','文凭证','0','1438637937','1438637937'),('832','文强','0','1438637937','1438637937'),('833','纹了毛','0','1438637937','1438637937'),('834','闻被控制','0','1438637937','1438637937'),('835','闻封锁','0','1438637937','1438637937'),('836','瓮安','0','1438637937','1438637937'),('837','我的西域','0','1438637937','1438637937'),('838','我搞台独','0','1438637937','1438637937'),('839','乌蝇水','0','1438637937','1438637937'),('840','无耻语录','0','1438637937','1438637937'),('841','无码专','0','1438637937','1438637937'),('842','五套功','0','1438637937','1438637937'),('843','五月天','0','1438637937','1438637937'),('844','午夜电','0','1438637937','1438637937'),('845','午夜极','0','1438637937','1438637937'),('846','武警暴','0','1438637937','1438637937'),('847','武警殴','0','1438637937','1438637937'),('848','武警已增','0','1438637937','1438637937'),('849','务员答案','0','1438637937','1438637937'),('850','务员考试','0','1438637937','1438637937'),('851','雾型迷','0','1438637937','1438637937'),('852','西藏限','0','1438637937','1438637937'),('853','西服进去','0','1438637937','1438637937'),('854','希脏','0','1438637937','1438637937'),('855','习进平','0','1438637937','1438637937'),('856','习晋平','0','1438637937','1438637937'),('857','席复活','0','1438637937','1438637937'),('858','席临终前','0','1438637937','1438637937'),('859','席指着护','0','1438637937','1438637937'),('860','洗澡死','0','1438637937','1438637937'),('861','喜贪赃','0','1438637937','1438637937'),('862','先烈纷纷','0','1438637937','1438637937'),('863','现大地震','0','1438637937','1438637937'),('864','现金投注','0','1438637937','1438637937'),('865','线透视镜','0','1438637937','1438637937'),('866','限制言','0','1438637937','1438637937'),('867','陷害案','0','1438637937','1438637937'),('868','陷害罪','0','1438637937','1438637937'),('869','相自首','0','1438637937','1438637937'),('870','香港论坛','0','1438637937','1438637937'),('871','香港马会','0','1438637937','1438637937'),('872','香港一类','0','1438637937','1438637937'),('873','香港总彩','0','1438637937','1438637937'),('874','硝化甘','0','1438637937','1438637937'),('875','小穴','0','1438637937','1438637937'),('876','校骚乱','0','1438637937','1438637937'),('877','协晃悠','0','1438637937','1438637937'),('878','写两会','0','1438637937','1438637937'),('879','泄漏的内','0','1438637937','1438637937'),('880','新建户','0','1438637937','1438637937'),('881','新疆叛','0','1438637937','1438637937'),('882','新疆限','0','1438637937','1438637937'),('883','新金瓶','0','1438637937','1438637937'),('884','新唐人','0','1438637937','1438637937'),('885','信访专班','0','1438637937','1438637937'),('886','信接收器','0','1438637937','1438637937'),('887','兴中心幼','0','1438637937','1438637937'),('888','星上门','0','1438637937','1438637937'),('889','行长王益','0','1438637937','1438637937'),('890','形透视镜','0','1438637937','1438637937'),('891','型手枪','0','1438637937','1438637937'),('892','姓忽悠','0','1438637937','1438637937'),('893','幸运码','0','1438637937','1438637937'),('894','性爱日','0','1438637937','1438637937'),('895','性福情','0','1438637937','1438637937'),('896','性感少','0','1438637937','1438637937'),('897','性推广歌','0','1438637937','1438637937'),('898','胸主席','0','1438637937','1438637937'),('899','徐玉元','0','1438637937','1438637937'),('900','学骚乱','0','1438637937','1438637937'),('901','学位證','0','1438637937','1438637937'),('902','學生妹','0','1438637937','1438637937'),('903','丫与王益','0','1438637937','1438637937'),('904','烟感器','0','1438637937','1438637937'),('905','严晓玲','0','1438637937','1438637937'),('906','言被劳教','0','1438637937','1438637937'),('907','言论罪','0','1438637937','1438637937'),('908','盐酸曲','0','1438637937','1438637937'),('909','颜射','0','1438637937','1438637937'),('910','恙虫病','0','1438637937','1438637937'),('911','姚明进去','0','1438637937','1438637937'),('912','要人权','0','1438637937','1438637937'),('913','要射精了','0','1438637937','1438637937'),('914','要射了','0','1438637937','1438637937'),('915','要泄了','0','1438637937','1438637937'),('916','夜激情','0','1438637937','1438637937'),('917','液体炸','0','1438637937','1438637937'),('918','一小撮别','0','1438637937','1438637937'),('919','遗情书','0','1438637937','1438637937'),('920','蚁力神','0','1438637937','1438637937'),('921','益关注组','0','1438637937','1438637937'),('922','益受贿','0','1438637937','1438637937'),('923','阴间来电','0','1438637937','1438637937'),('924','陰唇','0','1438637937','1438637937'),('925','陰道','0','1438637937','1438637937'),('926','陰戶','0','1438637937','1438637937'),('927','淫魔舞','0','1438637937','1438637937'),('928','淫情女','0','1438637937','1438637937'),('929','淫肉','0','1438637937','1438637937'),('930','淫騷妹','0','1438637937','1438637937'),('931','淫兽','0','1438637937','1438637937'),('932','淫兽学','0','1438637937','1438637937'),('933','淫水','0','1438637937','1438637937');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('934','淫穴','0','1438637937','1438637937');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('935','隐形耳','0','1438637937','1438637937'),('936','隐形喷剂','0','1438637937','1438637937'),('937','应子弹','0','1438637937','1438637937'),('938','婴儿命','0','1438637937','1438637937'),('939','咏妓','0','1438637937','1438637937'),('940','用手枪','0','1438637937','1438637937'),('941','幽谷三','0','1438637937','1438637937'),('942','游精佑','0','1438637937','1438637937'),('943','有奶不一','0','1438637937','1438637937'),('944','右转是政','0','1438637937','1438637937'),('945','幼齿类','0','1438637937','1438637937'),('946','娱乐透视','0','1438637937','1438637937'),('947','愚民同','0','1438637937','1438637937'),('948','愚民政','0','1438637937','1438637937'),('949','与狗性','0','1438637937','1438637937'),('950','玉蒲团','0','1438637937','1438637937'),('951','育部女官','0','1438637937','1438637937'),('952','冤民大','0','1438637937','1438637937'),('953','鸳鸯洗','0','1438637937','1438637937'),('954','园惨案','0','1438637937','1438637937'),('955','园发生砍','0','1438637937','1438637937'),('956','园砍杀','0','1438637937','1438637937'),('957','园凶杀','0','1438637937','1438637937'),('958','园血案','0','1438637937','1438637937'),('959','原一九五七','0','1438637937','1438637937'),('960','原装弹','0','1438637937','1438637937'),('961','袁腾飞','0','1438637937','1438637937'),('962','晕倒型','0','1438637937','1438637937'),('963','韵徐娘','0','1438637937','1438637937'),('964','遭便衣','0','1438637937','1438637937'),('965','遭到警','0','1438637937','1438637937'),('966','遭警察','0','1438637937','1438637937'),('967','遭武警','0','1438637937','1438637937'),('968','择油录','0','1438637937','1438637937'),('969','曾道人','0','1438637937','1438637937'),('970','炸弹教','0','1438637937','1438637937'),('971','炸弹遥控','0','1438637937','1438637937'),('972','炸广州','0','1438637937','1438637937'),('973','炸立交','0','1438637937','1438637937'),('974','炸药的制','0','1438637937','1438637937'),('975','炸药配','0','1438637937','1438637937'),('976','炸药制','0','1438637937','1438637937'),('977','张春桥','0','1438637937','1438637937'),('978','找枪手','0','1438637937','1438637937'),('979','找援交','0','1438637937','1438637937'),('980','找政法委副','0','1438637937','1438637937'),('981','赵紫阳','0','1438637937','1438637937'),('982','针刺案','0','1438637937','1438637937'),('983','针刺伤','0','1438637937','1438637937'),('984','针刺事','0','1438637937','1438637937'),('985','针刺死','0','1438637937','1438637937'),('986','侦探设备','0','1438637937','1438637937'),('987','真钱斗地','0','1438637937','1438637937'),('988','真钱投注真善忍','0','1438637937','1438637937'),('989','真实文凭','0','1438637937','1438637937'),('990','真实资格','0','1438637937','1438637937'),('991','震惊一个民','0','1438637937','1438637937'),('992','震其国土','0','1438637937','1438637937'),('993','证到付款','0','1438637937','1438637937'),('994','证件办','0','1438637937','1438637937'),('995','证件集团','0','1438637937','1438637937'),('996','证生成器','0','1438637937','1438637937'),('997','证书办','0','1438637937','1438637937'),('998','证一次性','0','1438637937','1438637937'),('999','政府操','0','1438637937','1438637937'),('1000','政论区','0','1438637937','1438637937'),('1001','證件','0','1438637937','1438637937'),('1002','植物冰','0','1438637937','1438637937'),('1003','殖器护','0','1438637937','1438637937'),('1004','指纹考勤','0','1438637937','1438637937'),('1005','指纹膜','0','1438637937','1438637937'),('1006','指纹套','0','1438637937','1438637937'),('1007','至国家高','0','1438637937','1438637937'),('1008','志不愿跟','0','1438637937','1438637937'),('1009','制服诱','0','1438637937','1438637937'),('1010','制手枪','0','1438637937','1438637937'),('1011','制证定金','0','1438637937','1438637937'),('1012','制作证件','0','1438637937','1438637937'),('1013','中的班禅','0','1438637937','1438637937'),('1014','中共黑','0','1438637937','1438637937'),('1015','中国不强','0','1438637937','1438637937'),('1016','种公务员','0','1438637937','1438637937'),('1017','种学历证','0','1438637937','1438637937'),('1018','众像羔','0','1438637937','1438637937'),('1019','州惨案','0','1438637937','1438637937'),('1020','州大批贪','0','1438637937','1438637937'),('1021','州三箭','0','1438637937','1438637937'),('1022','宙最高法','0','1438637937','1438637937'),('1023','昼将近','0','1438637937','1438637937'),('1024','主席忏','0','1438637937','1438637937'),('1025','住英国房','0','1438637937','1438637937'),('1026','助考','0','1438637937','1438637937'),('1027','助考网','0','1438637937','1438637937'),('1028','专业办理','0','1438637937','1438637937'),('1029','专业代','0','1438637937','1438637937'),('1030','专业代写','0','1438637937','1438637937'),('1031','专业助','0','1438637937','1438637937'),('1032','转是政府','0','1438637937','1438637937'),('1033','赚钱资料','0','1438637937','1438637937'),('1034','装弹甲','0','1438637937','1438637937'),('1035','装枪套','0','1438637937','1438637937');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('1036','装消音','0','1438637938','1438637938');/* MySQLReback Separation */
 /* 插入数据 `tp_susceptible` */
 INSERT INTO `tp_susceptible` VALUES ('1037','着护士的胸','0','1438637938','1438637938'),('1038','着涛哥','0','1438637938','1438637938'),('1039','姿不对死','0','1438637938','1438637938'),('1040','资格證','0','1438637938','1438637938'),('1041','资料泄','0','1438637938','1438637938'),('1042','梓健特药','0','1438637938','1438637938'),('1043','字牌汽','0','1438637938','1438637938'),('1044','自己找枪','0','1438637938','1438637938'),('1045','自慰用','0','1438637938','1438637938'),('1046','自由圣','0','1438637938','1438637938'),('1047','自由亚','0','1438637938','1438637938'),('1048','总会美女','0','1438637938','1438637938'),('1049','足球玩法','0','1438637938','1438637938'),('1050','最牛公安','0','1438637938','1438637938'),('1051','醉钢枪','0','1438637938','1438637938'),('1052','醉迷药','0','1438637938','1438637938'),('1053','醉乙醚','0','1438637938','1438637938'),('1054','尊爵粉','0','1438637938','1438637938'),('1055','左转是政','0','1438637938','1438637938'),('1056','作弊器','0','1438637938','1438637938'),('1057','作各种证','0','1438637938','1438637938'),('1058','作硝化甘','0','1438637938','1438637938'),('1059','唑仑','0','1438637938','1438637938'),('1060','做爱小','0','1438637938','1438637938'),('1061','做原子弹','0','1438637938','1438637938'),('1062','做证件','0','1438637938','1438637938');/* MySQLReback Separation */
 /* 创建表结构 `tp_system_info` */
 DROP TABLE IF EXISTS `tp_system_info`;/* MySQLReback Separation */ CREATE TABLE `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL,
  `currentfileid` varchar(40) NOT NULL DEFAULT '',
  `currentsqlid` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_system_info` */
 INSERT INTO `tp_system_info` VALUES ('1439047380','1410861960','','');/* MySQLReback Separation */
 /* 创建表结构 `tp_tag` */
 DROP TABLE IF EXISTS `tp_tag`;/* MySQLReback Separation */ CREATE TABLE `tp_tag` (
  `tagid_int` int(11) NOT NULL,
  `userid_int` int(11) NOT NULL DEFAULT '0',
  `name_varchar` varchar(50) DEFAULT NULL,
  `type_int` int(11) DEFAULT NULL COMMENT '背景还是图片0背景,1图片,2音乐,88样例,99用户',
  `biztype_int` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tagid_int`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_taobao` */
 DROP TABLE IF EXISTS `tp_taobao`;/* MySQLReback Separation */ CREATE TABLE `tp_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_tempmsg` */
 DROP TABLE IF EXISTS `tp_tempmsg`;/* MySQLReback Separation */ CREATE TABLE `tp_tempmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempkey` char(50) NOT NULL,
  `name` char(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `industry` char(50) NOT NULL,
  `topcolor` char(10) NOT NULL DEFAULT '#029700',
  `textcolor` char(10) NOT NULL DEFAULT '#000000',
  `token` char(40) NOT NULL,
  `tempid` char(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_tempmsg` */
 INSERT INTO `tp_tempmsg` VALUES ('1','OPENTM203605740','预约看房提醒','{{first.DATA}}
看房时间：{{keyword1.DATA}}
房屋地址：{{keyword2.DATA}}
房屋信息：{{keyword3.DATA}}
客服电话：{{keyword4.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('2','TM00695','中奖结果通知','
{{title.DATA}}	
{{headinfo.DATA}}
彩票名称：{{program.DATA}}
开奖结果：{{result.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('3','TM00499','服务完成通知','
{{first.DATA}}
{{Content1.DATA}}
商品名称：{{Good.DATA}}
服务措施：{{contentType.DATA}}
收费金额：{{price.DATA}}
收费标准：{{menu.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('4','TM00459','预订成功','
{{first.DATA}}
商户：{{keynote1.DATA}}
时间：{{keynote2.DATA}}
人数：{{keynote3.DATA}}
类型：{{keynote4.DATA}}
{{remark.DATA}}   ','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('5','OPENTM202183094','商品支付成功通知','
{{first.DATA}}
付款金额：{{keyword1.DATA}}
商品详情：{{keyword2.DATA}}
支付方式：{{keyword3.DATA}}
交易单号：{{keyword4.DATA}}
交易时间：{{keyword5.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','FHjwtB4WbGls6qWZLK3C8UbqcmAbCjQ1rgvepNiWe9U','1'),('6','TM00009','会员充值通知','
{{first.DATA}}
{{accountType.DATA}}:{{account.DATA}}
充值金额：{{amount.DATA}}
充值状态：{{result.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','KhzO4vtWAbSMLRev8OdHgaAYIUmY8jEwYmtfSGtM88Y','1'),('7','TM00017','订单状态更新','
{{first.DATA}}
订单编号: {{OrderSn.DATA}}
订单状态: {{OrderStatus.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('8','OPENTM202521011','订单完成通知','
{{first.DATA}}
订单号：{{keyword1.DATA}}
完成时间：{{keyword2.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('9','TM00184','订单未支付通知','
{{first.DATA}}
下单时间：{{ordertape.DATA}}
订单号：{{ordeID.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('10','OPENTM200681790','领取红包通知','
{{first.DATA}}
成功领取：{{keyword1.DATA}}
红包金额：{{keyword2.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0'),('11','OPENTM200565259','订单发货提醒','
{{first.DATA}}
订单编号：{{keyword1.DATA}}
物流公司：{{keyword2.DATA}}
物流单号：{{keyword3.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','CUTXKaP-Wiwd12lq2ZFMLrvVY_wnnCxhZB4iQW_qhYs','1'),('12','OPENTM200869995','排队提醒通知','
{{first.DATA}}
队列号：{{keyword1.DATA}}
取号时间：{{keyword2.DATA}}
排队时长：{{keyword3.DATA}}
等待人数：{{keyword4.DATA}}
{{remark.DATA}}','IT科技_互联网|电子商务','#029700','#000000','twllsi1431226863','','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_test` */
 DROP TABLE IF EXISTS `tp_test`;/* MySQLReback Separation */ CREATE TABLE `tp_test` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `wxtitle` varchar(100) NOT NULL,
  `wxpic` varchar(100) NOT NULL,
  `wxinfo` varchar(100) DEFAULT NULL,
  `indexpic` varchar(100) DEFAULT NULL,
  `questionpic` varchar(100) DEFAULT NULL,
  `bgcolor` varchar(100) NOT NULL DEFAULT 'ffcb1d',
  `title` varchar(100) NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `fistq` varchar(100) NOT NULL,
  `fistapic` varchar(100) NOT NULL,
  `fistatitle` varchar(100) NOT NULL,
  `fistatitle2` varchar(100) NOT NULL,
  `fistainfo` varchar(200) DEFAULT NULL,
  `secondq` varchar(100) NOT NULL,
  `secondapic` varchar(100) NOT NULL,
  `secondatitle` varchar(100) NOT NULL,
  `secondatitle2` varchar(100) NOT NULL,
  `secondainfo` varchar(200) DEFAULT NULL,
  `thirdq` varchar(100) DEFAULT NULL,
  `thirdapic` varchar(100) DEFAULT NULL,
  `thirdatitle` varchar(100) DEFAULT NULL,
  `thirdatitle2` varchar(100) DEFAULT NULL,
  `thirdainfo` varchar(200) DEFAULT NULL,
  `fourq` varchar(100) DEFAULT NULL,
  `fourapic` varchar(100) DEFAULT NULL,
  `fouratitle` varchar(100) DEFAULT NULL,
  `fouratitle2` varchar(100) DEFAULT NULL,
  `fourainfo` varchar(200) DEFAULT NULL,
  `fiveq` varchar(100) DEFAULT NULL,
  `fiveapic` varchar(100) DEFAULT NULL,
  `fiveatitle` varchar(100) DEFAULT NULL,
  `fiveatitle2` varchar(100) DEFAULT NULL,
  `fiveainfo` varchar(200) DEFAULT NULL,
  `pv` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `fistfx` varchar(200) DEFAULT NULL,
  `secondfx` varchar(200) DEFAULT NULL,
  `thirdfx` varchar(200) DEFAULT NULL,
  `fourfx` varchar(200) DEFAULT NULL,
  `fivefx` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_test_user` */
 DROP TABLE IF EXISTS `tp_test_user`;/* MySQLReback Separation */ CREATE TABLE `tp_test_user` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `testid` int(11) NOT NULL,
  `testtype` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_text` */
 DROP TABLE IF EXISTS `tp_text`;/* MySQLReback Separation */ CREATE TABLE `tp_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_token_open` */
 DROP TABLE IF EXISTS `tp_token_open`;/* MySQLReback Separation */ CREATE TABLE `tp_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_token_open` */
 INSERT INTO `tp_token_open` VALUES ('1','2','twllsi1431226863','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,AdvanceTpl,Message,Helping,Popularity,Jiugong,Zhaopin,MicroBroker,Unitary,Crowdfunding,Bargain,DishOut,Phone,Fuwu,Weixin,Hongbao,Card,Seckill,Service,lbsNews');/* MySQLReback Separation */
 /* 创建表结构 `tp_twitter_count` */
 DROP TABLE IF EXISTS `tp_twitter_count`;/* MySQLReback Separation */ CREATE TABLE `tp_twitter_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `twid` varchar(20) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `total` float NOT NULL COMMENT '总金额',
  `remove` float NOT NULL COMMENT '提出的金额',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_twitter_log` */
 DROP TABLE IF EXISTS `tp_twitter_log`;/* MySQLReback Separation */ CREATE TABLE `tp_twitter_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `fromsource` varchar(60) NOT NULL COMMENT '来自源',
  `param` float NOT NULL,
  `wecha_id` varchar(64) NOT NULL COMMENT '操作人，即操作了推广人推广的产品',
  `info` varchar(500) NOT NULL COMMENT '推广的详情',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`),
  KEY `fromsource` (`fromsource`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_twitter_remove` */
 DROP TABLE IF EXISTS `tp_twitter_remove`;/* MySQLReback Separation */ CREATE TABLE `tp_twitter_remove` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '提款人姓名',
  `tel` varchar(15) NOT NULL,
  `number` varchar(32) NOT NULL COMMENT '收款账号',
  `bank` varchar(30) NOT NULL COMMENT '银行名称',
  `address` varchar(60) NOT NULL COMMENT '开户行地址',
  `price` float NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_twitter_set` */
 DROP TABLE IF EXISTS `tp_twitter_set`;/* MySQLReback Separation */ CREATE TABLE `tp_twitter_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `clickprice` float NOT NULL COMMENT '点击的价格',
  `clickmax` int(10) unsigned NOT NULL COMMENT '每天点击的上限',
  `registerprice` float NOT NULL COMMENT '注册的价格',
  `registermax` int(10) unsigned NOT NULL COMMENT '每天注册的上限',
  `percent` float NOT NULL COMMENT '商品总价的百分比',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_twitter_user` */
 DROP TABLE IF EXISTS `tp_twitter_user`;/* MySQLReback Separation */ CREATE TABLE `tp_twitter_user` (
  `id` int(11) NOT NULL,
  `agentid` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL,
  `token` varchar(255) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_unitary` */
 DROP TABLE IF EXISTS `tp_unitary`;/* MySQLReback Separation */ CREATE TABLE `tp_unitary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '名称/微信中图文信息标题',
  `wxpic` varchar(100) DEFAULT NULL COMMENT '微信中图文信息图片',
  `wxinfo` varchar(100) DEFAULT NULL COMMENT '微信中图文信息说明',
  `wxregister` int(11) NOT NULL DEFAULT '1' COMMENT '关注/注册',
  `register` int(11) NOT NULL DEFAULT '0' COMMENT '注册/不注册',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `type` int(11) DEFAULT NULL COMMENT '分类',
  `logopic` varchar(100) DEFAULT NULL COMMENT 'logo图片',
  `fistpic` varchar(100) DEFAULT NULL COMMENT '展示图片1',
  `secondpic` varchar(100) DEFAULT NULL COMMENT '展示图片2',
  `thirdpic` varchar(100) DEFAULT NULL COMMENT '展示图片3',
  `fourpic` varchar(100) DEFAULT NULL COMMENT '展示图片4',
  `fivepic` varchar(100) DEFAULT NULL COMMENT '展示图片5',
  `sixpic` varchar(100) DEFAULT NULL COMMENT '展示图片6',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `opentime` int(11) DEFAULT NULL COMMENT '结束后展示结果倒计时',
  `endtime` int(11) DEFAULT NULL COMMENT '结束时间',
  `state` int(11) DEFAULT NULL COMMENT '活动开关',
  `renqi` int(11) NOT NULL DEFAULT '0' COMMENT '人气',
  `lucknum` int(11) DEFAULT NULL COMMENT '幸运数字',
  `proportion` double NOT NULL DEFAULT '0',
  `lasttime` int(11) DEFAULT NULL,
  `lastnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_unitary_cart` */
 DROP TABLE IF EXISTS `tp_unitary_cart`;/* MySQLReback Separation */ CREATE TABLE `tp_unitary_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '购买/购物车状态',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_unitary_lucknum` */
 DROP TABLE IF EXISTS `tp_unitary_lucknum`;/* MySQLReback Separation */ CREATE TABLE `tp_unitary_lucknum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `lucknum` int(11) DEFAULT NULL,
  `addtime` double DEFAULT NULL,
  `unitary_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL COMMENT '购物id',
  `state` int(11) NOT NULL DEFAULT '0',
  `paifa` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_unitary_order` */
 DROP TABLE IF EXISTS `tp_unitary_order`;/* MySQLReback Separation */ CREATE TABLE `tp_unitary_order` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '总价',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `paytype` varchar(50) DEFAULT NULL COMMENT '来自于何种支付(英文格式)',
  `paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付，1代表已支付',
  `third_id` varchar(100) DEFAULT NULL COMMENT '第三方支付平台的订单ID，用于对帐。',
  `orderid` varchar(255) NOT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_unitary_user` */
 DROP TABLE IF EXISTS `tp_unitary_user`;/* MySQLReback Separation */ CREATE TABLE `tp_unitary_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(100) DEFAULT NULL COMMENT '手机号',
  `address` text COMMENT '地址',
  `token` varchar(100) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_update_record` */
 DROP TABLE IF EXISTS `tp_update_record`;/* MySQLReback Separation */ CREATE TABLE `tp_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_update_record` */
 INSERT INTO `tp_update_record` VALUES ('1','2014年12月升级包1','upgrade','1388110020'),('2','2014年12月升级包2','upgrade','1388110080'),('3','2014年12月升级包3','upgrade','1388110140'),('4','2014年12月升级包4','upgrade','1388110260'),('5','2014年12月升级包5','upgrade','1388110320'),('6','2014年12月升级包6','upgrade','1388110380'),('7','1、行业应用后台版面错乱；2、照片打印机照片不显示','0','1405399740'),('8','1、会员卡幻灯片问题 2、新添加公众号无响应 3、多图文顺序问题 4、相册上传按钮不显示问题','0','1405474020'),('9','相册没有上传按钮','0','1405478100'),('10','微信公众平台接口调整导致的url超时或者关注不回复问题','1','1405652520'),('11','公共模板文件','1','1410740700'),('12','php文件','1','1410740760'),('13','公共en文件','1','1410740820'),('14','','1','1410740940'),('15','','1','1410741180'),('16','微场景分享、直达号sitemap，stroe colorid没有默认值','0','1410861960');/* MySQLReback Separation */
 /* 创建表结构 `tp_upfile` */
 DROP TABLE IF EXISTS `tp_upfile`;/* MySQLReback Separation */ CREATE TABLE `tp_upfile` (
  `fileid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid_int` int(11) NOT NULL,
  `filetype_int` int(11) NOT NULL DEFAULT '0' COMMENT '0背景,2音乐,1图片',
  `filesrc_varchar` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sizekb_int` decimal(18,2) DEFAULT '0.00',
  `filethumbsrc_varchar` varchar(200) DEFAULT NULL,
  `biztype_int` int(11) DEFAULT '0',
  `ext_varchar` varchar(50) DEFAULT NULL,
  `filename_varchar` varchar(100) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT '0',
  `delete_int` int(11) NOT NULL DEFAULT '0' COMMENT '0正常,1删除',
  PRIMARY KEY (`fileid_bigint`),
  KEY `userid` (`userid_int`,`filetype_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_upfilesys` */
 DROP TABLE IF EXISTS `tp_upfilesys`;/* MySQLReback Separation */ CREATE TABLE `tp_upfilesys` (
  `fileid_bigint` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid_int` int(11) NOT NULL,
  `filetype_int` int(11) NOT NULL DEFAULT '0' COMMENT '0背景,2音乐,1图片',
  `filesrc_varchar` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sizekb_int` decimal(18,2) DEFAULT '0.00',
  `filethumbsrc_varchar` varchar(200) DEFAULT NULL,
  `biztype_int` int(11) DEFAULT '0',
  `ext_varchar` varchar(50) DEFAULT NULL,
  `filename_varchar` varchar(100) DEFAULT NULL,
  `eqsrc_varchar` varchar(200) DEFAULT NULL,
  `tagid_int` int(11) DEFAULT '0',
  `eqsrcthumb_varchar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fileid_bigint`),
  KEY `userid` (`userid_int`,`filetype_int`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;/* MySQLReback Separation */
 /* 创建表结构 `tp_upyun_attachement` */
 DROP TABLE IF EXISTS `tp_upyun_attachement`;/* MySQLReback Separation */ CREATE TABLE `tp_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_user` */
 DROP TABLE IF EXISTS `tp_user`;/* MySQLReback Separation */ CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `free_time` int(11) NOT NULL DEFAULT '0',
  `scene_times` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_user` */
 INSERT INTO `tp_user` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3','1','1','','1439276849','120.236.168.8','','1','0','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_user_address` */
 DROP TABLE IF EXISTS `tp_user_address`;/* MySQLReback Separation */ CREATE TABLE `tp_user_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0' COMMENT '?û?id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '?ջ???',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '??ϵ?绰',
  `address` varchar(300) NOT NULL DEFAULT '' COMMENT '?ջ???ַ',
  `postcode` varchar(10) NOT NULL DEFAULT '' COMMENT '?ʱ?',
  `default_address` char(1) NOT NULL DEFAULT '0' COMMENT 'Ĭ???ջ???ַ',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_user_group` */
 DROP TABLE IF EXISTS `tp_user_group`;/* MySQLReback Separation */ CREATE TABLE `tp_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `func` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_user_group` */
 INSERT INTO `tp_user_group` VALUES ('1','1','试用版','2000','2000','0','0','0','0','10','1','1','0',''),('2','2','体验版','3000','3000','1','2','10','0','50','1','1','0',''),('3','3','增强版','40000','40000','1','4','150','0','80','2','1','0',''),('4','4','黄金版','5000000','5000000','1','1000','200','0','10000','100','1','0','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Person_card,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,AdvanceTpl,Message,Helping,Popularity,Jiugong,Zhaopin,MicroBroker,Unitary,Crowdfunding,Bargain,DishOut,Phone,SeniorScene,Fuwu,Weixin,Hongbao,Card,Seckill,Service,Weizhaohuan,Voteimg,Shakearound,Micrstore,Cutprice,ServiceUser,Numqueue,CustomTmpls');/* MySQLReback Separation */
 /* 创建表结构 `tp_user_request` */
 DROP TABLE IF EXISTS `tp_user_request`;/* MySQLReback Separation */ CREATE TABLE `tp_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_userinfo` */
 DROP TABLE IF EXISTS `tp_userinfo`;/* MySQLReback Separation */ CREATE TABLE `tp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `total_score_bf` int(10) NOT NULL,
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `balance_bf` decimal(10,2) NOT NULL,
  `paypass` varchar(32) DEFAULT NULL,
  `twid` varchar(20) NOT NULL COMMENT '推广号',
  `username` varchar(32) NOT NULL COMMENT '账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `city` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `store_id` int(10) DEFAULT '0',
  `drp_cart` text NOT NULL COMMENT '????ϵͳ-?û????ﳵ',
  `regtime` varchar(20) NOT NULL DEFAULT '' COMMENT 'ע??ʱ??',
  `fakeopenid` varchar(100) NOT NULL DEFAULT '',
  `issub` tinyint(1) NOT NULL DEFAULT '0',
  `cart` varchar(20) DEFAULT '',
  `origin` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `twid` (`twid`),
  KEY `username` (`username`),
  KEY `store_id` (`store_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('11','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBPIjYa4H6dDlxm8uljF7ySib909Q4x4eHibhwDBIYCicicFibdSssZbMvJBFT8AEbY391fDNah6WqqmSbej5T6fr54X1/0','0','0','0','0','twllsi1431226863','onHRmuD5eAyABVzl3tWBJKXtPjjs','soGary','soGary','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','0','',''),('10','http://wx.qlogo.cn/mmopen/PiajxSqBRaEIOPyE1ZfS1afROzsYyw8Uh9aIvwNztcEx5pUIJA4WAXZiaJqEMzyzo0KFS873Dh1hJW44VXnntrUQ/0','0','6','0','0','twllsi1431226863','onHRmuPJnS3ptOC8sbtYbAcXWYrg','广州微盟总代—杜志毅','广州微盟总代—杜志毅','18588872622','1987','10','13','229034523','1','','','','','0','0','1','0','0','0','1432103373','0.00','0.00','d597feb69660a9a7d9e88833e92f0531','pth10','','','广州','广东','0','','','','-1','',''),('7','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLEjWrPfGK1aRlpgiaeSylLDib5uqELqFDzzgbNYIucO6ibCm793LZc6qLv7grsqN57GjTXbshS20DpZ/0','0','0','0','0','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','吕端','吕端','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','kWl7','','','石景山','北京','0','','','','1','',''),('6','http://wx.qlogo.cn/mmopen/Q3auHgzwzM63IbV32YRDkKJXicLb2VOicmlpDGHyFmcznbatReJRIsgiaJI9ayApQJjTVYZRoR64ibbGWODbaVtsRg/0','0','0','0','0','twllsi1431226863','onHRmuKJHTp6moCPMXDlAy68RLLI','一米阳光','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','QhY6','','','渭南','陕西','0','','','','0','',''),('8','http://wx.qlogo.cn/mmopen/Q3auHgzwzM61KejuxemMUS5IL9l88ibibU3DcF8Y4nREL3eicJlZdqQ0vsx3ILxZE9gselbnxhP6Msl5gc1oa5ibzJjLkKGkBn2NDr38cG91NXs/0','0','0','0','0','twllsi1431226863','onHRmuJcpa291GRci5V7UxjoVk2Y','花开半夏','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','UbZ8','','','','','0','','','','0','',''),('9','http://wx.qlogo.cn/mmopen/lKflbtDRhzx01zh6Im0n7nnmicIbOFKaTtzdnApbQbnjnaKWlwYRwoWxFFeia3ufP8T1wt10OEuwFkzOu9gNg7T1NqtXHHmIK7/0','0','0','0','0','twllsi1431226863','onHRmuLUwlZKQzjhZQb5qRuDsRDQ','GDbobby','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','江门','广东','0','','','','0','',''),('12','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOTEvADlYesPdRib6Dic8fxHggzbbv3PPfCNIXwZ3V81PibxgU3Pw0BA6fDpOBy0Jth1jBn0jBDSeFytB6xpmu5Cdf/0','0','0','0','0','twllsi1431226863','onHRmuIuvd9RJq2gPL5R7jDmTHY8','Happy','Happy','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','XVi12','','','','','0','','','','0','',''),('13','http://wx.qlogo.cn/mmopen/oQ7QIr12iawrqHlEl6XaodO9DWSjqESiajibnAEesNFTkI8WIac8lcxxgiaibWpPCiaKV8mgKoHgJrWWbypQS8N9u4gRIPL2DKxUfO/0','0','0','0','0','twllsi1431226863','onHRmuFwfs_FcUG1uLjDKzkPti-4','Lily','Lily','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('14','http://wx.qlogo.cn/mmopen/PiajxSqBRaELU760teOQtCGdw29EFlFPJzahciboasibNVRI5ky06lRouHh3AyDibLCvVI7o6YCzVg4ZoicaGtbOpDg/0','0','0','0','0','twllsi1431226863','onHRmuBJhvmUblM7QEf9ecnd9Y7U','LigneousCat','LigneousCat','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','0','',''),('15','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSgHicJve30YGSKATPC6LBnJMWqw1CPYR5YdkwBhzUOicYOyEtseBxjoLbTsiau6snDcSEpic3MvgvAbiaOmVZxRRpmiab/0','0','0','0','0','twllsi1431226863','onHRmuJy0GwK-7dLt23VwxqMRuLM','苏家村','苏家村','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','csb15','','','','','0','','','','1','',''),('16','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNx6H8CeE8vibk9XnsfXqZ7aHXeDaN5bEusg0aJ2AicUsplDtkLxQIRaumibNuxC92W1ic7v9xXwU2ibzaeXDmdCodUU/0','0','0','0','0','twllsi1431226863','onHRmuNp2ALbeBTemyGPoIXCRXSo','bababala','bababala','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','0','',''),('17','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqHP1Yy7IU4Lu8btzTE6GE9KgiaJuCsF0vFzQQe9Q0ABmfRnxoGWD3iav3vB0h9gt51ib6tkQqABO9xx2QGKhITAsr/0','0','0','0','0','twllsi1431226863','onHRmuLLQzhNLMMOTBRpH1B-k5ag','若竹','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','0','',''),('18','http://wx.qlogo.cn/mmopen/lKflbtDRhzx22wYADNibTTsqdyFPVuV9unCB7yrHYjV3scFsSWno0NC01lg2bIicOIbTV49k22hUJiaACIyG4SSIQmLoVQZ3Xko/0','0','0','0','0','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','橘子','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','0','',''),('19','http://wx.qlogo.cn/mmopen/oQ7QIr12iawq0I1ibdKkUeR79UbyxfVTAIDmrqDsFEXyljKSbibibjDWkPn1knJibia8Z8lsvY4FswpxOgrN2ibXMRyF5KZz0tq0crq/0','0','0','0','0','twllsi1431226863','onHRmuI8QJzJeqpD8ia-wKETRElE','','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('20','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSglVLuibSD7Clia4VEGshibPTm2lHQ1OFgfFTth0NWs2puuAuarmkLgxnKibswIRFpgHBBKFtbZj7YyIictH5qrsvjFZ/0','0','0','0','0','twllsi1431226863','onHRmuBTD41pLrLghzzhhXR3JrVc','老张','老张','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','UJK20','','','广州','广东','0','','','','0','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('21','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqibyLQgpfPzf8Dp6x8545LNHuHU3VTvcRAOdXHobYt3FPCl3kXZN7JoCjBia7a4BDzwP529nH6RoGydS1RW2wGat/0','0','0','0','0','twllsi1431226863','onHRmuMKZ9oYpNgP8WaqFupFusP8','maron','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','0','',''),('22','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZ5Xibqd5YI9Zjib308icj3d8YAnjVfPUntzucQYC5OY63iax9RGQamjoYOdPaBAXnpmFpm90HKJlssZFgHjv83TEW/0','0','0','0','0','twllsi1431226863','onHRmuOeLXdQtMNRcu3GSPwikhvQ','卷毛鬼','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','-1','',''),('23','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOTEvADlYesPTwhL2yPKDMPypMtFZlTvXibc8PicI3zfrSTpT7FfWIHCBH4cjNGxekSv4cgVOArWRic7yPG6JibFjC4/0','0','0','0','0','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','X','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('24','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSgPE1twicw7jTUjibF6r7NNYWic36NDGV11963jcAvSwp5qSWgKVdgsSVBRvOZ3B21xZYhBEhGZVHN3ZXa2r7CarF7/0','0','0','0','0','twllsi1431226863','onHRmuBFftTQTDlonGu1eivuOPNY','(´๑•_•๑)榎本径旦那','(´๑•_•๑)榎本径旦那','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','0','',''),('25','','0','0','0','0','twllsi1431226863','onHRmuPJnS3ptOC8sbtYbAcXWYrg','广州微盟总代—杜志毅','广州微盟总代—杜志毅','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','FLx25','','','广州','广东','0','','','','-1','',''),('26','http://wx.qlogo.cn/mmopen/oQ7QIr12iawowYqJywwMYg5wDf0xKlZz3tOtibGKu4pubEr4FGq8HrBPRWzic92sIwONOfBh2HUkqgdoh3FfiammZo9RguBAY7Uz/0','0','0','0','0','twllsi1431226863','onHRmuLZj6tyjlmVWnvejHbnkU6o','德欣','德欣','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','fco26','','','广州','广东','0','','','','1','',''),('27','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSg655ibiaLEn3CnGNKQEHx6yWjPeWapvX7ydftqdWv73rgKGV95FmwJQ7iba4MpNj7mROQ28HnOI6ND2cicIOTcVpog/0','0','0','0','0','twllsi1431226863','onHRmuHBgjdfWYaQkf3x3Sj24ciI','阿豹斯特拉','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('28','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwuicaM7HZOBVlaJg5pK5L7h0z0iagc3zhcVy5sqDhpPpZ6VSMU2d15NAskC037BTVTORP9VSzTIYXb/0','0','0','0','0','twllsi1431226863','onHRmuN4lxwYr78MQW0l6-WBaRb0','肖倾宇','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','德州','山东','0','','','','1','',''),('29','http://wx.qlogo.cn/mmopen/zXRribZg6kGvFGN8BkkniagUIsRBtcnxPCfLZ3TfQOUVBqK0qticn4SWohFoiccGEzd8HuljfnTWEFu6EUgP8Pg0EyiaTIIIml18x/0','0','0','0','0','twllsi1431226863','onHRmuPM3B8EFwtv00FkHVahFjLk','霍荣彬','霍荣彬','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','XEf29','','','广州','广东','0','','','','1','',''),('30','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNKKRNrib31YtXsx0QVcicZjbYLXo2IwYmxXt3Bx0JYzEnyN556ECzdmftIKia7L3ruwyribGu1ETDhmOqLamIzKwex/0','0','0','0','0','twllsi1431226863','onHRmuOpMGfTab3UEIAawGLJqhak','Funny  girl','Funny  girl','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','mYQ30','','','广州','广东','0','','','','-1','',''),('32','http://wx.qlogo.cn/mmopen/oQ7QIr12iawq0I1ibdKkUeR79UbyxfVTAIDmrqDsFEXyljKSbibibjDWkPn1knJibia8Z8lsvY4FswpxOgrN2ibXMRyF5KZz0tq0crq/0','0','0','0','0','twllsi1431226863','onHRmuI8QJzJeqpD8ia-wKETRElE','','','18588872622','','','','','2','','','','','0','0','0','0','0','0','1436395482','0.00','0.00','','AJg32','','','广州','广东','0','','','','1','',''),('33','http://wx.qlogo.cn/mmopen/lKflbtDRhzzcy6UuicwYFpDd2icPcLQHp1GlnBib2b3786X6NGCyFDpa6QavguOicpagvU78xgPmEomt1dQGbTsTFyhwcU1BCRUT/0','0','0','0','0','twllsi1431226863','onHRmuODpTKju4Ar23bFS6yp320Y','黄梦洁','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('34','http://wx.qlogo.cn/mmopen/PiajxSqBRaEJhicXwiapp4599zG8Dz5XcWZh88WQ1DhSIYrkj5aBicS7RqPE1Y7seg1OfUh3n5JaPscQbqAC9D34Eg/0','0','0','0','0','twllsi1431226863','onHRmuIqwG37qg0dgiYswnCbz4OA','傻子太多，骗子明显不够用','傻子太多，骗子明显不够用','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','Cbn34','','','武汉','湖北','0','','','','1','',''),('35','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLLamiaIJMrTZluibjkXLQed6Gib0hpJQAzHuGS2P7iaTicMWbHzCia1J5bongnDzTahZwNmR564jNdZib47/0','0','0','0','0','twllsi1431226863','onHRmuKo5bQUgPp68Ke1b-GlRvOY','冯莎 ','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','武汉','湖北','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('36','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCRE2vACAtOthqXuePU5iaXDBdeXBsBUSO0S2jsVDy8eoVODb2Qe4nXYApWK1p1bRUHJSKTS78iaJYQ/0','0','0','0','0','twllsi1431226863','onHRmuKDtjPC0wntcyI9NO-JoiFA','吴祥武','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','武汉','湖北','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('37','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwkic11m9LsSZh1JLT5uIqYNgu0yCl4e5DhNb9ia9yNIxBpfyphxy0PcWmDMicib7WBDm0yZDicBWmp6OY/0','0','0','0','0','twllsi1431226863','onHRmuBtVrtSMclLKtSrz9pSBMJw','小涛','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','武汉','湖北','0','','','','1','',''),('38','http://wx.qlogo.cn/mmopen/hJTMgiaG36O17c91uL8Z1FciaSrLxHpbRjQicLkrYkT0qia7HGrib8tyu1Qg9v2Mm14IgO75to6AAomKRNCYuBf8vSCG6dIkxTFhE/0','0','0','0','0','twllsi1431226863','onHRmuBQCHJQOq_QttvVGynmRhQU','素子花开','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','九江','江西','0','','','','1','',''),('39','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwnENEOpbjyS4tDKG0SZ2dkibiaG2mmbmOQBMfp9G67mWpbZeOkvNjDLHfU4dGelLNuxRYr1HKhgOnic/0','0','0','0','0','twllsi1431226863','onHRmuGdssJdYhjXJdAtobq3c4fI','__空心','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','黄冈','湖北','0','','','','1','',''),('40','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOTEvADlYesPXnQyl34xWD3QBAv8Ie7GcMhvVIDY3pCWwKr2S3SAmtTWgCTV9g8g2vYVvMvYVzA7cRvv1EvZvvp/0','0','0','0','0','twllsi1431226863','onHRmuAgzL7KdbJAdQU6hYb4hAkg','庞文军','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','潜江','湖北','0','','','','1','',''),('41','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwhA1iajWEvTQ5HUVJ1fmEDS35DgVTeS2MxNB1BCxAXuqtyVMoXic4urtUYW0rZVRCaYBAdKo7BHoHX/0','0','0','0','0','twllsi1431226863','onHRmuEK6KDAw1wv6O7G_heNiG9o','王鹏','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','武汉','湖北','0','','','','1','',''),('42','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDohcSjRdX48ibBz5nBiaMHI23ic2GjgjZpEWvlcDAhI2n6hJsscsUL0zr2U59DmicZcToHsYbBNbMSvw/0','0','0','0','0','twllsi1431226863','onHRmuKnMP4Gz2oO7B43-MghTCRM','Sunshine','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','武汉','湖北','0','','','','1','',''),('43','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLBYKOiaWboje5MqslTpRpdjleIYuSduRI5yuRjofHZx0I3vibbhMorVhQvDPVQWFh7qMfMdBxAFQ7N/0','0','0','0','0','twllsi1431226863','onHRmuMPGrZlOf907MRoLzDao6Xc','曾阿牛','曾阿牛','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','pUv43','','','','Wan Chai','0','','','','1','',''),('44','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDpAfrktHVYkEZAN3gw5Vut8WfUd013agibHSaEPl0bVzQJm79yicXB0un5xzKLEWL9pY8Ys2Cqw1YibNL9ZhunOVlDEnbNY8p8Fo/0','0','0','0','0','twllsi1431226863','onHRmuIloEzDCoNFch0PacyF4CS0','吴翠丽','吴翠丽','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','BFP44','','','','','0','','','','1','',''),('45','http://wx.qlogo.cn/mmopen/lKflbtDRhzwGzVuLHz1CQFI99zicQHuCckj2JL2rHRwiblflM5LRoVGsXSsLKon5flcQ6uWKYz8gXTPvt11wics6aiae33CPgMicu/0','0','0','0','0','twllsi1431226863','onHRmuNJaUHXp6G70ZBnADLI_Nm4','C    w','C    w','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','XAa45','','','','','0','','','','-1','',''),('46','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSjiakQRP3znqceZp0PajzJoDf4hh5LuCLib2OE2ic1dSHgMcIF0nWgzy0uu34IdYfOxiaiadT78uF0X4a63hnr0JiaFG0/0','0','0','0','0','twllsi1431226863','onHRmuNzbydOsEX3FiQL61pB_4SM','书香四溢','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','四川','0','','','','-1','',''),('47','http://wx.qlogo.cn/mmopen/lKflbtDRhzwGzVuLHz1CQPsdhK87jJNEJlIFbYJ9pHXibbAEqPsNiaBNRVf1dqHS05duO6OiaDAXMkrW3iaaRHdbicPb6HQ8ce5iaT/0','0','0','0','0','twllsi1431226863','onHRmuHOMziAIGbnqE5mz1RSpef0','微营销','微营销','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','Chv47','','','广州','广东','0','','','','1','',''),('48','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNcpO4VdIFkbWa35emBFKq5YicU1Zic58hyfqs6JkxwM59dlsf9XmE5P7mA0XpHPym2E3cuqTviaibRNw01puM4fA8X/0','0','0','0','0','twllsi1431226863','onHRmuPOyq4N1tWU3UdFrMuPb2rk','Evildoer','Evildoer','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','ORn48','','','','','0','','','','-1','',''),('49','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwpZTRYltPF4wNyJyDGUOAAiaszAeiayibzYfl8P3QrQV7sjibNZcN8VHMCw0icOo0vINPiaZPtqOHE8omc/0','0','0','0','0','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','soGary','soGary','18588872622','','','','','1','','','番禺广场','','0','0','0','0','0','0','0','0.00','0.00','','CTh49','','','广州','广东','0','','','','1','',''),('50','http://wx.qlogo.cn/mmopen/lKflbtDRhzzTibCicrNB3IgmG1xnUiayvJ5RNsELQTYgl5wUfoibnwGaCp3G6CCPEMaMrRlflfibgY1iaPdkt2UH25Nbbk75DY6bHl/0','0','0','0','0','twllsi1431226863','onHRmuBLxSVTKg3xMDqAK2Iz2_88','229','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','-1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('51','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqz1jlEdddibRk1RMe67gs6K2xt1NXJywlxjtpEzTIKbO9PyFNDvBqwLW7kQcfUdbaxpsBficy18KmomWThpngobO/0','0','0','0','0','twllsi1431226863','onHRmuDQxc3V8ostR4XsXGVx6iaI','Sunshine','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','伏尔加格勒','0','','','','-1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('52','http://wx.qlogo.cn/mmopen/lKflbtDRhzwSPibslC3jx0YRVvD7XXH3yKsK3zBc0hzQx5KAmFTpEOaFlwhP9t55aMC60p9s3iccLcq9NwGAC3OibeG0M5uxj24/0','0','0','0','0','twllsi1431226863','onHRmuFo6gTCT3H8MBbYd_y4YJKs','.April','.April','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','KGB52','','','广州','广东','0','','','','1','',''),('53','http://wx.qlogo.cn/mmopen/oQ7QIr12iawoQzOMWfxhIqktODj3ibS8TrJE46hFfUQSdOnyUZPgGEGPeLnpuKN1mHmtxDLenfurgSANBxErgHFAXw3jym1O9G/0','0','0','0','0','twllsi1431226863','onHRmuJBYmpp1rHh2AYbEWGQOqak','立琼','立琼','','','','','','2','','','','','0','0','0','0','0','0','1438406543','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('54','http://wx.qlogo.cn/mmopen/lKflbtDRhzynuOf0p9V8qUr5hcaUrviaQIAncBc1ppg6MLicnBsr7EJD6xpISPdWZHoIhsQPedwI9RGzgEfibNV4WibeypLw52mA/0','0','0','0','0','twllsi1431226863','onHRmuOCs7jcLkwmiotxd5w4dAXE','双子星罗t','双子星罗t','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','Xed54','','','广州','广东','0','','','','-1','',''),('55','http://wx.qlogo.cn/mmopen/lKflbtDRhzzB2YBz3j82sp7ofWLgoQ1kibyvx3yG3pWvHMlz4FjGpwGky2ub9om1MG8YSBuTxEsFr92pKBwz3BoerTSnZLPd6/0','0','0','0','0','twllsi1431226863','onHRmuLBgXVwoM5NW3OtKwokPq8o','贞子','贞子','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('56','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZjjU96ShaOWFEZWaPI2EiaibD0kMalxICS9K3al4ThbwicrK5sNe3EZDclEUU8DECxFesvwCDdd5mYZkvmHJyney/0','0','0','0','0','twllsi1431226863','onHRmuGfq-P9cNyKkHjS4MaXdSVI','May','May','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','eLO56','','','广州','广东','0','','','','1','',''),('57','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBN6iaQ8NlzghsSvKib7BAqN0icAvVMEzzFsiaHoqicppOw9StzmsictDicXcpPvdamb8x39d2mnyG4y2Rw3qKianGEz07z0/0','0','0','0','0','twllsi1431226863','onHRmuPrPWliw3wZO4cJRUeMWQ_A','飞翔','飞翔','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('58','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqXyx9Iv5ldc7lF2zuU4N0DcoTaBpK0ZLtZRyP9IBmdLTKHhlsuqjwMNPGU6gfUDESL3iaXJ4oVJIg/0','0','0','0','0','twllsi1431226863','onHRmuMqu5DelI0z7SPFsWli34XU','林小乖','林小乖','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','CWF58','','','广州','广东','0','','','','1','',''),('59','http://wx.qlogo.cn/mmopen/oQ7QIr12iawpQRWBgGB7aEicu69rzZE90agydQFJ88oNy6sTDZlRsibM6Iickl2ia1uZ8IIQcibIRYPxZ2wFnjdC3EvPxI46jzABbB/0','0','0','0','0','twllsi1431226863','onHRmuMJHE1VS4-TfQvloV3GfuNs','乘二','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('60','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSj0A5KVHLgib73BToLpqFFzXTzNusjWlbJbwwTeIFOWZ1ZkuicQhVl0yjUnMsSXUYkCJzXeVlrdvUydhTw5Jayokic/0','0','0','0','0','twllsi1431226863','onHRmuF3tHrZ7QKiggvfSlQxjorw','梁.','梁.','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','-1','',''),('61','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwo6TIwjvaDHYJIpwv7cIwJ5uvW9U2Vc6jOianY8fZXiaDQEhkGo73OlFWGxHHDL1rQ2uKMMfU9Ch0D/0','0','0','0','0','twllsi1431226863','onHRmuNAHcqRSYo5VNKbn9mxhEi0','。疯子眼里小丑最美','。疯子眼里小丑最美','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','qeW61','','','广州','广东','0','','','','-1','',''),('62','http://wx.qlogo.cn/mmopen/Q3auHgzwzM69wQ6Dv8qiaxBdGabPq6icSFiabC8KK33Bsm7iaNK4iaH5oEc4UVMjXNMiacQiafHjuUdso78cibc6mY4tAeJuOibofKZs8ZTRhotCvQVE/0','0','0','0','0','twllsi1431226863','onHRmuDcnVZKr07-0gdxQkoNSknI','波波','波波','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','KHh62','','','广州','广东','0','','','','1','',''),('63','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBPkK5PvAWg1LOGgk5WeB4Hk5H5OeTJ6H1r8fdaib2FJpFN396O4nlF1uv3icvn0ZwicSpYiaicSDGjEjSxPhciaYxxsde/0','0','0','0','0','twllsi1431226863','onHRmuH37-E19qWv6-5Q50cMqYB8','pp','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('64','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZjjU96ShaOfNFuiay8vS7lLiaiaR80icptjibicjY016ibBDH3ENsz0vtmHf4eHj8uReKHvndJm8D6q0srOmQjDl2CUX/0','0','0','0','0','twllsi1431226863','onHRmuG4vAjIUAYfruXeEo1rBQNg','陈海健ken','陈海健ken','13809200888','','','','','1','','','上海','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('65','http://wx.qlogo.cn/mmopen/lKflbtDRhzzyVKJiaibQ4to335eYKStRqRfqL9McVxwd22sYennTo3T9Z5ca1fUv65Z0ibaYXxdQrqSDAvGUFV8tXGW6TLQ0ePb/0','0','0','0','0','twllsi1431226863','onHRmuNgqpxURQCC-QS7NCR750oY','小奕','小奕','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('66','http://wx.qlogo.cn/mmopen/lKflbtDRhzzlIN74eGQ5TTIW9QG2cVcAx566DK6Y4bVv2C2F1HO2Sqibx7myN1UQLjsreM3Za0sKEsibLduABicOuSGp0wHUx3c/0','0','0','0','0','twllsi1431226863','onHRmuLxBp9NkTXaiJidJ1-ctfgg','ANNA','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('67','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSiaKvBkCJsOVzsYJZIoHQnky7oFa7iasVRQXgYUt9EwWopjBgkG9tRCcDx8Ty14gN2PCjP9mVdNic6kz2rWzedEgbt/0','0','0','0','0','twllsi1431226863','onHRmuDXK_rH_WUKkl7xeNrgr8wU','荣','荣','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','Qeo67','','','广州','广东','0','','','','1','',''),('68','http://wx.qlogo.cn/mmopen/rrlk5fbia7rmbvPpzQ2dA1Vg2iaIB0NW0LUGd2aUyGesct0uOQwhWuYVBHXgWbROWOb3zYakRFMzGvvTxVneVcU74qt1zYuBYH/0','0','0','0','0','twllsi1431226863','onHRmuO_Od1rAtH6EniASrqQv16g','熊爱军','熊爱军','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('69','','0','0','0','0','twllsi1431226863','onHRmuBsJeUGkT0OfpK0f0CrAWsk','芳','芳','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','ECT69','','','','','0','','','','1','',''),('70','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShXk8hbicvZSG65tzWbEibF3vy67ft7P087Tia41OVXbYqsb5IXP2IQ7RrutraR4o3Q18QRh2bOvGDu9qsHuPYjPht/0','0','0','0','0','twllsi1431226863','onHRmuADaak92lxaJf2nu8EFIb34','Sylvia华女','Sylvia华女','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','bPl70','','','广州','广东','0','','','','1','',''),('71','http://wx.qlogo.cn/mmopen/oQ7QIr12iawot9zXx34aCrGV1Z4VxxXYYQnclUBibYbjlvMQ0fKNXXpdghibBAibXHGr7vPV2sBM5jJUeUstvYibd7A/0','0','0','0','0','twllsi1431226863','onHRmuBXphndJTAiS7kSX6pzY4hQ','独自长大','独自长大','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','lCw71','','','广州','广东','0','','','','1','',''),('72','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4NI79GwrQxA8uOaczgvCrV8l2QN18cxEM0ib8StBDiaIcmh0HWlCWfNEIsLbbyS8dJ5jAZdFZoib0MJbZYVDL6nZJRfGof9IBtWU/0','0','0','0','0','twllsi1431226863','onHRmuMdLemkvxWymk3CV6C5lYEM','daVid','daVid','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','iEc72','','','广州','广东','0','','','','1','',''),('73','','0','0','0','0','twllsi1431226863','onHRmuC2JX0bvOCwmCKqyRK2-2IU','mppresstest_00006','mppresstest_00006','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','0','',''),('74','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4rMvwUkl9wBEOhD1vgnicibQ8l7rvzMUvIwUMdAqeeRe6GxCDay6dS2cPNj2YT7ldNQvSb5bNX6f8CGY64Yz1MAwk4kAcQgx1U4/0','0','0','0','0','twllsi1431226863','onHRmuElVClSOAT1llROvWc1V6aU','Kaungsun','Kaungsun','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('75','http://wx.qlogo.cn/mmopen/lKflbtDRhzxI8P0s5P98oreULlibqOGmZlxcp80QqUpticxRbwJhr9XibQj1Sg7kFtgBIDDKHYMMbGs2lL5rEVXyoBxCBYKjyU6/0','0','0','0','0','twllsi1431226863','onHRmuES6rJZzXu5PPglis7jt-vk','博览书店(萍昭)','博览书店(萍昭)','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','0','',''),('76','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSiaYA03pCicT5sVXmIxia5RbQOBEzN2E6xFLMA9jMD8niaqyCOKicpgs1JQfzeo4lV2A2KcnV6xUDX2qTIibyrFI1H9qe/0','0','0','0','0','twllsi1431226863','onHRmuMq4oT5Jz8rB7JI9WJYRw9o','静文','静文','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','0','',''),('77','http://wx.qlogo.cn/mmopen/ajNVdqHZLLAJb3bOVcjhyqKiaTribemQgAq3MRLLyPSPDT8OScx0dV4So723PTeZEP2dJknS6fuD8oLwYD4dwhtKGDVL9sBwZH9bGaaTVeq7s/0','0','0','0','0','twllsi1431226863','onHRmuIjEd75qBmojlNibCzVibY0','鹿鸣        (ง •_•)ง','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('78','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwmfTo263yaGA8xR0GS97FpqI220XDkrq3NHIJqIpSa20E8AQSLjjHZLQmMbrOXKB03AUSxay59o7/0','0','0','0','0','twllsi1431226863','onHRmuI7vFQTrNevc60FaLjIQc08','活着活着就老了','活着活着就老了','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','aHP78','','','佛山','广东','0','','','','1','',''),('79','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNZRXw2ZPcEmAsS8XbGuvThqEuyg9gXyiaDWEHr31Cqxzia9KB90850NOiaPtnTBGooSdics0DWMmtYREaJibpTks1j0/0','0','0','0','0','twllsi1431226863','onHRmuJrhck9V-aOSAt8S8FDbEDg','CC','CC','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','brF79','','','佛山','广东','0','','','','1','',''),('80','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNGYYyW7Hiabwy4J9A32mdQ7YZmTb7eSUA7nn2paYiapH6a5yh7OhnRZVmJhY70G21jp17Eoa1eOjxoYqBXIQJibbia/0','0','0','0','0','twllsi1431226863','onHRmuCxdTrvctZE7Psx038IijUo','朱小小','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('81','http://wx.qlogo.cn/mmopen/lKflbtDRhzw5RNLpXvqKm8qNdg8Vp7APONwTMYhriaIpRD4vLF9k3Iicv14bm0f30LJBia4zjb1pY8GrgnG1Stgo14R1gGbEZoj/0','0','0','0','0','twllsi1431226863','onHRmuFwYUp1l1rQzEVIn70Ou_cI','z茵','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('82','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSj9jFDIIExfWDVShrSvm99gwLt0dqgyZQto5rnKX8AsNOaWiavUjpTZ11ibFW8Yr4NPcr9jhlpH6WTibLI1HAOoBAS/0','0','0','0','0','twllsi1431226863','onHRmuACXK4uZBftSzUJIFFtLMlw','哆啦a夢','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('83','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNNAp2ztt7b3qjfVhiaewxf08R7SibXF8xR6wkmCnsw2QhxCKRecy5BiaqFenl7sbQoAY59gxwMQ48vjN6OmSrzhGy/0','0','0','0','0','twllsi1431226863','onHRmuPIVxjhV8NsMRPDVh1MP91o','文文','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('84','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSiaKvBkCJsOVzps6ewjXhfic8td0nfvp6bZKcUHqyg6O7XBbpp8I7zgF6A0YxU7aLpiaMUmuHtZtxeOcD4kbugTAaR/0','0','0','0','0','twllsi1431226863','onHRmuPqG2jQHR6doZdYwZitWTB8','卷','卷','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('85','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOTEvADlYesPUekt3hZMv9NSe8gd64f8kUpKia6p8zfdVJVlpq5ibXhFz6MIicyMKrgPg3GBfahia54bQ1bUY75PqQ6/0','0','0','0','0','twllsi1431226863','onHRmuJDi5nhWapWU4BgiPw_p_gw','2甘草话梅2','2甘草话梅2','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('86','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBN5jGCjJ9lHibHURF7rTEaQaeonBbZ9svKdTKzEpOtozaGR4yVLXCvfJS0R58K9yZ4icRoGTGnIhCvMnKk9Bj8Aaib/0','0','0','0','0','twllsi1431226863','onHRmuEZx7-e5eub6rjzGbYMKOWg','陈小福','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('87','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwu7aDEzicwSsYfZsMHnNPebNYHNn7Mbjk0abGCiaZicWjoHt7nEriacicdMel9mn5JGrxcFqcAXuZibEJd/0','0','0','0','0','twllsi1431226863','onHRmuEBNxpCUOUTPE3cnY6NWVw8','炽','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','清远','广东','0','','','','1','',''),('88','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwpwMmyoHiaAnhGkXMdonREpgvRutwZunibkKicX8dtz2BBSLKT9wqicQ2tXL4oEkCDxib2SoRVsfAxNxe/0','0','0','0','0','twllsi1431226863','onHRmuL_-GomnSNMXrmpWntIb6uM','-凌缪儿','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('89','http://wx.qlogo.cn/mmopen/ZhvDl37FZZc7teYeTglIYmEznLORw0LqRUlnibeH2356Y23z7FqCAJWFkcyzyvZKHKia6Kot4Ne0dByJibGpVPoXpUkd26IarF2/0','0','0','0','0','twllsi1431226863','onHRmuFnyDwTGQ63OZ9atJXJI1Qs','卫卫','卫卫','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('90','http://wx.qlogo.cn/mmopen/mkK6pKjVRd3UCpD6PADZ1gKLhls1CQZLLNGSrvic76Bv61ibSW3iaKicjIuFvK0vRB1siatwQmR6SGKZgvW5licNjbA8b8qvh7roPd/0','0','0','0','0','twllsi1431226863','onHRmuNawvGbVyg_X5jeSSPdPBUw','婷','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('91','http://wx.qlogo.cn/mmopen/lKflbtDRhzwOyCf9LQwqFjgjtaYeqRm2Joic5AiaiaspJVSxo6wMeI2ZSKulDAWziccy8fF1dFzcruM8iaagdic1ACIeutN3x68f3l/0','0','0','0','0','twllsi1431226863','onHRmuOcPbBs1be-OxSd8cLBlvb4','不倒翁','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('92','http://wx.qlogo.cn/mmopen/rrlk5fbia7rmbvPpzQ2dA1TyUrbLNlggvOOI3r0T1SHk7eo0iaQr39vJfBUe7nHQL1qPUr9LmicsDBWFMib6oWO2DR7HeVXhaKaI/0','0','0','0','0','twllsi1431226863','onHRmuHB7GTZH5Qzpm7_JdKT1XfA','南村博览书店','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('93','http://wx.qlogo.cn/mmopen/lKflbtDRhzwEqayGDwyVBYl1QpicP6pzaTfyLx4D3GFOM2Ezsy69PSJWkLd1ddicKEO8yTEpGibUZDJV4Fm13gjMpCmsvyt8hS1/0','0','0','0','0','twllsi1431226863','onHRmuEN0DRQs0P8WGqfwY16ZWPo','芬芬','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('94','http://wx.qlogo.cn/mmopen/lKflbtDRhzyMykPDbD31bzvkPf2dThftaosW2hz1icX5rMqXYJKPjse20nf5D3Z9Y2mkTGaicaVcGaFW7LEIcSoM3gI6PickMCk/0','0','0','0','0','twllsi1431226863','onHRmuJ8yewpt2iNGzLnqblckY6Y','LXR','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','PJk94','','','','','0','','','','1','',''),('95','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqHP1Yy7IU4Lt5n2G7l8adnFaJUH3Nc8uwlQJaKWMgiaLicpic2do6zoTmuiaSA8KOVxlLN2Az8AlZfickETDOic8VKib0/0','0','0','0','0','twllsi1431226863','onHRmuKCpYSrDw6ODqL4hg09u6Rc','梁奕墉','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','bGQ95','','','广州','广东','0','','','','1','',''),('96','http://wx.qlogo.cn/mmopen/lKflbtDRhzyumRBs1sUNzQDkPxWmJT8VP66FYaxJEfAbpibvPdMJpQ2Ma09xb8ZibyZ7K0Fa9qTIklN0uicMicibenj4E0pWJnN2H/0','0','0','0','0','twllsi1431226863','onHRmuMLRdDGNPFhL4gNHGNhxESQ','Sashimi（明诗）','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('97','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSiarPYwmTBLMtPmdawkwUCKZPhJYhIS2jSEKyRWZk3ZReFRsnKgcabyibh2cGgrw7wZHhBqjmQmbkj2XW7Z0GLBDk/0','0','0','0','0','twllsi1431226863','onHRmuH2jASN1oLhreBkNI_MfH3w','Lyt婷','Lyt婷','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('98','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBPmnlqDgdUtDB3ib42FBj037GUNzpiczEbyVGYn6NANPeoicC2exkksWDPPwaKSbCUmJQcKgvichpzzTxfPLDibvpjeu/0','0','0','0','0','twllsi1431226863','onHRmuL3zrpxtzrIejGM8T4fu5vg','罗一','罗一','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('99','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwociameFaKGN18WFVPNJWpHnPicbghovmg0joK7x3jaxEIacyBPib2SXiammg2LDNhPeQS8gsp8GsEcH/0','0','0','0','0','twllsi1431226863','onHRmuLgP5Ne_0ZyQkkM8MGYpYFU','青青河边草','青青河边草','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('100','http://wx.qlogo.cn/mmopen/Q3auHgzwzM6iaqBvibhDBfIEqtZssTXfVva5NUiaO4mj0aH2Un4iar9tDqetOLicfB1EQR9qmHmuBHhicUW060kKMR7baT27MVWfoeFmtz0cb7wpM/0','0','0','0','0','twllsi1431226863','onHRmuHTl-dXsn6D_X3jGMJPVuCc','Jp_Cheung','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('101','http://wx.qlogo.cn/mmopen/Q3auHgzwzM69wQ6Dv8qiaxBdGabPq6icSFHo54HOsmh5aIvdgXtO3lOQDO5otteOH1eUibOWJbYicsTt4ibOZoIXa90KsSFicST1an8CSVK23U0cY/0','0','0','0','0','twllsi1431226863','onHRmuCxU3vfiQdpPxhpOKmU-XH4','阿黎','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('102','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShF7wM8pJT4TG0PAvX0unCqkgoMib4yKYs2MtviaCYmtJfuBibCGcGzsEicjeq0arMJicFwh0J2icyQdeCF7cNX5aQAiaB/0','0','0','0','0','twllsi1431226863','onHRmuJUyiIz7Lxi2uTNwJAumi-A','小麦、','小麦、','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('103','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSiafHt2oO7Wg4vicaA4YwtAbaRmmBZVSterY5Eh4LcWbUdZJY4YumyhHZDzfiar4huWC6WO1cY4t30UMzaHrYv3cN1/0','0','0','0','0','twllsi1431226863','onHRmuEosdAzhqgxVvF9mjZYgPTw',' JJ ','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('104','','0','0','0','0','twllsi1431226863','onHRmuMYLpNB8Xeq_WBi81eWjykk','邓贞琼','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('105','http://wx.qlogo.cn/mmopen/Q3auHgzwzM6UcZah5gm6MYjBoX67jVibpB5ruazVicMFvJNyWpKNeVhvKZPOV43cZor4LDvs3pFJkibqOick4ZTLr0V3GCGPGGiaI19wvzib1kgxE/0','0','0','0','0','twllsi1431226863','onHRmuGhE79yRiiNlYBZny-JR35U','Shirley  Hui','Shirley  Hui','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('106','http://wx.qlogo.cn/mmopen/lsD9d7rlQwmuAuibOJJt9fnKoQ2IRpKe47eCv0uqSbHsBX9GaWCwTrPFUCBJyAOAn0W6ppZKtQMr72zSR4ocTVDzppIjZZcew/0','0','0','0','0','twllsi1431226863','onHRmuOZBK5IKqBEdgSVae4zVgdc','王桂斌','王桂斌','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('107','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBPD3dI07nAUZ4GXVOWFKNdbdSfb6kV6rc0icB9IBtxIFPR8WT0sndZ8g9SdPqpNzhuKQ9w5Efy14P7qZcYvYApib3/0','0','0','0','0','twllsi1431226863','onHRmuOuerZGxpl9vT6vRHi9NjYM','随心出发','随心出发','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('108','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqvDcmb3fZJ8HdYYZj0m693ADegA7jIBXcyNHia6rtsmccqNKY6am4zbciaJE1rpsfcgtQ1gHyAZPTw/0','0','0','0','0','twllsi1431226863','onHRmuJH-Hcd24AWfdARYhkV8QOg','L-Fang','L-Fang','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','衡阳','湖南','0','','','','1','',''),('109','http://wx.qlogo.cn/mmopen/lKflbtDRhzx01zh6Im0n7nibULzmgmDfoRFPdoUEe6ic0wGiawiceuDTfveCYL0CibYHqJRyCxWHUIiaHGwxtaaKOlyAjIjfEXx9bL/0','0','0','0','0','twllsi1431226863','onHRmuFEYONZ_rGXk4mnQvTl59-U','舒青霞','舒青霞','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('110','http://weixin.blbook.cn/tpl/static/portrait/5.jpg','0','0','0','0','twllsi1431226863','onHRmuF4pgKcwuRnpyPGEuPDnR4E','南亭关','南亭关','18002209228','1976','7','16','747676534','2','','','','','0','0','1','0','0','0','1439486147','0.00','0.00','8d60b9927c5826b85b2b33545a256ed2','','','','广州','广东','0','','','','1','',''),('111','http://wx.qlogo.cn/mmopen/lKflbtDRhzx01zh6Im0n7l0pFL5AuUheQicd4nCTVoD0gIdAotq5ZgEBQj04DI5ufhAibvOqlQjltoQ583OjELcAhqO8o84b1T/0','0','0','0','0','twllsi1431226863','onHRmuAIAHpIuVidhqDOleYfjazE','webMMMM~','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('112','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZjjU96ShaOaPjoQibibyot44PPZd8liaNVRzAgk1EicoUInuMBP9gA374bsmNzoCCEjw9n12HeL8uMOiaSF5wZjbu5/0','0','0','0','0','twllsi1431226863','onHRmuPrJjaImdUGNOBYnqid7Wds','(^书童^)','(^书童^)','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','佛山','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 插入数据 `tp_userinfo` */
 INSERT INTO `tp_userinfo` VALUES ('113','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqHP1Yy7IU4Lusib0G8Y1sDtkg22neX7pKA2YDf9rQgWqjYGO5lMjffI5otkEa13O9KOKPsKBzQNVa8KmgYicOF2H/0','0','0','0','0','twllsi1431226863','onHRmuPrRHaiRsIl1utv-BjlRkSo','高仔','','','','','','','1','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','',''),('114','http://wx.qlogo.cn/mmopen/Q3auHgzwzM4EGNSjNrGzMoLuQKWXicHtnncewEquqfW2zyE3otzwSfp6tKJnWflpy7GWicnswrONxQNXZsibdYEF5u3Bic3UibUY9fMlvapFl1cA/0','0','0','0','0','twllsi1431226863','onHRmuATA-W4a4dxYwONsTuxCAMc','lovevivi','','','','','','','0','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','北京','0','','','','-1','',''),('115','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSgzl21gUndBkgBnjoNF5qBENj6u2lVsxn0IgzL3bJIuX40xtcY1zibxoB8BYb1L0jtuq0MB043ZuWxnxzCLqC8eia/0','0','0','0','0','twllsi1431226863','onHRmuOWnXNIW2Ex5CFBBE-N0F2w',' 。Yangzi',' 。Yangzi','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('116','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSgia2LibeTescIr1gfHZ7notMic1sHuRqZEicpBHYvQSsPCCuiadSibBlmGOqrwJtvL5k8SRNvtIfCu8yuQfZf01icAc5M/0','0','0','0','0','twllsi1431226863','onHRmuCi5yYzvtlzDTjoJ6jKNtTA','欣欣宝贝','欣欣宝贝','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','','','0','','','','1','',''),('117','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBMzx81FWYUictNpgVZdriay2k5H7GyJzMJME59iaTwWnE2RY2rDo9LWaAcGbCGicZYib0lkNMYGujzKpfrzVJDp03xDy/0','0','0','0','0','twllsi1431226863','onHRmuEmbPXODYO18nf9n7qvQ3Js','叁源色创意美术','','','','','','','2','','','','','0','0','0','0','0','0','0','0.00','0.00','','','','','广州','广东','0','','','','1','','');/* MySQLReback Separation */
 /* 创建表结构 `tp_users` */
 DROP TABLE IF EXISTS `tp_users`;/* MySQLReback Separation */ CREATE TABLE `tp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `business` char(20) NOT NULL DEFAULT 'other',
  `usertplid` tinyint(4) NOT NULL DEFAULT '0',
  `sysuser` int(11) NOT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `source_domain` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_users` */
 INSERT INTO `tp_users` VALUES ('1','','0','0','4','123','','0','202cb962ac59075b964b07152d234b70','esrwer@adsf.com','1421682201','1428671935','1','127.0.0.1','127.0.0.1','0','0','0','0','0','0','0','1556553600','0','4','0','0','0','dwcpqq','','other','1','0','0',''),('2','','0','0','4','blbook','18588872622','100000','3ff0db50e4d480957f717d7e04abacde','229034523@qq.com','1431226162','1439364463','1','14.23.81.218','14.30.4.217','8','0','100','0','0','0','0','4070880000','432','8','49242253','3','0','','','mall','1','0','0','');/* MySQLReback Separation */
 /* 创建表结构 `tp_vcard` */
 DROP TABLE IF EXISTS `tp_vcard`;/* MySQLReback Separation */ CREATE TABLE `tp_vcard` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_tel` varchar(100) DEFAULT NULL,
  `baiduapi` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `fax` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_vcard_list` */
 DROP TABLE IF EXISTS `tp_vcard_list`;/* MySQLReback Separation */ CREATE TABLE `tp_vcard_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_voiceresponse` */
 DROP TABLE IF EXISTS `tp_voiceresponse`;/* MySQLReback Separation */ CREATE TABLE `tp_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_vote` */
 DROP TABLE IF EXISTS `tp_vote`;/* MySQLReback Separation */ CREATE TABLE `tp_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(5000) NOT NULL DEFAULT '',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `refresh` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_vote_item` */
 DROP TABLE IF EXISTS `tp_vote_item`;/* MySQLReback Separation */ CREATE TABLE `tp_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_vote_record` */
 DROP TABLE IF EXISTS `tp_vote_record`;/* MySQLReback Separation */ CREATE TABLE `tp_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`) USING BTREE,
  KEY `vid_2` (`vid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg` */
 DROP TABLE IF EXISTS `tp_voteimg`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(50) NOT NULL,
  `action_desc` text NOT NULL,
  `award_desc` text NOT NULL,
  `flow_desc` text NOT NULL,
  `join_desc` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '' COMMENT '回复关键词',
  `reply_title` varchar(50) NOT NULL DEFAULT '' COMMENT '回复标题',
  `reply_content` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_pic` varchar(255) NOT NULL COMMENT '回复图片',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `apply_start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `apply_end_time` int(11) NOT NULL,
  `is_follow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要关注',
  `is_register` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要注册',
  `limit_vote` int(11) NOT NULL COMMENT '限制投票数',
  `limit_vote_day` int(11) NOT NULL COMMENT '限制每天投票数',
  `limit_vote_item` int(11) NOT NULL,
  `phone` char(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `page_type` enum('waterfall','page') NOT NULL DEFAULT 'waterfall',
  `display` tinyint(1) NOT NULL,
  `default_skin` tinyint(1) NOT NULL,
  `follow_msg` varchar(500) NOT NULL,
  `follow_url` varchar(255) NOT NULL,
  `self_status` tinyint(1) NOT NULL,
  `follow_btn_msg` varchar(255) NOT NULL,
  `register_msg` varchar(255) NOT NULL,
  `territory_limit` tinyint(1) NOT NULL,
  `pro_city` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_banner` */
 DROP TABLE IF EXISTS `tp_voteimg_banner`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `img_url` varchar(100) NOT NULL DEFAULT '',
  `external_links` varchar(1000) NOT NULL,
  `banner_rank` int(11) NOT NULL DEFAULT '1' COMMENT '播放顺序',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `banner_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_bottom` */
 DROP TABLE IF EXISTS `tp_voteimg_bottom`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_bottom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `bottom_name` char(50) NOT NULL COMMENT '导航名称',
  `bottom_link` varchar(255) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `bottom_icon` varchar(255) NOT NULL COMMENT '导航图标',
  `bottom_rank` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是内置导航',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `bottom_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_item` */
 DROP TABLE IF EXISTS `tp_voteimg_item`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '图片投票id',
  `baby_id` int(11) NOT NULL,
  `vote_title` varchar(100) NOT NULL DEFAULT '' COMMENT '图片描述',
  `introduction` text NOT NULL COMMENT '自我介绍',
  `manifesto` varchar(255) NOT NULL COMMENT '拉票宣言',
  `vote_img` varchar(500) NOT NULL DEFAULT '' COMMENT '图片地址',
  `jump_url` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL COMMENT '手机号',
  `vote_count` int(11) NOT NULL COMMENT '获得票数',
  `upload_time` int(11) NOT NULL COMMENT '上传时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `check_pass` tinyint(1) NOT NULL COMMENT '审核',
  `wecha_id` varchar(100) NOT NULL DEFAULT '',
  `upload_type` tinyint(1) NOT NULL COMMENT '区分管理上传还是报名',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_menus` */
 DROP TABLE IF EXISTS `tp_voteimg_menus`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `menu_name` varchar(50) NOT NULL DEFAULT '',
  `menu_icon` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `menu_link` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单链接',
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否是内置菜单',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `menus_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_stat` */
 DROP TABLE IF EXISTS `tp_voteimg_stat`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `stat_name` varchar(100) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否隐藏',
  PRIMARY KEY (`id`),
  KEY `vote_id` (`vote_id`) USING BTREE,
  KEY `stat_index` (`vote_id`,`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_voteimg_users` */
 DROP TABLE IF EXISTS `tp_voteimg_users`;/* MySQLReback Separation */ CREATE TABLE `tp_voteimg_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) NOT NULL COMMENT '活动id',
  `item_id` text NOT NULL COMMENT '投票选项',
  `wecha_id` varchar(100) NOT NULL,
  `nick_name` varchar(255) NOT NULL COMMENT '微信昵称',
  `votenum` int(11) NOT NULL COMMENT '已投票数',
  `votenum_day` int(11) NOT NULL COMMENT '今日已投票数',
  `vote_today` text NOT NULL,
  `vote_time` int(11) NOT NULL COMMENT '投票时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'token',
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `vote_id` (`vote_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall` */
 DROP TABLE IF EXISTS `tp_wall`;/* MySQLReback Separation */ CREATE TABLE `tp_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) DEFAULT '',
  `background` varchar(100) DEFAULT '',
  `endbackground` varchar(100) DEFAULT '',
  `isopen` tinyint(1) DEFAULT '1',
  `firstprizename` varchar(50) DEFAULT '',
  `firstprizepic` varchar(100) DEFAULT '',
  `firstprizecount` mediumint(5) DEFAULT '0',
  `secondprizename` varchar(50) DEFAULT '',
  `secondprizecount` mediumint(4) DEFAULT '0',
  `secondprizepic` varchar(150) DEFAULT '',
  `thirdprizename` varchar(50) DEFAULT '',
  `thirdprizepic` varchar(100) DEFAULT '',
  `thirdprizecount` mediumint(4) DEFAULT '0',
  `fourthprizename` varchar(50) DEFAULT '',
  `fourthprizecount` mediumint(4) DEFAULT '0',
  `fourthprizepic` varchar(100) DEFAULT '',
  `fifthprizename` varchar(50) DEFAULT '',
  `fifthprizecount` mediumint(5) DEFAULT '0',
  `fifthprizepic` varchar(100) DEFAULT '',
  `sixthprizename` varchar(50) DEFAULT '',
  `sixthprizecount` mediumint(4) DEFAULT '0',
  `sixthprizepic` varchar(100) DEFAULT '',
  `keyword` varchar(60) DEFAULT '',
  `qrcode` varchar(100) DEFAULT '',
  `ck_msg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall_member` */
 DROP TABLE IF EXISTS `tp_wall_member`;/* MySQLReback Separation */ CREATE TABLE `tp_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `truename` varchar(40) NOT NULL,
  `phone` char(11) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall_message` */
 DROP TABLE IF EXISTS `tp_wall_message`;/* MySQLReback Separation */ CREATE TABLE `tp_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  `is_check` tinyint(1) NOT NULL DEFAULT '1',
  `check_time` int(11) NOT NULL,
  `is_cheke` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall_prize` */
 DROP TABLE IF EXISTS `tp_wall_prize`;/* MySQLReback Separation */ CREATE TABLE `tp_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall_prize_record` */
 DROP TABLE IF EXISTS `tp_wall_prize_record`;/* MySQLReback Separation */ CREATE TABLE `tp_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wall_supperzzle` */
 DROP TABLE IF EXISTS `tp_wall_supperzzle`;/* MySQLReback Separation */ CREATE TABLE `tp_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_weather` */
 DROP TABLE IF EXISTS `tp_weather`;/* MySQLReback Separation */ CREATE TABLE `tp_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1','101010100','北京'),('2','101010200','海淀'),('3','101010400','顺义'),('4','101010500','怀柔'),('5','101010600','通州'),('6','101010700','昌平'),('7','101010800','延庆'),('8','101010900','丰台'),('9','101011000','石景山'),('10','101011100','大兴'),('11','101011200','房山'),('12','101011300','密云'),('13','101011400','门头沟'),('14','101011500','平谷'),('15','101020100','上海'),('16','101020200','闵行'),('17','101020300','宝山'),('18','101020500','嘉定'),('19','101020600','浦东南汇'),('20','101020700','金山'),('21','101020800','青浦'),('22','101020900','松江'),('23','101021000','奉贤'),('24','101021100','崇明'),('25','101021300','浦东'),('26','101030200','武清'),('27','101030300','宝坻'),('28','101030400','东丽'),('29','101030500','西青'),('30','101030600','北辰'),('31','101030700','宁河'),('32','101030800','汉沽'),('33','101030900','静海'),('34','101031000','津南'),('35','101031100','塘沽'),('36','101031200','大港'),('37','101031400','蓟县'),('38','101040100','重庆'),('39','101040200','永川'),('40','101040300','合川'),('41','101040400','南川'),('42','101040500','江津'),('43','101040600','万盛'),('44','101040700','渝北'),('45','101040800','北碚'),('46','101041000','长寿'),('47','101041100','黔江'),('48','101041300','万州'),('49','101041400','涪陵'),('50','101041500','开县'),('51','101041600','城口'),('52','101041700','云阳'),('53','101041800','巫溪'),('54','101041900','奉节'),('55','101042000','巫山'),('56','101042100','潼南'),('57','101042200','垫江'),('58','101042300','梁平'),('59','101042400','忠县'),('60','101042500','石柱'),('61','101042600','大足'),('62','101042700','荣昌'),('63','101042800','铜梁'),('64','101042900','璧山'),('65','101043000','丰都'),('66','101043100','武隆'),('67','101043200','彭水'),('68','101043300','綦江'),('69','101043400','酉阳'),('70','101043600','秀山'),('71','101050101','哈尔滨'),('72','101050102','双城'),('73','101050103','呼兰'),('74','101050104','阿城'),('75','101050105','宾县'),('76','101050106','依兰'),('77','101050107','巴彦'),('78','101050108','通河'),('79','101050109','方正'),('80','101050110','延寿'),('81','101050111','尚志'),('82','101050112','五常'),('83','101050113','木兰'),('84','101050201','齐齐哈尔'),('85','101050202','讷河'),('86','101050203','龙江'),('87','101050204','甘南'),('88','101050205','富裕'),('89','101050206','依安'),('90','101050207','拜泉'),('91','101050208','克山'),('92','101050209','克东'),('93','101050210','泰来'),('94','101050301','牡丹江'),('95','101050302','海林'),('96','101050303','穆棱'),('97','101050304','林口'),('98','101050305','绥芬河'),('99','101050306','宁安'),('100','101050307','东宁'),('101','101050401','佳木斯'),('102','101050402','汤原'),('103','101050403','抚远'),('104','101050404','桦川'),('105','101050405','桦南'),('106','101050406','同江'),('107','101050407','富锦'),('108','101050501','绥化'),('109','101050502','肇东'),('110','101050503','安达'),('111','101050504','海伦'),('112','101050505','明水'),('113','101050506','望奎'),('114','101050507','兰西'),('115','101050508','青冈'),('116','101050509','庆安'),('117','101050510','绥棱'),('118','101050601','黑河'),('119','101050602','嫩江'),('120','101050603','孙吴'),('121','101050604','逊克'),('122','101050605','五大连池'),('123','101050606','北安'),('124','101050701','大兴安岭'),('125','101050702','塔河'),('126','101050703','漠河'),('127','101050704','呼玛'),('128','101050801','伊春'),('129','101050804','铁力'),('130','101050805','嘉荫'),('131','101050901','大庆'),('132','101050902','林甸'),('133','101050903','肇州'),('134','101050904','肇源'),('135','101050905','杜蒙'),('136','101051002','七台河'),('137','101051003','勃利'),('138','101051101','鸡西'),('139','101051102','虎林'),('140','101051103','密山'),('141','101051104','鸡东'),('142','101051201','鹤岗'),('143','101051202','绥滨'),('144','101051203','萝北'),('145','101051301','双鸭山'),('146','101051302','集贤'),('147','101051303','宝清'),('148','101051304','饶河'),('149','101051305','友谊'),('150','101060101','长春'),('151','101060102','农安'),('152','101060103','德惠'),('153','101060104','九台'),('154','101060105','榆树'),('155','101060201','吉林'),('156','101060202','舒兰'),('157','101060203','永吉'),('158','101060204','蛟河'),('159','101060205','磐石'),('160','101060206','桦甸'),('161','101060302','敦化'),('162','101060303','安图'),('163','101060304','汪清'),('164','101060305','和龙'),('165','101060307','龙井'),('166','101060308','珲春'),('167','101060309','图们'),('168','101060312','延吉'),('169','101060401','四平'),('170','101060402','双辽'),('171','101060403','梨树'),('172','101060404','公主岭'),('173','101060405','伊通'),('174','101060501','通化'),('175','101060502','梅河口'),('176','101060503','柳河'),('177','101060504','辉南'),('178','101060505','集安'),('179','101060601','白城'),('180','101060602','洮南'),('181','101060603','大安'),('182','101060604','镇赉'),('183','101060605','通榆'),('184','101060701','辽源');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('185','101060702','东丰');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('186','101060703','东辽'),('187','101060801','松原'),('188','101060802','乾安'),('189','101060803','前郭'),('190','101060804','长岭'),('191','101060805','扶余'),('192','101060901','白山'),('193','101060902','靖宇'),('194','101060903','临江'),('195','101060905','长白'),('196','101060906','抚松'),('197','101060907','江源'),('198','101070101','沈阳'),('199','101070103','辽中'),('200','101070104','康平'),('201','101070105','法库'),('202','101070106','新民'),('203','101070201','大连'),('204','101070202','瓦房店'),('205','101070204','普兰店'),('206','101070206','长海'),('207','101070207','庄河'),('208','101070301','鞍山'),('209','101070302','台安'),('210','101070303','岫岩'),('211','101070304','海城'),('212','101070401','抚顺'),('213','101070402','新宾'),('214','101070403','清原'),('215','101070501','本溪'),('216','101070504','桓仁'),('217','101070601','丹东'),('218','101070602','凤城'),('219','101070603','宽甸'),('220','101070604','东港'),('221','101070701','锦州'),('222','101070702','凌海'),('223','101070704','义县'),('224','101070705','黑山'),('225','101070706','北镇'),('226','101070801','营口'),('227','101070802','大石桥'),('228','101070803','盖州'),('229','101070901','阜新'),('230','101070902','彰武'),('231','101071001','辽阳'),('232','101071003','灯塔'),('233','101071004','弓长岭'),('234','101071101','铁岭'),('235','101071102','开原'),('236','101071103','昌图'),('237','101071104','西丰'),('238','101071105','调兵山'),('239','101071201','朝阳'),('240','101071203','凌源'),('241','101071204','喀左'),('242','101071205','北票'),('243','101071207','建平'),('244','101071301','盘锦'),('245','101071302','大洼'),('246','101071303','盘山'),('247','101071401','葫芦岛'),('248','101071402','建昌'),('249','101071403','绥中'),('250','101071404','兴城'),('251','101080101','呼和浩特'),('252','101080102','土左'),('253','101080103','托克托'),('254','101080104','和林格尔'),('255','101080105','清水河'),('256','101080107','武川'),('257','101080201','包头'),('258','101080202','白云鄂博'),('259','101080204','土右'),('260','101080205','固阳'),('261','101080206','达茂'),('262','101080301','乌海'),('263','101080401','乌兰察布'),('264','101080402','卓资'),('265','101080403','化德'),('266','101080404','商都'),('267','101080406','兴和'),('268','101080407','凉城'),('269','101080408','察右前'),('270','101080409','察右中'),('271','101080410','察右后'),('272','101080411','四子王'),('273','101080412','丰镇'),('274','101080501','通辽'),('275','101080503','科左中'),('276','101080504','科左后'),('277','101080506','开鲁'),('278','101080507','库伦'),('279','101080508','奈曼'),('280','101080509','扎鲁特'),('281','101080601','赤峰'),('282','101080603','阿鲁'),('283','101080605','巴林左'),('284','101080606','巴林右'),('285','101080607','林西'),('286','101080608','克什'),('287','101080609','翁牛特'),('288','101080611','喀喇沁'),('289','101080613','宁城'),('290','101080614','敖汉'),('291','101080701','鄂尔多斯'),('292','101080703','达拉特'),('293','101080704','准格尔'),('294','101080706','河南'),('295','101080708','鄂托克'),('296','101080709','杭锦'),('297','101080710','乌审'),('298','101080711','伊金霍洛'),('299','101080801','巴彦淖尔'),('300','101080802','五原'),('301','101080803','磴口'),('302','101080804','乌前'),('303','101080806','乌中'),('304','101080807','乌后'),('305','101080810','杭锦后'),('306','101080901','锡林浩特'),('307','101080903','二连浩特'),('308','101080904','阿巴嘎'),('309','101080906','苏左'),('310','101080907','苏右'),('311','101080909','东乌'),('312','101080910','西乌'),('313','101080911','太仆寺'),('314','101080912','镶黄'),('315','101080913','正镶白'),('316','101080914','正蓝'),('317','101080915','多伦'),('318','101081000','呼伦贝尔'),('319','101081001','海拉尔'),('320','101081003','阿荣'),('321','101081004','莫力达瓦'),('322','101081005','鄂伦春'),('323','101081006','鄂温克'),('324','101081007','陈巴尔虎'),('325','101081008','新左'),('326','101081009','新右'),('327','101081010','满洲里'),('328','101081011','牙克石'),('329','101081012','扎兰屯'),('330','101081014','额尔古纳'),('331','101081015','根河'),('332','101081101','乌兰浩特'),('333','101081102','阿尔山'),('334','101081103','科右中'),('335','101081105','扎赉特'),('336','101081107','突泉'),('337','101081108','霍林郭勒'),('338','101081109','科右前'),('339','101081201','阿拉善'),('340','101081202','阿右'),('341','101081203','额济纳'),('342','101090101','石家庄'),('343','101090102','井陉'),('344','101090103','正定'),('345','101090104','栾城'),('346','101090105','行唐'),('347','101090106','灵寿'),('348','101090107','高邑'),('349','101090108','深泽'),('350','101090109','赞皇'),('351','101090110','无极'),('352','101090111','平山'),('353','101090112','元氏'),('354','101090113','赵县'),('355','101090114','辛集'),('356','101090115','藁城'),('357','101090116','晋州'),('358','101090117','新乐'),('359','101090118','鹿泉'),('360','101090201','保定');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('361','101090202','满城');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('362','101090203','阜平'),('363','101090204','徐水'),('364','101090205','唐县'),('365','101090206','高阳'),('366','101090207','容城'),('367','101090209','涞源'),('368','101090210','望都'),('369','101090211','安新'),('370','101090212','易县'),('371','101090214','曲阳'),('372','101090215','蠡县'),('373','101090216','顺平'),('374','101090217','雄县'),('375','101090218','涿州'),('376','101090219','定州'),('377','101090220','安国'),('378','101090221','高碑店'),('379','101090222','涞水'),('380','101090223','定兴'),('381','101090224','清苑'),('382','101090225','博野'),('383','101090301','张家口'),('384','101090302','宣化'),('385','101090303','张北'),('386','101090304','康保'),('387','101090305','沽源'),('388','101090306','尚义'),('389','101090307','蔚县'),('390','101090308','阳原'),('391','101090309','怀安'),('392','101090310','万全'),('393','101090311','怀来'),('394','101090312','涿鹿'),('395','101090313','赤城'),('396','101090314','崇礼'),('397','101090402','承德'),('398','101090404','兴隆'),('399','101090405','平泉'),('400','101090406','滦平'),('401','101090407','隆化'),('402','101090408','丰宁'),('403','101090409','宽城'),('404','101090410','围场'),('405','101090501','唐山'),('406','101090502','丰南'),('407','101090503','丰润'),('408','101090504','滦县'),('409','101090505','滦南'),('410','101090506','乐亭'),('411','101090507','迁西'),('412','101090508','玉田'),('413','101090509','唐海'),('414','101090510','遵化'),('415','101090511','迁安'),('416','101090512','曹妃甸'),('417','101090601','廊坊'),('418','101090602','固安'),('419','101090603','永清'),('420','101090604','香河'),('421','101090605','大城'),('422','101090606','文安'),('423','101090607','大厂'),('424','101090608','霸州'),('425','101090609','三河'),('426','101090701','沧州'),('427','101090702','青县'),('428','101090703','东光'),('429','101090704','海兴'),('430','101090705','盐山'),('431','101090706','肃宁'),('432','101090707','南皮'),('433','101090708','吴桥'),('434','101090709','献县'),('435','101090710','孟村'),('436','101090711','泊头'),('437','101090712','任丘'),('438','101090713','黄骅'),('439','101090714','河间'),('440','101090716','沧县'),('441','101090801','衡水'),('442','101090802','枣强'),('443','101090803','武邑'),('444','101090804','武强'),('445','101090805','饶阳'),('446','101090806','安平'),('447','101090807','故城'),('448','101090808','景县'),('449','101090809','阜城'),('450','101090810','冀州'),('451','101090811','深州'),('452','101090901','邢台'),('453','101090902','临城'),('454','101090905','柏乡'),('455','101090906','隆尧'),('456','101090907','南和'),('457','101090908','宁晋'),('458','101090909','巨鹿'),('459','101090910','新河'),('460','101090911','广宗'),('461','101090912','平乡'),('462','101090913','威县'),('463','101090914','清河'),('464','101090915','临西'),('465','101090916','南宫'),('466','101090917','沙河'),('467','101090918','任县'),('468','101090919','内丘'),('469','101091001','邯郸'),('470','101091002','峰峰矿'),('471','101091003','临漳'),('472','101091004','成安'),('473','101091005','大名'),('474','101091006','涉县'),('475','101091007','磁县'),('476','101091008','肥乡'),('477','101091009','永年'),('478','101091010','邱县'),('479','101091011','鸡泽'),('480','101091012','广平'),('481','101091013','馆陶'),('482','101091014','魏县'),('483','101091015','曲周'),('484','101091016','武安'),('485','101091101','秦皇岛'),('486','101091102','青龙'),('487','101091103','昌黎'),('488','101091104','抚宁'),('489','101091105','卢龙'),('490','101100101','河北'),('491','101100102','清徐'),('492','101100103','阳曲'),('493','101100104','娄烦'),('494','101100105','古交'),('495','101100201','大同'),('496','101100202','阳高'),('497','101100204','天镇'),('498','101100205','广灵'),('499','101100206','灵丘'),('500','101100207','浑源'),('501','101100208','左云'),('502','101100301','阳泉'),('503','101100302','盂县'),('504','101100303','平定'),('505','101100401','晋中'),('506','101100403','榆社'),('507','101100404','左权'),('508','101100405','和顺'),('509','101100406','昔阳'),('510','101100407','寿阳'),('511','101100408','太谷'),('512','101100409','祁县'),('513','101100410','平遥'),('514','101100411','灵石'),('515','101100412','介休'),('516','101100501','长治'),('517','101100502','黎城'),('518','101100503','屯留'),('519','101100504','潞城'),('520','101100505','襄垣'),('521','101100506','平顺'),('522','101100507','武乡'),('523','101100508','沁县'),('524','101100509','长子'),('525','101100510','沁源'),('526','101100511','壶关'),('527','101100601','晋城'),('528','101100602','沁水'),('529','101100603','阳城'),('530','101100604','陵川'),('531','101100605','高平'),('532','101100606','泽州'),('533','101100701','临汾'),('534','101100702','曲沃'),('535','101100703','永和'),('536','101100704','隰县'),('537','101100705','大宁'),('538','101100706','吉县'),('539','101100707','襄汾'),('540','101100708','蒲县'),('541','101100709','汾西'),('542','101100710','洪洞'),('543','101100711','霍州');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('544','101100712','乡宁');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('545','101100713','翼城'),('546','101100714','侯马'),('547','101100715','浮山'),('548','101100716','安泽'),('549','101100717','古县'),('550','101100801','运城'),('551','101100802','临猗'),('552','101100803','稷山'),('553','101100804','万荣'),('554','101100805','河津'),('555','101100806','新绛'),('556','101100807','绛县'),('557','101100808','闻喜'),('558','101100809','垣曲'),('559','101100810','永济'),('560','101100811','芮城'),('561','101100812','夏县'),('562','101100813','平陆'),('563','101100901','朔州'),('564','101100903','山阴'),('565','101100904','右玉'),('566','101100905','应县'),('567','101100906','怀仁'),('568','101101001','忻州'),('569','101101002','定襄'),('570','101101003','五台'),('571','101101004','河曲'),('572','101101005','偏关'),('573','101101006','神池'),('574','101101007','宁武'),('575','101101008','代县'),('576','101101009','繁峙'),('577','101101011','保德'),('578','101101012','静乐'),('579','101101013','岢岚'),('580','101101014','五寨'),('581','101101015','原平'),('582','101101100','吕梁'),('583','101101101','离石'),('584','101101102','临县'),('585','101101103','兴县'),('586','101101104','岚县'),('587','101101105','柳林'),('588','101101106','石楼'),('589','101101107','方山'),('590','101101108','交口'),('591','101101109','中阳'),('592','101101110','孝义'),('593','101101111','汾阳'),('594','101101112','文水'),('595','101101113','交城'),('596','101110101','西安'),('597','101110102','长安'),('598','101110104','蓝田'),('599','101110105','周至'),('600','101110106','户县'),('601','101110107','高陵'),('602','101110200','咸阳'),('603','101110201','三原'),('604','101110202','礼泉'),('605','101110203','永寿'),('606','101110204','淳化'),('607','101110205','泾阳'),('608','101110206','武功'),('609','101110207','乾县'),('610','101110208','彬县'),('611','101110209','长武'),('612','101110210','旬邑'),('613','101110211','兴平'),('614','101110300','延安'),('615','101110401','榆林'),('616','101110402','府谷'),('617','101110403','神木'),('618','101110404','佳县'),('619','101110405','定边'),('620','101110406','靖边'),('621','101110407','横山'),('622','101110408','米脂'),('623','101110409','子洲'),('624','101110410','绥德'),('625','101110411','吴堡'),('626','101110412','清涧'),('627','101110501','渭南'),('628','101110502','华县'),('629','101110503','潼关'),('630','101110504','大荔'),('631','101110505','白水'),('632','101110506','富平'),('633','101110507','蒲城'),('634','101110508','澄城'),('635','101110509','合阳'),('636','101110510','韩城'),('637','101110511','华阴'),('638','101110601','商洛'),('639','101110602','洛南'),('640','101110603','柞水'),('641','101110604','商州'),('642','101110605','镇安'),('643','101110606','丹凤'),('644','101110607','商南'),('645','101110608','山阳'),('646','101110701','安康'),('647','101110702','紫阳'),('648','101110703','石泉'),('649','101110704','汉阴'),('650','101110705','旬阳'),('651','101110706','岚皋'),('652','101110707','平利'),('653','101110708','白河'),('654','101110709','镇坪'),('655','101110710','宁陕'),('656','101110801','汉中'),('657','101110802','略阳'),('658','101110803','勉县'),('659','101110804','留坝'),('660','101110805','洋县'),('661','101110806','城固'),('662','101110807','西乡'),('663','101110808','佛坪'),('664','101110809','宁强'),('665','101110810','南郑'),('666','101110811','镇巴'),('667','101110901','宝鸡'),('668','101110903','千阳'),('669','101110904','麟游'),('670','101110905','岐山'),('671','101110906','凤翔'),('672','101110907','扶风'),('673','101110908','眉县'),('674','101110909','太白'),('675','101110910','凤县'),('676','101110911','陇县'),('677','101111001','铜川'),('678','101111003','宜君'),('679','101111101','杨凌'),('680','101120101','济南'),('681','101120103','商河'),('682','101120104','章丘'),('683','101120105','平阴'),('684','101120106','济阳'),('685','101120201','青岛'),('686','101120204','即墨'),('687','101120205','胶州'),('688','101120206','胶南'),('689','101120207','莱西'),('690','101120208','平度'),('691','101120301','淄博'),('692','101120304','高青'),('693','101120306','沂源'),('694','101120307','桓台'),('695','101120401','德州'),('696','101120402','武城'),('697','101120403','临邑'),('698','101120404','陵县'),('699','101120405','齐河'),('700','101120406','乐陵'),('701','101120407','庆云'),('702','101120408','平原'),('703','101120409','宁津'),('704','101120410','夏津'),('705','101120411','禹城'),('706','101120501','烟台'),('707','101120502','莱州'),('708','101120503','长岛'),('709','101120504','蓬莱'),('710','101120505','龙口'),('711','101120506','招远'),('712','101120507','栖霞'),('713','101120510','莱阳'),('714','101120511','海阳'),('715','101120601','潍坊'),('716','101120602','青州'),('717','101120603','寿光'),('718','101120604','临朐'),('719','101120605','昌乐'),('720','101120606','昌邑'),('721','101120607','安丘'),('722','101120608','高密'),('723','101120609','诸城'),('724','101120701','济宁'),('725','101120702','嘉祥'),('726','101120703','微山');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('727','101120704','鱼台');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('728','101120705','兖州'),('729','101120706','金乡'),('730','101120707','汶上'),('731','101120708','泗水'),('732','101120709','梁山'),('733','101120710','曲阜'),('734','101120711','邹城'),('735','101120801','泰安'),('736','101120802','新泰'),('737','101120804','肥城'),('738','101120805','东平'),('739','101120806','宁阳'),('740','101120901','临沂'),('741','101120902','莒南'),('742','101120903','沂南'),('743','101120904','苍山'),('744','101120905','临沭'),('745','101120906','郯城'),('746','101120907','蒙阴'),('747','101120908','平邑'),('748','101120909','费县'),('749','101120910','沂水'),('750','101121001','菏泽'),('751','101121002','鄄城'),('752','101121003','郓城'),('753','101121004','东明'),('754','101121005','定陶'),('755','101121006','巨野'),('756','101121007','曹县'),('757','101121008','成武'),('758','101121009','单县'),('759','101121101','滨州'),('760','101121102','博兴'),('761','101121103','无棣'),('762','101121104','阳信'),('763','101121105','惠民'),('764','101121106','沾化'),('765','101121107','邹平'),('766','101121201','东营'),('767','101121203','垦利'),('768','101121204','利津'),('769','101121205','广饶'),('770','101121301','威海'),('771','101121302','文登'),('772','101121303','荣成'),('773','101121304','乳山'),('774','101121401','枣庄'),('775','101121405','滕州'),('776','101121501','日照'),('777','101121502','五莲'),('778','101121503','莒县'),('779','101121601','莱芜'),('780','101121701','聊城'),('781','101121702','冠县'),('782','101121703','阳谷'),('783','101121704','高唐'),('784','101121705','茌平'),('785','101121706','东阿'),('786','101121707','临清'),('787','101121709','莘县'),('788','101130101','乌鲁木齐'),('789','101130105','达坂城'),('790','101130201','克拉玛依'),('791','101130202','乌尔禾'),('792','101130203','白碱滩'),('793','101130301','石河子'),('794','101130401','昌吉'),('795','101130402','呼图壁'),('796','101130403','米泉'),('797','101130404','阜康'),('798','101130405','吉木萨尔'),('799','101130406','奇台'),('800','101130407','玛纳斯'),('801','101130408','木垒'),('802','101130501','吐鲁番'),('803','101130503','克州'),('804','101130504','鄯善'),('805','101130601','库尔勒'),('806','101130602','轮台'),('807','101130603','尉犁'),('808','101130604','若羌'),('809','101130605','且末'),('810','101130606','和静'),('811','101130607','焉耆'),('812','101130608','和硕'),('813','101130612','博湖'),('814','101130701','阿拉尔'),('815','101130801','阿克苏'),('816','101130802','乌什'),('817','101130803','温宿'),('818','101130804','拜城'),('819','101130805','新和'),('820','101130806','沙雅'),('821','101130807','库车'),('822','101130808','柯坪'),('823','101130809','阿瓦提'),('824','101130901','喀什'),('825','101130902','英吉沙'),('826','101130903','塔什库尔干'),('827','101130904','麦盖提'),('828','101130905','莎车'),('829','101130906','叶城'),('830','101130907','泽普'),('831','101130908','巴楚'),('832','101130909','岳普湖'),('833','101130910','伽师'),('834','101130911','疏附'),('835','101130912','疏勒'),('836','101131001','伊宁'),('837','101131002','察布查尔'),('838','101131003','尼勒克'),('839','101131005','巩留'),('840','101131006','新源'),('841','101131007','昭苏'),('842','101131008','特克斯'),('843','101131009','霍城'),('844','101131011','奎屯'),('845','101131101','塔城'),('846','101131102','裕民'),('847','101131103','额敏'),('848','101131104','和布克赛尔'),('849','101131105','托里'),('850','101131106','乌苏'),('851','101131107','沙湾'),('852','101131201','哈密'),('853','101131203','巴里坤'),('854','101131204','伊吾'),('855','101131301','和田'),('856','101131302','皮山'),('857','101131303','策勒'),('858','101131304','墨玉'),('859','101131305','洛浦'),('860','101131306','民丰'),('861','101131307','于田'),('862','101131401','阿勒泰'),('863','101131402','哈巴河'),('864','101131405','吉木乃'),('865','101131406','布尔津'),('866','101131407','福海'),('867','101131408','富蕴'),('868','101131409','青河'),('869','101131501','阿图什'),('870','101131502','乌恰'),('871','101131503','阿克陶'),('872','101131504','阿合奇'),('873','101131601','博乐'),('874','101131602','温泉'),('875','101131603','精河'),('876','101140101','拉萨'),('877','101140102','当雄'),('878','101140103','尼木'),('879','101140104','林周'),('880','101140105','堆龙德庆'),('881','101140106','曲水'),('882','101140107','达孜'),('883','101140108','墨竹工卡'),('884','101140201','日喀则'),('885','101140202','拉孜'),('886','101140204','聂拉木'),('887','101140205','定日'),('888','101140206','江孜'),('889','101140208','仲巴'),('890','101140209','萨嘎'),('891','101140210','吉隆'),('892','101140211','昂仁'),('893','101140212','定结'),('894','101140213','萨迦'),('895','101140214','谢通门'),('896','101140215','楠木林'),('897','101140216','岗巴'),('898','101140217','白朗'),('899','101140218','亚东'),('900','101140219','康马'),('901','101140220','仁布'),('902','101140301','山南'),('903','101140302','贡嘎'),('904','101140303','札囊');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('905','101140304','加查');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('906','101140305','浪卡子'),('907','101140306','错那'),('908','101140307','隆子'),('909','101140309','乃东'),('910','101140310','桑日'),('911','101140311','洛扎'),('912','101140312','措美'),('913','101140313','琼结'),('914','101140314','曲松'),('915','101140401','林芝'),('916','101140402','波密'),('917','101140403','米林'),('918','101140404','察隅'),('919','101140405','工布江达'),('920','101140406','朗县'),('921','101140407','墨脱'),('922','101140501','昌都'),('923','101140502','丁青'),('924','101140503','边坝'),('925','101140504','洛隆'),('926','101140505','左贡'),('927','101140506','芒康'),('928','101140507','类乌齐'),('929','101140508','八宿'),('930','101140509','江达'),('931','101140510','察雅'),('932','101140511','贡觉'),('933','101140601','那曲'),('934','101140602','尼玛'),('935','101140603','嘉黎'),('936','101140604','班戈'),('937','101140605','安多'),('938','101140606','索县'),('939','101140607','聂荣'),('940','101140608','巴青'),('941','101140609','比如'),('942','101140610','双湖'),('943','101140701','阿里'),('944','101140702','改则'),('945','101140703','申扎'),('946','101140705','普兰'),('947','101140706','札达'),('948','101140707','噶尔'),('949','101140708','日土'),('950','101140709','革吉'),('951','101140710','措勤'),('952','101150101','西宁'),('953','101150102','大通'),('954','101150103','湟源'),('955','101150104','湟中'),('956','101150201','海东'),('957','101150202','乐都'),('958','101150203','民和'),('959','101150204','互助'),('960','101150205','化隆'),('961','101150206','循化'),('962','101150208','平安'),('963','101150301','黄南'),('964','101150302','尖扎'),('965','101150303','泽库'),('966','101150305','同仁'),('967','101150401','海南'),('968','101150404','贵德'),('969','101150406','兴海'),('970','101150407','贵南'),('971','101150408','同德'),('972','101150409','共和'),('973','101150501','果洛'),('974','101150502','班玛'),('975','101150503','甘德'),('976','101150504','达日'),('977','101150505','久治'),('978','101150506','玛多'),('979','101150508','玛沁'),('980','101150601','玉树'),('981','101150602','称多'),('982','101150603','治多'),('983','101150604','杂多'),('984','101150605','囊谦'),('985','101150606','曲麻莱'),('986','101150701','海西'),('987','101150708','天峻'),('988','101150709','乌兰'),('989','101150716','德令哈'),('990','101150801','海北'),('991','101150802','门源'),('992','101150803','祁连'),('993','101150804','海晏'),('994','101150806','刚察'),('995','101150901','格尔木'),('996','101150902','都兰'),('997','101160101','兰州'),('998','101160102','皋兰'),('999','101160103','永登'),('1000','101160104','榆中'),('1001','101160201','定西'),('1002','101160202','通渭'),('1003','101160203','陇西'),('1004','101160204','渭源'),('1005','101160205','临洮'),('1006','101160206','漳县'),('1007','101160207','岷县'),('1008','101160301','平凉'),('1009','101160302','泾川'),('1010','101160303','灵台'),('1011','101160304','崇信'),('1012','101160305','华亭'),('1013','101160306','庄浪'),('1014','101160307','静宁'),('1015','101160401','庆阳'),('1016','101160402','西峰'),('1017','101160403','环县'),('1018','101160404','华池'),('1019','101160405','合水'),('1020','101160406','正宁'),('1021','101160407','宁县'),('1022','101160408','镇原'),('1023','101160409','庆城'),('1024','101160501','武威'),('1025','101160502','民勤'),('1026','101160503','古浪'),('1027','101160505','天祝'),('1028','101160601','金昌'),('1029','101160602','永昌'),('1030','101160701','张掖'),('1031','101160702','肃南'),('1032','101160703','民乐'),('1033','101160704','临泽'),('1034','101160705','高台'),('1035','101160706','山丹'),('1036','101160801','酒泉'),('1037','101160803','金塔'),('1038','101160804','阿克塞'),('1039','101160805','瓜州'),('1040','101160806','肃北'),('1041','101160807','玉门'),('1042','101160808','敦煌'),('1043','101160901','天水'),('1044','101160903','清水'),('1045','101160904','秦安'),('1046','101160905','甘谷'),('1047','101160906','武山'),('1048','101160907','张家川'),('1049','101161001','陇南'),('1050','101161002','成县'),('1051','101161003','文县'),('1052','101161004','宕昌'),('1053','101161005','康县'),('1054','101161006','西和'),('1055','101161007','礼县'),('1056','101161008','徽县'),('1057','101161009','两当'),('1058','101161101','临夏'),('1059','101161102','康乐'),('1060','101161103','永靖'),('1061','101161104','广河'),('1062','101161105','和政'),('1063','101161107','积石山'),('1064','101161201','合作'),('1065','101161202','临潭'),('1066','101161203','卓尼'),('1067','101161204','舟曲'),('1068','101161205','迭部'),('1069','101161206','玛曲'),('1070','101161207','碌曲'),('1071','101161208','夏河'),('1072','101161301','白银'),('1073','101161302','靖远'),('1074','101161303','会宁'),('1075','101161304','平川'),('1076','101161305','景泰'),('1077','101161401','嘉峪关'),('1078','101170101','银川'),('1079','101170102','永宁'),('1080','101170103','灵武'),('1081','101170104','贺兰'),('1082','101170201','石嘴山'),('1083','101170203','平罗');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1084','101170301','吴忠');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1085','101170302','同心'),('1086','101170303','盐池'),('1087','101170306','青铜峡'),('1088','101170401','固原'),('1089','101170402','西吉'),('1090','101170403','隆德'),('1091','101170404','泾源'),('1092','101170406','彭阳'),('1093','101170501','中卫'),('1094','101170502','中宁'),('1095','101170504','海原'),('1096','101180101','郑州'),('1097','101180102','巩义'),('1098','101180103','荥阳'),('1099','101180104','登封'),('1100','101180105','新密'),('1101','101180106','新郑'),('1102','101180107','中牟'),('1103','101180108','上街'),('1104','101180201','安阳'),('1105','101180202','汤阴'),('1106','101180203','滑县'),('1107','101180204','内黄'),('1108','101180205','林州'),('1109','101180301','新乡'),('1110','101180302','获嘉'),('1111','101180303','原阳'),('1112','101180304','辉县'),('1113','101180305','卫辉'),('1114','101180306','延津'),('1115','101180307','封丘'),('1116','101180308','长垣'),('1117','101180401','许昌'),('1118','101180402','鄢陵'),('1119','101180403','襄城'),('1120','101180404','长葛'),('1121','101180405','禹州'),('1122','101180501','平顶山'),('1123','101180502','郏县'),('1124','101180503','宝丰'),('1125','101180504','汝州'),('1126','101180505','叶县'),('1127','101180506','舞钢'),('1128','101180507','鲁山'),('1129','101180508','石龙'),('1130','101180601','信阳'),('1131','101180602','息县'),('1132','101180603','罗山'),('1133','101180604','光山'),('1134','101180605','新县'),('1135','101180606','淮滨'),('1136','101180607','潢川'),('1137','101180608','固始'),('1138','101180609','商城'),('1139','101180701','南阳'),('1140','101180702','南召'),('1141','101180703','方城'),('1142','101180704','社旗'),('1143','101180705','西峡'),('1144','101180706','内乡'),('1145','101180707','镇平'),('1146','101180708','淅川'),('1147','101180709','新野'),('1148','101180710','唐河'),('1149','101180711','邓州'),('1150','101180712','桐柏'),('1151','101180801','开封'),('1152','101180802','杞县'),('1153','101180803','尉氏'),('1154','101180804','通许'),('1155','101180805','兰考'),('1156','101180901','洛阳'),('1157','101180902','新安'),('1158','101180903','孟津'),('1159','101180904','宜阳'),('1160','101180905','洛宁'),('1161','101180906','伊川'),('1162','101180907','嵩县'),('1163','101180908','偃师'),('1164','101180909','栾川'),('1165','101180910','汝阳'),('1166','101180911','吉利'),('1167','101181001','商丘'),('1168','101181003','睢县'),('1169','101181004','民权'),('1170','101181005','虞城'),('1171','101181006','柘城'),('1172','101181007','宁陵'),('1173','101181008','夏邑'),('1174','101181009','永城'),('1175','101181101','焦作'),('1176','101181102','修武'),('1177','101181103','武陟'),('1178','101181104','沁阳'),('1179','101181106','博爱'),('1180','101181107','温县'),('1181','101181108','孟州'),('1182','101181201','鹤壁'),('1183','101181202','浚县'),('1184','101181203','淇县'),('1185','101181301','濮阳'),('1186','101181302','台前'),('1187','101181303','南乐'),('1188','101181304','清丰'),('1189','101181305','范县'),('1190','101181401','周口'),('1191','101181402','扶沟'),('1192','101181403','太康'),('1193','101181404','淮阳'),('1194','101181405','西华'),('1195','101181406','商水'),('1196','101181407','项城'),('1197','101181408','郸城'),('1198','101181409','鹿邑'),('1199','101181410','沈丘'),('1200','101181501','漯河'),('1201','101181502','临颍'),('1202','101181503','舞阳'),('1203','101181504','临颖'),('1204','101181601','驻马店'),('1205','101181602','西平'),('1206','101181603','遂平'),('1207','101181604','上蔡'),('1208','101181605','汝南'),('1209','101181606','泌阳'),('1210','101181607','平舆'),('1211','101181608','新蔡'),('1212','101181609','确山'),('1213','101181610','正阳'),('1214','101181701','三门峡'),('1215','101181702','灵宝'),('1216','101181703','渑池'),('1217','101181704','卢氏'),('1218','101181705','义马'),('1219','101181706','陕县'),('1220','101181801','济源'),('1221','101190101','南京'),('1222','101190102','溧水'),('1223','101190103','高淳'),('1224','101190104','江宁'),('1225','101190105','六合'),('1226','101190107','浦口'),('1227','101190201','无锡'),('1228','101190202','江阴'),('1229','101190203','宜兴'),('1230','101190204','锡山'),('1231','101190301','镇江'),('1232','101190302','丹阳'),('1233','101190303','扬中'),('1234','101190304','句容'),('1235','101190305','丹徒'),('1236','101190401','苏州'),('1237','101190402','常熟'),('1238','101190403','张家港'),('1239','101190404','昆山'),('1240','101190405','吴中'),('1241','101190407','吴江'),('1242','101190408','太仓'),('1243','101190501','南通'),('1244','101190502','海安'),('1245','101190503','如皋'),('1246','101190504','如东'),('1247','101190507','启东'),('1248','101190508','海门'),('1249','101190601','扬州'),('1250','101190602','宝应'),('1251','101190603','仪征'),('1252','101190604','高邮'),('1253','101190605','江都'),('1254','101190606','邗江'),('1255','101190701','盐城'),('1256','101190702','响水'),('1257','101190703','滨海'),('1258','101190704','阜宁'),('1259','101190705','射阳'),('1260','101190706','建湖');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1261','101190707','东台');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1262','101190708','大丰'),('1263','101190709','盐都'),('1264','101190801','徐州'),('1265','101190802','铜山'),('1266','101190803','丰县'),('1267','101190804','沛县'),('1268','101190805','邳州'),('1269','101190806','睢宁'),('1270','101190807','新沂'),('1271','101190901','淮安'),('1272','101190902','金湖'),('1273','101190903','盱眙'),('1274','101190904','洪泽'),('1275','101190905','涟水'),('1276','101191001','连云港'),('1277','101191002','东海'),('1278','101191003','赣榆'),('1279','101191004','灌云'),('1280','101191005','灌南'),('1281','101191101','常州'),('1282','101191102','溧阳'),('1283','101191103','金坛'),('1284','101191104','武进'),('1285','101191201','泰州'),('1286','101191202','兴化'),('1287','101191203','泰兴'),('1288','101191204','姜堰'),('1289','101191205','靖江'),('1290','101191301','宿迁'),('1291','101191302','沭阳'),('1292','101191303','泗阳'),('1293','101191304','泗洪'),('1294','101191305','宿豫'),('1295','101200101','武汉'),('1296','101200102','蔡甸'),('1297','101200103','黄陂'),('1298','101200104','新洲'),('1299','101200105','江夏'),('1300','101200106','东西湖'),('1301','101200201','襄阳'),('1302','101200202','襄州'),('1303','101200203','保康'),('1304','101200204','南漳'),('1305','101200205','宜城'),('1306','101200206','老河口'),('1307','101200207','谷城'),('1308','101200208','枣阳'),('1309','101200301','鄂州'),('1310','101200302','梁子湖'),('1311','101200401','孝感'),('1312','101200402','安陆'),('1313','101200403','微5214'),('1314','101200404','大悟'),('1315','101200405','应城'),('1316','101200406','汉川'),('1317','101200407','孝昌'),('1318','101200501','黄冈'),('1319','101200502','红安'),('1320','101200503','麻城'),('1321','101200504','罗田'),('1322','101200505','英山'),('1323','101200506','浠水'),('1324','101200507','蕲春'),('1325','101200508','黄梅'),('1326','101200509','武穴'),('1327','101200510','团风'),('1328','101200601','黄石'),('1329','101200602','大冶'),('1330','101200603','阳新'),('1331','101200604','铁山'),('1332','101200605','下陆'),('1333','101200606','西塞山'),('1334','101200701','咸宁'),('1335','101200702','赤壁'),('1336','101200703','嘉鱼'),('1337','101200704','崇阳'),('1338','101200705','通城'),('1339','101200706','通山'),('1340','101200801','荆州'),('1341','101200802','江陵'),('1342','101200803','公安'),('1343','101200804','石首'),('1344','101200805','监利'),('1345','101200806','洪湖'),('1346','101200807','松滋'),('1347','101200901','宜昌'),('1348','101200902','远安'),('1349','101200903','秭归'),('1350','101200904','兴山'),('1351','101200906','五峰'),('1352','101200907','当阳'),('1353','101200908','长阳'),('1354','101200909','宜都'),('1355','101200910','枝江'),('1356','101201001','恩施'),('1357','101201002','利川'),('1358','101201003','建始'),('1359','101201004','咸丰'),('1360','101201005','宣恩'),('1361','101201006','鹤峰'),('1362','101201007','来凤'),('1363','101201008','巴东'),('1364','101201101','十堰'),('1365','101201102','竹溪'),('1366','101201103','郧西'),('1367','101201104','郧县'),('1368','101201105','竹山'),('1369','101201106','房县'),('1370','101201107','丹江口'),('1371','101201108','茅箭'),('1372','101201109','张湾'),('1373','101201201','神农架'),('1374','101201301','随州'),('1375','101201302','广水'),('1376','101201401','荆门'),('1377','101201402','钟祥'),('1378','101201403','京山'),('1379','101201404','掇刀'),('1380','101201405','沙洋'),('1381','101201406','沙市'),('1382','101201501','天门'),('1383','101201601','仙桃'),('1384','101201701','潜江'),('1385','101210101','杭州'),('1386','101210102','萧山'),('1387','101210103','桐庐'),('1388','101210104','淳安'),('1389','101210105','建德'),('1390','101210106','余杭'),('1391','101210107','临安'),('1392','101210108','富阳'),('1393','101210201','湖州'),('1394','101210202','长兴'),('1395','101210203','安吉'),('1396','101210204','德清'),('1397','101210301','嘉兴'),('1398','101210302','嘉善'),('1399','101210303','海宁'),('1400','101210304','桐乡'),('1401','101210305','平湖'),('1402','101210306','海盐'),('1403','101210401','宁波'),('1404','101210403','慈溪'),('1405','101210404','余姚'),('1406','101210405','奉化'),('1407','101210406','象山'),('1408','101210408','宁海'),('1409','101210410','北仑'),('1410','101210411','鄞州'),('1411','101210501','绍兴'),('1412','101210502','诸暨'),('1413','101210503','上虞'),('1414','101210504','新昌'),('1415','101210505','嵊州'),('1416','101210601','台州'),('1417','101210603','玉环'),('1418','101210604','三门'),('1419','101210605','天台'),('1420','101210606','仙居'),('1421','101210607','温岭'),('1422','101210610','临海'),('1423','101210701','温州'),('1424','101210702','泰顺'),('1425','101210703','文成'),('1426','101210704','平阳'),('1427','101210705','瑞安'),('1428','101210706','洞头'),('1429','101210707','乐清'),('1430','101210708','永嘉'),('1431','101210709','苍南'),('1432','101210801','丽水'),('1433','101210802','遂昌'),('1434','101210803','龙泉'),('1435','101210804','缙云'),('1436','101210805','青田');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1437','101210806','云和');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1438','101210807','庆元'),('1439','101210808','松阳'),('1440','101210809','景宁'),('1441','101210901','金华'),('1442','101210902','浦江'),('1443','101210903','兰溪'),('1444','101210904','义乌'),('1445','101210905','东阳'),('1446','101210906','武义'),('1447','101210907','永康'),('1448','101210908','磐安'),('1449','101211001','衢州'),('1450','101211002','常山'),('1451','101211003','开化'),('1452','101211004','龙游'),('1453','101211005','江山'),('1454','101211101','舟山'),('1455','101211102','嵊泗'),('1456','101211104','岱山'),('1457','101220101','合肥'),('1458','101220102','长丰'),('1459','101220103','肥东'),('1460','101220104','肥西'),('1461','101220201','蚌埠'),('1462','101220202','怀远'),('1463','101220203','固镇'),('1464','101220204','五河'),('1465','101220301','芜湖'),('1466','101220302','繁昌'),('1467','101220304','南陵'),('1468','101220401','淮南'),('1469','101220402','凤台'),('1470','101220403','潘集'),('1471','101220501','马鞍山'),('1472','101220502','当涂'),('1473','101220601','安庆'),('1474','101220602','枞阳'),('1475','101220603','太湖'),('1476','101220604','潜山'),('1477','101220605','怀宁'),('1478','101220606','宿松'),('1479','101220607','望江'),('1480','101220608','岳西'),('1481','101220609','桐城'),('1482','101220701','宿州'),('1483','101220702','砀山'),('1484','101220703','灵璧'),('1485','101220704','泗县'),('1486','101220705','萧县'),('1487','101220801','阜阳'),('1488','101220802','阜南'),('1489','101220803','颍上'),('1490','101220804','临泉'),('1491','101220805','界首'),('1492','101220806','太和'),('1493','101220901','亳州'),('1494','101220902','涡阳'),('1495','101220903','利辛'),('1496','101220904','蒙城'),('1497','101221001','黄山'),('1498','101221004','祁门'),('1499','101221005','黟县'),('1500','101221006','歙县'),('1501','101221007','休宁'),('1502','101221101','滁州'),('1503','101221102','凤阳'),('1504','101221103','明光'),('1505','101221104','定远'),('1506','101221105','全椒'),('1507','101221106','来安'),('1508','101221107','天长'),('1509','101221201','淮北'),('1510','101221202','濉溪'),('1511','101221301','铜陵'),('1512','101221401','宣城'),('1513','101221402','泾县'),('1514','101221403','旌德'),('1515','101221404','宁国'),('1516','101221405','绩溪'),('1517','101221406','广德'),('1518','101221407','郎溪'),('1519','101221501','六安'),('1520','101221502','霍邱'),('1521','101221503','寿县'),('1522','101221505','金寨'),('1523','101221506','霍山'),('1524','101221507','舒城'),('1525','101221601','巢湖'),('1526','101221602','庐江'),('1527','101221603','无为'),('1528','101221604','含山'),('1529','101221605','和县'),('1530','101221701','池州'),('1531','101221702','东至'),('1532','101221703','青阳'),('1533','101221705','石台'),('1534','101230101','福州'),('1535','101230102','闽清'),('1536','101230103','闽侯'),('1537','101230104','罗源'),('1538','101230105','连江'),('1539','101230107','永泰'),('1540','101230108','平潭'),('1541','101230110','长乐'),('1542','101230111','福清'),('1543','101230201','厦门'),('1544','101230301','宁德'),('1545','101230302','古田'),('1546','101230303','霞浦'),('1547','101230304','寿宁'),('1548','101230305','周宁'),('1549','101230306','福安'),('1550','101230307','柘荣'),('1551','101230308','福鼎'),('1552','101230309','屏南'),('1553','101230401','莆田'),('1554','101230402','仙游'),('1555','101230404','涵江'),('1556','101230405','秀屿'),('1557','101230406','荔城'),('1558','101230407','城厢'),('1559','101230501','泉州'),('1560','101230502','安溪'),('1561','101230504','永春'),('1562','101230505','德化'),('1563','101230506','南安'),('1564','101230508','惠安'),('1565','101230509','晋江'),('1566','101230510','石狮'),('1567','101230601','漳州'),('1568','101230602','长泰'),('1569','101230603','南靖'),('1570','101230604','平和'),('1571','101230605','龙海'),('1572','101230606','漳浦'),('1573','101230607','诏安'),('1574','101230609','云霄'),('1575','101230610','华安'),('1576','101230701','龙岩'),('1577','101230702','长汀'),('1578','101230703','连城'),('1579','101230704','武平'),('1580','101230705','上杭'),('1581','101230706','永定'),('1582','101230707','漳平'),('1583','101230801','三明'),('1584','101230802','宁化'),('1585','101230803','清流'),('1586','101230804','泰宁'),('1587','101230805','将乐'),('1588','101230806','建宁'),('1589','101230807','明溪'),('1590','101230808','沙县'),('1591','101230809','尤溪'),('1592','101230810','永安'),('1593','101230811','大田'),('1594','101230901','南平'),('1595','101230902','顺昌'),('1596','101230903','光泽'),('1597','101230904','邵武'),('1598','101230905','武夷山'),('1599','101230906','浦城'),('1600','101230907','建阳'),('1601','101230908','松溪'),('1602','101230909','政和'),('1603','101230910','建瓯'),('1604','101231001','钓鱼岛'),('1605','101240101','南昌'),('1606','101240102','新建'),('1607','101240104','安义'),('1608','101240105','进贤'),('1609','101240201','九江'),('1610','101240202','瑞昌'),('1611','101240204','武宁'),('1612','101240205','德安'),('1613','101240206','永修');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1614','101240207','湖口');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1615','101240208','彭泽'),('1616','101240209','星子'),('1617','101240210','都昌'),('1618','101240212','修水'),('1619','101240301','上饶'),('1620','101240302','鄱阳'),('1621','101240303','婺源'),('1622','101240305','余干'),('1623','101240306','万年'),('1624','101240307','德兴'),('1625','101240309','弋阳'),('1626','101240310','横峰'),('1627','101240311','铅山'),('1628','101240312','玉山'),('1629','101240313','广丰'),('1630','101240401','抚州'),('1631','101240402','广昌'),('1632','101240403','乐安'),('1633','101240404','崇仁'),('1634','101240405','金溪'),('1635','101240406','资溪'),('1636','101240407','宜黄'),('1637','101240408','南城'),('1638','101240409','南丰'),('1639','101240410','黎川'),('1640','101240411','东乡'),('1641','101240501','宜春'),('1642','101240502','铜鼓'),('1643','101240503','宜丰'),('1644','101240504','万载'),('1645','101240505','上高'),('1646','101240506','靖安'),('1647','101240507','奉新'),('1648','101240508','高安'),('1649','101240509','樟树'),('1650','101240510','丰城'),('1651','101240601','吉安'),('1652','101240603','吉水'),('1653','101240604','新干'),('1654','101240605','峡江'),('1655','101240606','永丰'),('1656','101240607','永新'),('1657','101240608','井冈山'),('1658','101240609','万安'),('1659','101240610','遂川'),('1660','101240611','泰和'),('1661','101240612','安福'),('1662','101240701','赣州'),('1663','101240702','崇义'),('1664','101240703','上犹'),('1665','101240704','南康'),('1666','101240705','大余'),('1667','101240706','信丰'),('1668','101240707','宁都'),('1669','101240708','石城'),('1670','101240709','瑞金'),('1671','101240710','于都'),('1672','101240711','会昌'),('1673','101240712','安远'),('1674','101240713','全南'),('1675','101240714','龙南'),('1676','101240715','定南'),('1677','101240716','寻乌'),('1678','101240717','兴国'),('1679','101240718','赣县'),('1680','101240801','景德镇'),('1681','101240802','乐平'),('1682','101240803','浮梁'),('1683','101240901','萍乡'),('1684','101240902','莲花'),('1685','101240903','上栗'),('1686','101240905','芦溪'),('1687','101240906','湘东'),('1688','101241001','新余'),('1689','101241002','分宜'),('1690','101241101','鹰潭'),('1691','101241102','余江'),('1692','101241103','贵溪'),('1693','101250101','长沙'),('1694','101250102','宁乡'),('1695','101250103','浏阳'),('1696','101250105','望城'),('1697','101250201','湘潭'),('1698','101250202','韶山'),('1699','101250203','湘乡'),('1700','101250301','株洲'),('1701','101250302','攸县'),('1702','101250303','醴陵'),('1703','101250305','茶陵'),('1704','101250306','炎陵'),('1705','101250401','衡阳'),('1706','101250402','衡山'),('1707','101250403','衡东'),('1708','101250404','祁东'),('1709','101250406','常宁'),('1710','101250407','衡南'),('1711','101250408','耒阳'),('1712','101250501','郴州'),('1713','101250502','桂阳'),('1714','101250503','嘉禾'),('1715','101250504','宜章'),('1716','101250505','临武'),('1717','101250507','资兴'),('1718','101250508','汝城'),('1719','101250509','安仁'),('1720','101250510','永兴'),('1721','101250511','桂东'),('1722','101250512','苏仙'),('1723','101250601','常德'),('1724','101250602','安乡'),('1725','101250603','桃源'),('1726','101250604','汉寿'),('1727','101250605','澧县'),('1728','101250606','临澧'),('1729','101250607','石门'),('1730','101250608','津市'),('1731','101250700','益阳'),('1732','101250702','南县'),('1733','101250703','桃江'),('1734','101250704','安化'),('1735','101250705','沅江'),('1736','101250801','娄底'),('1737','101250802','双峰'),('1738','101250803','冷水江'),('1739','101250805','新化'),('1740','101250806','涟源'),('1741','101250901','邵阳'),('1742','101250902','隆回'),('1743','101250903','洞口'),('1744','101250904','新邵'),('1745','101250905','邵东'),('1746','101250906','绥宁'),('1747','101250907','新宁'),('1748','101250908','武冈'),('1749','101250909','城步'),('1750','101251001','岳阳'),('1751','101251002','华容'),('1752','101251003','湘阴'),('1753','101251004','汨罗'),('1754','101251005','平江'),('1755','101251006','临湘'),('1756','101251101','张家界'),('1757','101251102','桑植'),('1758','101251103','慈利'),('1759','101251104','武陵源'),('1760','101251201','怀化'),('1761','101251203','沅陵'),('1762','101251204','辰溪'),('1763','101251205','靖州'),('1764','101251206','会同'),('1765','101251207','通道'),('1766','101251208','麻阳'),('1767','101251209','新晃'),('1768','101251210','芷江'),('1769','101251211','溆浦'),('1770','101251212','中方'),('1771','101251213','洪江'),('1772','101251401','永州'),('1773','101251402','祁阳'),('1774','101251403','东安'),('1775','101251404','双牌'),('1776','101251405','道县'),('1777','101251406','宁远'),('1778','101251407','江永'),('1779','101251408','蓝山'),('1780','101251409','新田'),('1781','101251410','江华'),('1782','101251501','吉首'),('1783','101251502','保靖'),('1784','101251503','永顺'),('1785','101251504','古丈'),('1786','101251505','凤凰'),('1787','101251506','泸溪'),('1788','101251507','龙山'),('1789','101251508','花垣'),('1790','101260101','贵阳');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1791','101260102','白云');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1792','101260103','花溪'),('1793','101260104','乌当'),('1794','101260105','息烽'),('1795','101260106','开阳'),('1796','101260107','修文'),('1797','101260108','清镇'),('1798','101260109','小河'),('1799','101260110','云岩'),('1800','101260111','南明'),('1801','101260201','遵义'),('1802','101260203','仁怀'),('1803','101260204','绥阳'),('1804','101260205','湄潭'),('1805','101260206','凤冈'),('1806','101260207','桐梓'),('1807','101260208','赤水'),('1808','101260209','习水'),('1809','101260210','道真'),('1810','101260211','正安'),('1811','101260212','务川'),('1812','101260213','余庆'),('1813','101260214','汇川'),('1814','101260215','红花岗'),('1815','101260301','安顺'),('1816','101260302','普定'),('1817','101260303','镇宁'),('1818','101260304','平坝'),('1819','101260305','紫云'),('1820','101260306','关岭'),('1821','101260401','都匀'),('1822','101260402','贵定'),('1823','101260403','瓮安'),('1824','101260404','长顺'),('1825','101260405','福泉'),('1826','101260406','惠水'),('1827','101260407','龙里'),('1828','101260408','罗甸'),('1829','101260409','平塘'),('1830','101260410','独山'),('1831','101260411','三都'),('1832','101260412','荔波'),('1833','101260501','凯里'),('1834','101260502','岑巩'),('1835','101260503','施秉'),('1836','101260504','镇远'),('1837','101260505','黄平'),('1838','101260507','麻江'),('1839','101260508','丹寨'),('1840','101260509','三穗'),('1841','101260510','台江'),('1842','101260511','剑河'),('1843','101260512','雷山'),('1844','101260513','黎平'),('1845','101260514','天柱'),('1846','101260515','锦屏'),('1847','101260516','榕江'),('1848','101260517','从江'),('1849','101260601','铜仁'),('1850','101260602','江口'),('1851','101260603','玉屏'),('1852','101260604','万山特'),('1853','101260605','思南'),('1854','101260607','印江'),('1855','101260608','石阡'),('1856','101260609','沿河'),('1857','101260610','德江'),('1858','101260611','松桃'),('1859','101260701','毕节'),('1860','101260702','赫章'),('1861','101260703','金沙'),('1862','101260704','威宁'),('1863','101260705','大方'),('1864','101260706','纳雍'),('1865','101260707','织金'),('1866','101260708','黔西'),('1867','101260801','水城'),('1868','101260802','六枝特'),('1869','101260804','盘县'),('1870','101260901','兴义'),('1871','101260902','晴隆'),('1872','101260903','兴仁'),('1873','101260904','贞丰'),('1874','101260905','望谟'),('1875','101260907','安龙'),('1876','101260908','册亨'),('1877','101260909','普安'),('1878','101270101','成都'),('1879','101270103','新都'),('1880','101270104','温江'),('1881','101270105','金堂'),('1882','101270106','双流'),('1883','101270107','郫县'),('1884','101270108','大邑'),('1885','101270109','蒲江'),('1886','101270110','新津'),('1887','101270111','都江堰'),('1888','101270112','彭州'),('1889','101270113','邛崃'),('1890','101270114','崇州'),('1891','101270201','攀枝花'),('1892','101270203','米易'),('1893','101270204','盐边'),('1894','101270301','自贡'),('1895','101270302','富顺'),('1896','101270303','荣县'),('1897','101270401','绵阳'),('1898','101270402','三台'),('1899','101270403','盐亭'),('1900','101270404','安县'),('1901','101270405','梓潼'),('1902','101270406','北川'),('1903','101270407','平武'),('1904','101270408','江油'),('1905','101270501','南充'),('1906','101270502','南部'),('1907','101270503','营山'),('1908','101270504','蓬安'),('1909','101270505','仪陇'),('1910','101270506','西充'),('1911','101270507','阆中'),('1912','101270601','达州'),('1913','101270602','宣汉'),('1914','101270603','开江'),('1915','101270604','大竹'),('1916','101270605','渠县'),('1917','101270606','万源'),('1918','101270608','达县'),('1919','101270701','遂宁'),('1920','101270702','蓬溪'),('1921','101270703','射洪'),('1922','101270801','广安'),('1923','101270802','岳池'),('1924','101270803','武胜'),('1925','101270804','邻水'),('1926','101270805','华蓥'),('1927','101270901','巴中'),('1928','101270902','通江'),('1929','101270903','南江'),('1930','101270904','平昌'),('1931','101271001','泸州'),('1932','101271003','泸县'),('1933','101271004','合江'),('1934','101271005','叙永'),('1935','101271006','古蔺'),('1936','101271101','宜宾'),('1937','101271104','南溪'),('1938','101271105','江安'),('1939','101271106','长宁'),('1940','101271107','高县'),('1941','101271108','珙县'),('1942','101271109','筠连'),('1943','101271110','兴文'),('1944','101271111','屏山'),('1945','101271201','内江'),('1946','101271203','威远'),('1947','101271204','资中'),('1948','101271205','隆昌'),('1949','101271301','资阳'),('1950','101271302','安岳'),('1951','101271303','乐至'),('1952','101271304','简阳'),('1953','101271401','乐山'),('1954','101271402','犍为'),('1955','101271403','井研'),('1956','101271404','夹江'),('1957','101271405','沐川'),('1958','101271406','峨边'),('1959','101271407','马边'),('1960','101271409','峨眉山'),('1961','101271501','眉山'),('1962','101271502','仁寿'),('1963','101271503','彭山'),('1964','101271504','洪雅'),('1965','101271505','丹棱'),('1966','101271506','青神');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1967','101271601','凉山');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('1968','101271603','木里'),('1969','101271604','盐源'),('1970','101271605','德昌'),('1971','101271606','会理'),('1972','101271607','会东'),('1973','101271608','宁南'),('1974','101271609','普格'),('1975','101271610','西昌'),('1976','101271611','金阳'),('1977','101271612','昭觉'),('1978','101271613','喜德'),('1979','101271614','冕宁'),('1980','101271615','越西'),('1981','101271616','甘洛'),('1982','101271617','雷波'),('1983','101271618','美姑'),('1984','101271619','布拖'),('1985','101271701','雅安'),('1986','101271702','名山'),('1987','101271703','荥经'),('1988','101271704','汉源'),('1989','101271705','石棉'),('1990','101271706','天全'),('1991','101271707','芦山'),('1992','101271708','宝兴'),('1993','101271801','甘孜'),('1994','101271802','康定'),('1995','101271803','泸定'),('1996','101271804','丹巴'),('1997','101271805','九龙'),('1998','101271806','雅江'),('1999','101271807','道孚'),('2000','101271808','炉霍'),('2001','101271809','新龙'),('2002','101271810','德格'),('2003','101271811','白玉'),('2004','101271812','石渠'),('2005','101271813','色达'),('2006','101271814','理塘'),('2007','101271815','巴塘'),('2008','101271816','乡城'),('2009','101271817','稻城'),('2010','101271818','得荣'),('2011','101271901','阿坝'),('2012','101271902','汶川'),('2013','101271903','理县'),('2014','101271904','茂县'),('2015','101271905','松潘'),('2016','101271906','九寨沟'),('2017','101271907','金川'),('2018','101271908','小金'),('2019','101271909','黑水'),('2020','101271910','马尔康'),('2021','101271911','壤塘'),('2022','101271912','若尔盖'),('2023','101271913','红原'),('2024','101272001','德阳'),('2025','101272002','中江'),('2026','101272003','广汉'),('2027','101272004','什邡'),('2028','101272005','绵竹'),('2029','101272006','罗江'),('2030','101272101','广元'),('2031','101272102','旺苍'),('2032','101272103','青川'),('2033','101272104','剑阁'),('2034','101272105','苍溪'),('2035','101280101','广州'),('2036','101280102','番禺'),('2037','101280103','从化'),('2038','101280104','增城'),('2039','101280105','花都'),('2040','101280201','韶关'),('2041','101280202','乳源'),('2042','101280203','始兴'),('2043','101280204','翁源'),('2044','101280205','乐昌'),('2045','101280206','仁化'),('2046','101280207','南雄'),('2047','101280208','新丰'),('2048','101280209','曲江'),('2049','101280210','浈江'),('2050','101280211','武江'),('2051','101280301','惠州'),('2052','101280302','博罗'),('2053','101280303','惠阳'),('2054','101280304','惠东'),('2055','101280305','龙门'),('2056','101280401','梅州'),('2057','101280402','兴宁'),('2058','101280403','蕉岭'),('2059','101280404','大埔'),('2060','101280406','丰顺'),('2061','101280407','平远'),('2062','101280408','五华'),('2063','101280409','梅县'),('2064','101280501','汕头'),('2065','101280502','潮阳'),('2066','101280503','澄海'),('2067','101280504','南澳'),('2068','101280601','深圳'),('2069','101280701','珠海'),('2070','101280702','斗门'),('2071','101280703','金湾'),('2072','101280800','佛山'),('2073','101280801','顺德'),('2074','101280802','三水'),('2075','101280803','南海'),('2076','101280804','高明'),('2077','101280901','肇庆'),('2078','101280902','广宁'),('2079','101280903','四会'),('2080','101280905','德庆'),('2081','101280906','怀集'),('2082','101280907','封开'),('2083','101280908','高要'),('2084','101281001','湛江'),('2085','101281002','吴川'),('2086','101281003','雷州'),('2087','101281004','徐闻'),('2088','101281005','廉江'),('2089','101281006','赤坎'),('2090','101281007','遂溪'),('2091','101281008','坡头'),('2092','101281009','霞山'),('2093','101281010','麻章'),('2094','101281101','江门'),('2095','101281103','开平'),('2096','101281104','新会'),('2097','101281105','恩平'),('2098','101281106','台山'),('2099','101281108','鹤山'),('2100','101281109','江海'),('2101','101281201','河源'),('2102','101281202','紫金'),('2103','101281203','连平'),('2104','101281204','和平'),('2105','101281205','龙川'),('2106','101281206','东源'),('2107','101281301','清远'),('2108','101281302','连南'),('2109','101281303','连州'),('2110','101281304','连山'),('2111','101281305','阳山'),('2112','101281306','佛冈'),('2113','101281307','英德'),('2114','101281308','清新'),('2115','101281401','云浮'),('2116','101281402','罗定'),('2117','101281403','新兴'),('2118','101281404','郁南'),('2119','101281406','云安'),('2120','101281501','潮州'),('2121','101281502','饶平'),('2122','101281503','潮安'),('2123','101281601','东莞'),('2124','101281701','中山'),('2125','101281801','阳江'),('2126','101281802','阳春'),('2127','101281803','阳东'),('2128','101281804','阳西'),('2129','101281901','揭阳'),('2130','101281902','揭西'),('2131','101281903','普宁'),('2132','101281904','惠来'),('2133','101281905','揭东'),('2134','101282001','茂名'),('2135','101282002','高州'),('2136','101282003','化州'),('2137','101282004','电白'),('2138','101282005','信宜'),('2139','101282006','茂港'),('2140','101282101','汕尾'),('2141','101282102','海丰'),('2142','101282103','陆丰'),('2143','101282104','陆河');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2144','101290101','昆明');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2145','101290103','东川'),('2146','101290104','寻甸'),('2147','101290105','晋宁'),('2148','101290106','宜良'),('2149','101290107','石林'),('2150','101290108','呈贡'),('2151','101290109','富民'),('2152','101290110','嵩明'),('2153','101290111','禄劝'),('2154','101290112','安宁'),('2155','101290201','大理'),('2156','101290202','云龙'),('2157','101290203','漾濞'),('2158','101290204','永平'),('2159','101290205','宾川'),('2160','101290206','弥渡'),('2161','101290207','祥云'),('2162','101290208','巍山'),('2163','101290209','剑川'),('2164','101290210','洱源'),('2165','101290211','鹤庆'),('2166','101290212','南涧'),('2167','101290301','红河'),('2168','101290302','石屏'),('2169','101290303','建水'),('2170','101290304','弥勒'),('2171','101290305','元阳'),('2172','101290306','绿春'),('2173','101290307','开远'),('2174','101290308','个旧'),('2175','101290309','蒙自'),('2176','101290310','屏边'),('2177','101290311','泸西'),('2178','101290312','金平'),('2179','101290313','河口'),('2180','101290401','曲靖'),('2181','101290402','沾益'),('2182','101290403','陆良'),('2183','101290404','富源'),('2184','101290405','马龙'),('2185','101290406','师宗'),('2186','101290407','罗平'),('2187','101290408','会泽'),('2188','101290409','宣威'),('2189','101290501','保山'),('2190','101290503','龙陵'),('2191','101290504','施甸'),('2192','101290505','昌宁'),('2193','101290506','腾冲'),('2194','101290601','文山'),('2195','101290602','西畴'),('2196','101290603','马关'),('2197','101290604','麻栗坡'),('2198','101290605','砚山'),('2199','101290606','丘北'),('2200','101290607','广南'),('2201','101290608','富宁'),('2202','101290701','玉溪'),('2203','101290702','澄江'),('2204','101290703','江川'),('2205','101290704','通海'),('2206','101290705','华宁'),('2207','101290706','新平'),('2208','101290707','易门'),('2209','101290708','峨山'),('2210','101290709','元江'),('2211','101290801','楚雄'),('2212','101290802','大姚'),('2213','101290803','元谋'),('2214','101290804','姚安'),('2215','101290805','牟定'),('2216','101290806','南华'),('2217','101290807','武定'),('2218','101290808','禄丰'),('2219','101290809','双柏'),('2220','101290810','永仁'),('2221','101290901','普洱'),('2222','101290902','景谷'),('2223','101290903','景东'),('2224','101290904','澜沧'),('2225','101290906','墨江'),('2226','101290907','江城'),('2227','101290908','孟连'),('2228','101290909','西盟'),('2229','101290911','镇沅'),('2230','101290912','宁洱'),('2231','101291001','昭通'),('2232','101291002','鲁甸'),('2233','101291003','彝良'),('2234','101291004','镇雄'),('2235','101291005','威信'),('2236','101291006','巧家'),('2237','101291007','绥江'),('2238','101291008','永善'),('2239','101291009','盐津'),('2240','101291010','大关'),('2241','101291011','水富'),('2242','101291101','临沧'),('2243','101291102','沧源'),('2244','101291103','耿马'),('2245','101291104','双江'),('2246','101291105','凤庆'),('2247','101291106','永德'),('2248','101291107','云县'),('2249','101291108','镇康'),('2250','101291201','怒江'),('2251','101291203','福贡'),('2252','101291204','兰坪'),('2253','101291205','泸水'),('2254','101291207','贡山'),('2255','101291301','迪庆'),('2256','101291302','德钦'),('2257','101291303','维西'),('2258','101291401','丽江'),('2259','101291402','永胜'),('2260','101291403','华坪'),('2261','101291404','宁蒗'),('2262','101291501','德宏'),('2263','101291503','陇川'),('2264','101291504','盈江'),('2265','101291506','瑞丽'),('2266','101291507','梁河'),('2267','101291508','潞西'),('2268','101291601','西双版纳'),('2269','101291603','勐海'),('2270','101291605','勐腊'),('2271','101300101','南宁'),('2272','101300103','邕宁'),('2273','101300104','横县'),('2274','101300105','隆安'),('2275','101300106','马山'),('2276','101300107','上林'),('2277','101300108','武鸣'),('2278','101300109','宾阳'),('2279','101300201','崇左'),('2280','101300202','天等'),('2281','101300203','龙州'),('2282','101300204','凭祥'),('2283','101300205','大新'),('2284','101300206','扶绥'),('2285','101300207','宁明'),('2286','101300301','柳州'),('2287','101300302','柳城'),('2288','101300304','鹿寨'),('2289','101300305','柳江'),('2290','101300306','融安'),('2291','101300307','融水'),('2292','101300308','三江'),('2293','101300401','来宾'),('2294','101300402','忻城'),('2295','101300403','金秀'),('2296','101300404','象州'),('2297','101300405','武宣'),('2298','101300406','合山'),('2299','101300501','桂林'),('2300','101300503','龙胜'),('2301','101300504','永福'),('2302','101300505','临桂'),('2303','101300506','兴安'),('2304','101300507','灵川'),('2305','101300508','全州'),('2306','101300509','灌阳'),('2307','101300510','阳朔'),('2308','101300511','恭城'),('2309','101300512','平乐'),('2310','101300513','荔浦'),('2311','101300514','资源'),('2312','101300601','梧州'),('2313','101300602','藤县'),('2314','101300604','苍梧'),('2315','101300605','蒙山'),('2316','101300606','岑溪'),('2317','101300701','贺州'),('2318','101300702','昭平'),('2319','101300703','富川'),('2320','101300704','钟山');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2321','101300801','贵港');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2322','101300802','桂平'),('2323','101300803','平南'),('2324','101300901','玉林'),('2325','101300902','博白'),('2326','101300903','北流'),('2327','101300904','容县'),('2328','101300905','陆川'),('2329','101300906','兴业'),('2330','101301001','百色'),('2331','101301002','那坡'),('2332','101301003','田阳'),('2333','101301004','德保'),('2334','101301005','靖西'),('2335','101301006','田东'),('2336','101301007','平果'),('2337','101301008','隆林'),('2338','101301009','西林'),('2339','101301010','乐业'),('2340','101301011','凌云'),('2341','101301012','田林'),('2342','101301101','钦州'),('2343','101301102','浦北'),('2344','101301103','灵山'),('2345','101301201','河池'),('2346','101301202','天峨'),('2347','101301203','东兰'),('2348','101301204','巴马'),('2349','101301205','环江'),('2350','101301206','罗城'),('2351','101301207','宜州'),('2352','101301208','凤山'),('2353','101301209','南丹'),('2354','101301210','都安'),('2355','101301211','大化'),('2356','101301301','北海'),('2357','101301302','合浦'),('2358','101301303','涠洲岛'),('2359','101301401','防城港'),('2360','101301402','上思'),('2361','101301403','东兴'),('2362','101301405','防城'),('2363','101310101','海口'),('2364','101310201','三亚'),('2365','101310202','东方'),('2366','101310203','临高'),('2367','101310204','澄迈'),('2368','101310205','儋州'),('2369','101310206','昌江'),('2370','101310207','白沙'),('2371','101310208','琼中'),('2372','101310209','定安'),('2373','101310210','屯昌'),('2374','101310211','琼海'),('2375','101310212','文昌'),('2376','101310214','保亭'),('2377','101310215','万宁'),('2378','101310216','陵水'),('2379','101310221','乐东'),('2380','101310222','五指山'),('2381','101320101','香港'),('2382','101330101','澳门'),('2383','101340101','台北'),('2384','101340102','桃园'),('2385','101340103','新竹'),('2386','101340104','宜兰'),('2387','101340201','高雄'),('2388','101340202','嘉义'),('2389','101340203','台南'),('2390','101340204','台东'),('2391','101340205','屏东'),('2392','101340401','台中'),('2393','101340402','苗栗'),('2394','101340403','彰化'),('2395','101340404','南投'),('2396','101340405','花莲'),('2397','101340406','云林'),('2398','102010100','首尔'),('2399','103010100','东京'),('2400','103020100','大阪'),('2401','103040100','札幌'),('2402','103050100','福冈'),('2403','103090100','京都'),('2404','104010100','新加坡'),('2405','105010100','吉隆坡'),('2406','106010100','曼谷'),('2407','107010100','河内'),('2408','107020100','胡志明市'),('2409','108010100','仰光'),('2410','109010100','万象'),('2411','111010100','雅加达'),('2412','111080100','登巴萨'),('2413','112010100','德黑兰'),('2414','113010100','新德里'),('2415','113030100','孟买'),('2416','113090100','斯利那加'),('2417','114010100','伊斯兰堡'),('2418','114030100','卡拉奇'),('2419','114040100','白沙瓦'),('2420','115010100','塔什干'),('2421','117010100','科伦坡'),('2422','118010100','喀布尔'),('2423','118030100','坎大哈'),('2424','120010100','斯里巴加湾'),('2425','121010100','巴林'),('2426','124010100','阿布扎比'),('2427','124020100','迪拜'),('2428','127010100','平壤'),('2429','130010100','阿斯塔纳'),('2430','132010100','乌兰巴托'),('2431','136010100','马尼拉'),('2432','138010100','利雅得'),('2433','139010100','大马士革'),('2434','201010100','伦敦'),('2435','201050100','曼彻斯特'),('2436','202010100','巴黎'),('2437','202100100','马赛'),('2438','203010100','柏林'),('2439','203020100','法兰克福'),('2440','203050100','汉堡'),('2441','204010100','罗马'),('2442','204040100','米兰'),('2443','205010100','阿姆斯特丹'),('2444','206010100','马德里'),('2445','206020100','巴塞罗那'),('2446','207010100','哥本哈根'),('2447','208010100','莫斯科'),('2448','210020100','日内瓦'),('2449','210030100','苏黎世'),('2450','211010100','斯德哥尔摩'),('2451','214010100','里斯本'),('2452','215020100','伊斯坦布尔'),('2453','216010100','布鲁塞尔'),('2454','217010100','维也纳'),('2455','218010100','雅典'),('2456','222010100','赫尔辛基'),('2457','301010100','开罗'),('2458','302010100','开普敦'),('2459','302020100','约翰内斯堡'),('2460','303010100','突尼斯'),('2461','304020100','拉各斯'),('2462','305010100','阿尔及尔'),('2463','311010100','亚的斯亚贝巴'),('2464','317010100','内罗毕'),('2465','321020100','卡萨布兰卡'),('2466','327010100','达喀尔'),('2467','332010100','达累斯萨拉姆'),('2468','334010100','卢萨卡'),('2469','401010100','华盛顿'),('2470','401020101','迈阿密'),('2471','401020104','奥兰多'),('2472','401030101','亚特兰大'),('2473','401040101','洛杉矶'),('2474','401040102','圣弗朗西斯科'),('2475','401060100','波士顿'),('2476','401070101','芝加哥'),('2477','401100101','西雅图'),('2478','401110101','纽约'),('2479','401120108','休斯敦'),('2480','401370100','拉斯维加斯'),('2481','401480100','火奴鲁鲁'),('2482','404010100','渥太华'),('2483','404030100','温哥华'),('2484','404040100','多伦多'),('2485','404130100','埃德蒙顿'),('2486','404140100','卡尔加里');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2487','404220100','温尼伯');/* MySQLReback Separation */
 /* 插入数据 `tp_weather` */
 INSERT INTO `tp_weather` VALUES ('2488','404230100','魁北克'),('2489','404240100','蒙特利尔'),('2490','406010100','哈瓦那'),('2491','411010100','墨西哥城'),('2492','416010100','加拉加斯'),('2493','601020101','悉尼'),('2494','601030101','布里斯班'),('2495','601040101','阿德来德'),('2496','601060101','墨尔本'),('2497','601070101','珀斯'),('2498','606010100','惠灵顿'),('2499','606020100','奥克兰'),('2500','606030100','克莱斯特彻奇'),('2501','101030100','天津');/* MySQLReback Separation */
 /* 创建表结构 `tp_wecha_user` */
 DROP TABLE IF EXISTS `tp_wecha_user`;/* MySQLReback Separation */ CREATE TABLE `tp_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wechat_group` */
 DROP TABLE IF EXISTS `tp_wechat_group`;/* MySQLReback Separation */ CREATE TABLE `tp_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_wechat_group` */
 INSERT INTO `tp_wechat_group` VALUES ('1','0','未分组','','twllsi1431226863','55'),('2','1','黑名单','','twllsi1431226863','0'),('3','2','星标组','','twllsi1431226863','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_wechat_group_list` */
 DROP TABLE IF EXISTS `tp_wechat_group_list`;/* MySQLReback Separation */ CREATE TABLE `tp_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_wechat_group_list` */
 INSERT INTO `tp_wechat_group_list` VALUES ('1','','LigneousCat','1','广东','广州','http://wx.qlogo.cn/mmopen/PiajxSqBRaELU760teOQtCGdw29EFlFPJzahciboasibNVRI5ky06lRouHh3AyDibLCvVI7o6YCzVg4ZoicaGtbOpDg/0','1430925016','twllsi1431226863','onHRmuBJhvmUblM7QEf9ecnd9Y7U','0'),('22','0','吴祥武','1','湖北','武汉','http://wx.qlogo.cn/mmopen/ajNVdqHZLLCRE2vACAtOthqXuePU5iaXDBdeXBsBUSO0S2jsVDy8eoVODb2Qe4nXYApWK1p1bRUHJSKTS78iaJYQ/0','1436424200','twllsi1431226863','onHRmuKDtjPC0wntcyI9NO-JoiFA','0'),('3','0','soGary','1','广东','广州','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwpZTRYltPF4wNyJyDGUOAAiaszAeiayibzYfl8P3QrQV7sjibNZcN8VHMCw0icOo0vINPiaZPtqOHE8omc/0','1438643762','twllsi1431226863','onHRmuCEpECSyzxz_isbLqeUI0lw','0'),('4','0','幽清溪','1','广东','广州','http://wx.qlogo.cn/mmopen/iaqOF0rNfD12nvHImGJ8MfHq8GCia8iaYIXgBD16TUz6amQzhRw0NeiaOB68COMvicHyq5Gf0NerxD3chXjWZJGta0ibKDrFXptKN3/0','1430876062','twllsi1431226863','onHRmuHQF1owigQV4NEXRbmmHHyU','0'),('5','0','Aon','2','广东','广州','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLO2GD1829GfSPlX2lXwgwiaEbAh82gPnEfAObAGBQdJYSz44cicgX1ZkgwF9QI7LSic3dYsoQLkIicoM/0','1430823075','twllsi1431226863','onHRmuCWBIpi5-O4wM_IL18eEqUY','0'),('6','0','吕端','1','北京','石景山','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLEjWrPfGK1aRlpgiaeSylLDib5uqELqFDzzgbNYIucO6ibCm793LZc6qLv7grsqN57GjTXbshS20DpZ/0','1430270016','twllsi1431226863','onHRmuAvwwx6K08Guyj02PIKTyBc','0'),('7','0','soGary','0','','','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBPIjYa4H6dDlxm8uljF7ySib909Q4x4eHibhwDBIYCicicFibdSssZbMvJBFT8AEbY391fDNah6WqqmSbej5T6fr54X1/0','1430260408','twllsi1431226863','onHRmuD5eAyABVzl3tWBJKXtPjjs','0'),('8','0','花开半夏','0','','','http://wx.qlogo.cn/mmopen/Q3auHgzwzM61KejuxemMUS5IL9l88ibibU3DcF8Y4nREL3eicJlZdqQ0vsx3ILxZE9gselbnxhP6Msl5gc1oa5ibzJjLkKGkBn2NDr38cG91NXs/0','1432033791','twllsi1431226863','onHRmuJcpa291GRci5V7UxjoVk2Y','0'),('20','0','林小乖','2','广东','广州','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqXyx9Iv5ldc7lF2zuU4N0DcoTaBpK0ZLtZRyP9IBmdLTKHhlsuqjwMNPGU6gfUDESL3iaXJ4oVJIg/0','1438585351','twllsi1431226863','onHRmuMqu5DelI0z7SPFsWli34XU','0'),('21','0','庞文军','1','湖北','潜江','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZjjU96ShaOZfwhmO22uFlD917ywBOEVQFcESBs6gmKCwUMZ5hUmU2vc2myXaGjO5gYRZFyicGFhMQTagHB9xkm/0','1436424230','twllsi1431226863','onHRmuAgzL7KdbJAdQU6hYb4hAkg','0'),('9','0','GDbobby','1','广东','江门','http://wx.qlogo.cn/mmopen/lKflbtDRhzx01zh6Im0n7nnmicIbOFKaTtzdnApbQbnjnaKWlwYRwoWxFFeia3ufP8T1wt10OEuwFkzOu9gNg7T1NqtXHHmIK7/0','1432090565','twllsi1431226863','onHRmuLUwlZKQzjhZQb5qRuDsRDQ','0'),('23','0','傻子太多，骗子明显不够用','1','湖北','武汉','http://wx.qlogo.cn/mmopen/PiajxSqBRaEJhicXwiapp4599zG8Dz5XcWZh88WQ1DhSIYrkj5aBicS7RqPE1Y7seg1OfUh3n5JaPscQbqAC9D34Eg/0','1436424151','twllsi1431226863','onHRmuIqwG37qg0dgiYswnCbz4OA','0'),('24','0','May','2','广东','广州','http://wx.qlogo.cn/mmopen/ibAVyiclxnibShZjjU96ShaOWFEZWaPI2EiaibD0kMalxICS9K3al4ThbwicrK5sNe3EZDclEUU8DECxFesvwCDdd5mYZkvmHJyney/0','1438518971','twllsi1431226863','onHRmuGfq-P9cNyKkHjS4MaXdSVI','0'),('25','0','Sunshine','2','湖北','武汉','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDohcSjRdX48ibBz5nBiaMHI23ic2GjgjZpEWvlcDAhI2n6hJsscsUL0zr2U59DmicZcToHsYbBNbMSvw/0','1436424989','twllsi1431226863','onHRmuKnMP4Gz2oO7B43-MghTCRM','0'),('11','0','苏家村','1','东巴克利','','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSgHicJve30YGSKATPC6LBnJMWqw1CPYR5YdkwBhzUOicYOyEtseBxjoLbTsiau6snDcSEpic3MvgvAbiaOmVZxRRpmiab/0','1433588165','twllsi1431226863','onHRmuJy0GwK-7dLt23VwxqMRuLM','0'),('12','0','Lily','0','','','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBMdxia5lPkeuMhUU67cuPJmxwXTAjUhuoVwK5B865z0xHqHZbAVic2x2dBdZgpicNYKTQjvxLULPWJicK9D7eqf1cjz/0','1433559549','twllsi1431226863','onHRmuFwfs_FcUG1uLjDKzkPti-4','0'),('13','0','bababala','1','广东','广州','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNx6H8CeE8vibk9XnsfXqZ7aHXeDaN5bEusg0aJ2AicUsplDtkLxQIRaumibNuxC92W1ic7v9xXwU2ibzaeXDmdCodUU/0','1433904960','twllsi1431226863','onHRmuNp2ALbeBTemyGPoIXCRXSo','0'),('14','0','若竹','1','广东','广州','http://wx.qlogo.cn/mmopen/oQ7QIr12iawqHP1Yy7IU4Lu8btzTE6GE9KgiaJuCsF0vFzQQe9Q0ABmfRnxoGWD3iav3vB0h9gt51ib6tkQqABO9xx2QGKhITAsr/0','1434084811','twllsi1431226863','onHRmuLLQzhNLMMOTBRpH1B-k5ag','0'),('15','0','橘子','2','湖南','长沙','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBNnKeakRk4AUg2SEFzw1hiaqqvLoZCAxLjhMSrs1X19fhouALP2uPSGcwL0HX9zbmN2tibIG9y5CpBFVa9aiaotDR1/0','1434255435','twllsi1431226863','onHRmuPHNtVPk4ASKFI0aNFxmdcU','0'),('16','0','','2','广东','广州','http://wx.qlogo.cn/mmopen/oQ7QIr12iawq0I1ibdKkUeR79UbyxfVTAIDmrqDsFEXyljKSbibibjDWkPn1knJibia8Z8lsvY4FswpxOgrN2ibXMRyF5KZz0tq0crq/0','1434502007','twllsi1431226863','onHRmuI8QJzJeqpD8ia-wKETRElE','0'),('17','0','X','1','广东','广州','http://wx.qlogo.cn/mmopen/rrlk5fbia7rmbvPpzQ2dA1ZagSAI2BMp1I9e7lvOIJ4oiad3VV9aIfPEUKxIWTD57XyD7D8CTuziaBKQjS4ryhqCvDvaokuPbUW/0','1434903280','twllsi1431226863','onHRmuLEioCH3ko9WJcawM5vbhQw','0');/* MySQLReback Separation */
 /* 插入数据 `tp_wechat_group_list` */
 INSERT INTO `tp_wechat_group_list` VALUES ('19','0','老张','1','广东','广州','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSglVLuibSD7Clia4VEGshibPTm2lHQ1OFgfFTth0NWs2puuAuarmkLgxnKibswIRFpgHBBKFtbZj7YyIictH5qrsvjFZ/0','1434711510','twllsi1431226863','onHRmuBTD41pLrLghzzhhXR3JrVc','0');/* MySQLReback Separation */
 /* 插入数据 `tp_wechat_group_list` */
 INSERT INTO `tp_wechat_group_list` VALUES ('26','0','.April','2','广东','广州','http://wx.qlogo.cn/mmopen/lKflbtDRhzwSPibslC3jx0YRVvD7XXH3yKsK3zBc0hzQx5KAmFTpEOaFlwhP9t55aMC60p9s3iccLcq9NwGAC3OibeG0M5uxj24/0','1438360150','twllsi1431226863','onHRmuFo6gTCT3H8MBbYd_y4YJKs','0'),('27','0','王鹏','1','湖北','武汉','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwhA1iajWEvTQ5HUVJ1fmEDS35DgVTeS2MxNB1BCxAXuqtyVMoXic4urtUYW0rZVRCaYBAdKo7BHoHX/0','1436424774','twllsi1431226863','onHRmuEK6KDAw1wv6O7G_heNiG9o','0'),('28','0','冯莎 ','2','湖北','武汉','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLLamiaIJMrTZluibjkXLQed6Gib0hpJQAzHuGS2P7iaTicMWbHzCia1J5bongnDzTahZwNmR564jNdZib47/0','1436424161','twllsi1431226863','onHRmuKo5bQUgPp68Ke1b-GlRvOY','0'),('29','0','德欣','2','广东','广州','http://wx.qlogo.cn/mmopen/oQ7QIr12iawowYqJywwMYg5wDf0xKlZz3tOtibGKu4pubEr4FGq8HrBPRWzic92sIwONOfBh2HUkqgdoh3FfiammZo9RguBAY7Uz/0','1435390639','twllsi1431226863','onHRmuLZj6tyjlmVWnvejHbnkU6o','0'),('30','0','__空心','1','湖北','黄冈','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLHuu9Uuz7B799FvwOhibicdfpJbvic9BIicnjqMZEicubpyvrEI8uZqkuiaaFQJXGMQbic96JHuGwvUCHrI/0','1436424217','twllsi1431226863','onHRmuGdssJdYhjXJdAtobq3c4fI','0'),('31','0','素子花开','2','江西','九江','http://wx.qlogo.cn/mmopen/hJTMgiaG36O17c91uL8Z1FciaSrLxHpbRjQicLkrYkT0qia7HGrib8tyu1Qg9v2Mm14IgO75to6AAomKRNCYuBf8vSCG6dIkxTFhE/0','1436424212','twllsi1431226863','onHRmuBQCHJQOq_QttvVGynmRhQU','0'),('32','0','乘二','0','','','http://wx.qlogo.cn/mmopen/oQ7QIr12iawpQRWBgGB7aEicu69rzZE90agydQFJ88oNy6sTDZlRsibM6Iickl2ia1uZ8IIQcibIRYPxZ2wFnjdC3EvPxI46jzABbB/0','1438601400','twllsi1431226863','onHRmuMJHE1VS4-TfQvloV3GfuNs','0'),('33','0','肖倾宇','2','山东','德州','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwuicaM7HZOBVlaJg5pK5L7h0z0iagc3zhcVy5sqDhpPpZ6VSMU2d15NAskC037BTVTORP9VSzTIYXb/0','1436017042','twllsi1431226863','onHRmuN4lxwYr78MQW0l6-WBaRb0','0'),('34','0','贞子','2','奥法利','','http://wx.qlogo.cn/mmopen/lKflbtDRhzzB2YBz3j82sp7ofWLgoQ1kibyvx3yG3pWvHMlz4FjGpwGky2ub9om1MG8YSBuTxEsFr92pKBwz3BoerTSnZLPd6/0','1438499662','twllsi1431226863','onHRmuLBgXVwoM5NW3OtKwokPq8o','0'),('35','0','阿豹斯特拉','1','广东','广州','http://wx.qlogo.cn/mmopen/ibAVyiclxnibSg655ibiaLEn3CnGNKQEHx6yWjPeWapvX7ydftqdWv73rgKGV95FmwJQ7iba4MpNj7mROQ28HnOI6ND2cicIOTcVpog/0','1435415917','twllsi1431226863','onHRmuHBgjdfWYaQkf3x3Sj24ciI','0'),('36','0','小涛','1','湖北','武汉','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBOL1ibubRKRxwkic11m9LsSZh1JLT5uIqYNgu0yCl4e5DhNb9ia9yNIxBpfyphxy0PcWmDMicib7WBDm0yZDicBWmp6OY/0','1436424210','twllsi1431226863','onHRmuBtVrtSMclLKtSrz9pSBMJw','0'),('37','0','飞翔','1','广东','广州','http://wx.qlogo.cn/mmopen/Ly9jEUBSYBN6iaQ8NlzghsSvKib7BAqN0icAvVMEzzFsiaHoqicppOw9StzmsictDicXcpPvdamb8x39d2mnyG4y2Rw3qKianGEz07z0/0','1438567683','twllsi1431226863','onHRmuPrPWliw3wZO4cJRUeMWQ_A','0'),('38','0','曾阿牛','1','湾仔区','','http://wx.qlogo.cn/mmopen/lKflbtDRhzwB7Wicr0FvicLBYKOiaWboje5MqslTpRpdjleIYuSduRI5yuRjofHZx0I3vibbhMorVhQvDPVQWFh7qMfMdBxAFQ7N/0','1436424996','twllsi1431226863','onHRmuMPGrZlOf907MRoLzDao6Xc','0'),('39','0','立琼','2','广东','广州','http://wx.qlogo.cn/mmopen/oQ7QIr12iawoQzOMWfxhIqktODj3ibS8TrJE46hFfUQSdOnyUZPgGEGPeLnpuKN1mHmtxDLenfurgSANBxErgHFAXw3jym1O9G/0','1438406437','twllsi1431226863','onHRmuJBYmpp1rHh2AYbEWGQOqak','0'),('40','0','吴翠丽','2','','','http://wx.qlogo.cn/mmopen/ajNVdqHZLLDpAfrktHVYkEZAN3gw5Vut8WfUd013agibHSaEPl0bVzQJm79yicXB0un5xzKLEWL9pY8Ys2Cqw1YibNL9ZhunOVlDEnbNY8p8Fo/0','1436773582','twllsi1431226863','onHRmuIloEzDCoNFch0PacyF4CS0','0'),('41','0','黄梦洁','0','','','http://wx.qlogo.cn/mmopen/lKflbtDRhzzcy6UuicwYFpDd2icPcLQHp1GlnBib2b3786X6NGCyFDpa6QavguOicpagvU78xgPmEomt1dQGbTsTFyhwcU1BCRUT/0','1436424148','twllsi1431226863','onHRmuODpTKju4Ar23bFS6yp320Y','0'),('42','0','微营销','1','广东','广州','http://wx.qlogo.cn/mmopen/lKflbtDRhzwGzVuLHz1CQPsdhK87jJNEJlIFbYJ9pHXibbAEqPsNiaBNRVf1dqHS05duO6OiaDAXMkrW3iaaRHdbicPb6HQ8ce5iaT/0','1437110492','twllsi1431226863','onHRmuHOMziAIGbnqE5mz1RSpef0','0'),('43','0','霍荣彬','1','广东','广州','http://wx.qlogo.cn/mmopen/zXRribZg6kGvFGN8BkkniagUIsRBtcnxPCfLZ3TfQOUVBqK0qticn4SWohFoiccGEzd8HuljfnTWEFu6EUgP8Pg0EyiaTIIIml18x/0','1436356699','twllsi1431226863','onHRmuPM3B8EFwtv00FkHVahFjLk','0');/* MySQLReback Separation */
 /* 创建表结构 `tp_wechat_scene` */
 DROP TABLE IF EXISTS `tp_wechat_scene`;/* MySQLReback Separation */ CREATE TABLE `tp_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `lottery_type` tinyint(4) NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wecht_grout` */
 DROP TABLE IF EXISTS `tp_wecht_grout`;/* MySQLReback Separation */ CREATE TABLE `tp_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wedding` */
 DROP TABLE IF EXISTS `tp_wedding`;/* MySQLReback Separation */ CREATE TABLE `tp_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wedding_info` */
 DROP TABLE IF EXISTS `tp_wedding_info`;/* MySQLReback Separation */ CREATE TABLE `tp_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wehcat_member_enddate` */
 DROP TABLE IF EXISTS `tp_wehcat_member_enddate`;/* MySQLReback Separation */ CREATE TABLE `tp_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE,
  KEY `openid_2` (`openid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_wehcat_member_enddate` */
 INSERT INTO `tp_wehcat_member_enddate` VALUES ('1','onHRmuCEpECSyzxz_isbLqeUI0lw','1439480487','0','0','twllsi1431226863'),('2','onHRmuBJhvmUblM7QEf9ecnd9Y7U','1431422358','0','0','twllsi1431226863'),('3','onHRmuO2s8qXOw85iU-Xb8RSN_VY','1431593679','0','0','twllsi1431226863'),('4','onHRmuKJHTp6moCPMXDlAy68RLLI','1431858627','0','0','twllsi1431226863'),('5','onHRmuAvwwx6K08Guyj02PIKTyBc','1439480179','0','0','twllsi1431226863'),('6','onHRmuJcpa291GRci5V7UxjoVk2Y','1432033823','0','0','twllsi1431226863'),('7','onHRmuD5eAyABVzl3tWBJKXtPjjs','1432249774','0','0','twllsi1431226863'),('8','onHRmuIuvd9RJq2gPL5R7jDmTHY8','1434021750','0','0','twllsi1431226863'),('9','onHRmuFwfs_FcUG1uLjDKzkPti-4','1433572301','0','0','twllsi1431226863'),('10','onHRmuJy0GwK-7dLt23VwxqMRuLM','1433588264','0','0','twllsi1431226863'),('11','onHRmuNp2ALbeBTemyGPoIXCRXSo','1433905034','0','0','twllsi1431226863'),('12','onHRmuPHNtVPk4ASKFI0aNFxmdcU','1434446246','0','0','twllsi1431226863'),('13','onHRmuBTD41pLrLghzzhhXR3JrVc','1434711627','0','0','twllsi1431226863'),('14','onHRmuMKZ9oYpNgP8WaqFupFusP8','1434965135','0','0','twllsi1431226863'),('15','onHRmuOeLXdQtMNRcu3GSPwikhvQ','1436693417','0','0','twllsi1431226863'),('16','onHRmuLEioCH3ko9WJcawM5vbhQw','1434903438','0','0','twllsi1431226863'),('17','onHRmuBFftTQTDlonGu1eivuOPNY','1434973943','0','0','twllsi1431226863'),('18','onHRmuPJnS3ptOC8sbtYbAcXWYrg','1435199988','0','0','twllsi1431226863'),('19','onHRmuLZj6tyjlmVWnvejHbnkU6o','1435390705','0','0','twllsi1431226863'),('20','onHRmuHBgjdfWYaQkf3x3Sj24ciI','1435415987','0','0','twllsi1431226863'),('21','onHRmuDxjcFPlNwGRLcpvAg5okqw','1435583511','0','0','twllsi1431226863'),('22','onHRmuPM3B8EFwtv00FkHVahFjLk','1436357024','0','0','twllsi1431226863'),('23','onHRmuOpMGfTab3UEIAawGLJqhak','1436489306','0','0','twllsi1431226863'),('24','onHRmuIqwG37qg0dgiYswnCbz4OA','1439088560','0','0','twllsi1431226863'),('25','onHRmuMPGrZlOf907MRoLzDao6Xc','1436452725','0','0','twllsi1431226863'),('26','onHRmuIloEzDCoNFch0PacyF4CS0','1436773721','0','0','twllsi1431226863'),('27','onHRmuNJaUHXp6G70ZBnADLI_Nm4','1436936787','0','0','twllsi1431226863'),('28','onHRmuNzbydOsEX3FiQL61pB_4SM','1437071715','0','0','twllsi1431226863'),('29','onHRmuHOMziAIGbnqE5mz1RSpef0','1437110858','0','0','twllsi1431226863'),('30','onHRmuPOyq4N1tWU3UdFrMuPb2rk','1438090382','0','0','twllsi1431226863'),('31','onHRmuI8QJzJeqpD8ia-wKETRElE','1437547529','0','0','twllsi1431226863'),('32','onHRmuBLxSVTKg3xMDqAK2Iz2_88','1438045061','0','0','twllsi1431226863'),('33','onHRmuDQxc3V8ostR4XsXGVx6iaI','1438334700','0','0','twllsi1431226863'),('34','onHRmuFo6gTCT3H8MBbYd_y4YJKs','1438360264','0','0','twllsi1431226863'),('35','onHRmuJBYmpp1rHh2AYbEWGQOqak','1438406449','0','0','twllsi1431226863'),('36','onHRmuOCs7jcLkwmiotxd5w4dAXE','1438485286','0','0','twllsi1431226863'),('37','onHRmuLBgXVwoM5NW3OtKwokPq8o','1438499694','0','0','twllsi1431226863'),('38','onHRmuGfq-P9cNyKkHjS4MaXdSVI','1438523963','0','0','twllsi1431226863'),('39','onHRmuPrPWliw3wZO4cJRUeMWQ_A','1438602179','0','0','twllsi1431226863'),('40','onHRmuF3tHrZ7QKiggvfSlQxjorw','1438610065','0','0','twllsi1431226863'),('41','onHRmuNAHcqRSYo5VNKbn9mxhEi0','1438610252','0','0','twllsi1431226863'),('42','onHRmuDcnVZKr07-0gdxQkoNSknI','1439380527','0','0','twllsi1431226863'),('43','onHRmuNgqpxURQCC-QS7NCR750oY','1438878743','0','0','twllsi1431226863'),('44','onHRmuDXK_rH_WUKkl7xeNrgr8wU','1439305503','0','0','twllsi1431226863'),('45','onHRmuO_Od1rAtH6EniASrqQv16g','1438930085','0','0','twllsi1431226863'),('46','onHRmuADaak92lxaJf2nu8EFIb34','1438952647','0','0','twllsi1431226863'),('47','onHRmuBsJeUGkT0OfpK0f0CrAWsk','1438952495','0','0','twllsi1431226863'),('48','onHRmuBXphndJTAiS7kSX6pzY4hQ','1439389229','0','0','twllsi1431226863'),('49','onHRmuMdLemkvxWymk3CV6C5lYEM','1439592129','0','0','twllsi1431226863'),('50','onHRmuElVClSOAT1llROvWc1V6aU','1439000259','0','0','twllsi1431226863'),('51','onHRmuMqu5DelI0z7SPFsWli34XU','1439065214','0','0','twllsi1431226863'),('52','onHRmuI7vFQTrNevc60FaLjIQc08','1439394179','0','0','twllsi1431226863'),('53','onHRmuJrhck9V-aOSAt8S8FDbEDg','1439297821','0','0','twllsi1431226863'),('54','onHRmuCxdTrvctZE7Psx038IijUo','1439381632','0','0','twllsi1431226863'),('55','onHRmuACXK4uZBftSzUJIFFtLMlw','1439384838','0','0','twllsi1431226863'),('56','onHRmuJDi5nhWapWU4BgiPw_p_gw','1439387186','0','0','twllsi1431226863'),('57','onHRmuFwYUp1l1rQzEVIn70Ou_cI','1439388203','0','0','twllsi1431226863'),('58','onHRmuEZx7-e5eub6rjzGbYMKOWg','1439390387','0','0','twllsi1431226863'),('59','onHRmuL_-GomnSNMXrmpWntIb6uM','1439448741','0','0','twllsi1431226863'),('60','onHRmuPqG2jQHR6doZdYwZitWTB8','1439391981','0','0','twllsi1431226863'),('61','onHRmuFnyDwTGQ63OZ9atJXJI1Qs','1439392200','0','0','twllsi1431226863'),('62','onHRmuOcPbBs1be-OxSd8cLBlvb4','1439427381','0','0','twllsi1431226863'),('63','onHRmuHB7GTZH5Qzpm7_JdKT1XfA','1439428350','0','0','twllsi1431226863'),('64','onHRmuJ8yewpt2iNGzLnqblckY6Y','1439434004','0','0','twllsi1431226863'),('65','onHRmuKCpYSrDw6ODqL4hg09u6Rc','1439434550','0','0','twllsi1431226863'),('66','onHRmuH2jASN1oLhreBkNI_MfH3w','1439450470','0','0','twllsi1431226863');/* MySQLReback Separation */
 /* 插入数据 `tp_wehcat_member_enddate` */
 INSERT INTO `tp_wehcat_member_enddate` VALUES ('67','onHRmuL3zrpxtzrIejGM8T4fu5vg','1439531115','0','0','twllsi1431226863');/* MySQLReback Separation */
 /* 插入数据 `tp_wehcat_member_enddate` */
 INSERT INTO `tp_wehcat_member_enddate` VALUES ('68','onHRmuLgP5Ne_0ZyQkkM8MGYpYFU','1439442468','0','0','twllsi1431226863'),('69','onHRmuHTl-dXsn6D_X3jGMJPVuCc','1439452505','0','0','twllsi1431226863'),('70','onHRmuJUyiIz7Lxi2uTNwJAumi-A','1439450127','0','0','twllsi1431226863'),('71','onHRmuMYLpNB8Xeq_WBi81eWjykk','1439536475','0','0','twllsi1431226863'),('72','onHRmuGhE79yRiiNlYBZny-JR35U','1439470630','0','0','twllsi1431226863'),('73','onHRmuOZBK5IKqBEdgSVae4zVgdc','1439478781','0','0','twllsi1431226863'),('74','onHRmuOuerZGxpl9vT6vRHi9NjYM','1439536987','0','0','twllsi1431226863'),('75','onHRmuJH-Hcd24AWfdARYhkV8QOg','1439478278','0','0','twllsi1431226863'),('76','onHRmuFEYONZ_rGXk4mnQvTl59-U','1439478442','0','0','twllsi1431226863'),('77','onHRmuF4pgKcwuRnpyPGEuPDnR4E','1439486293','0','0','twllsi1431226863'),('78','onHRmuAIAHpIuVidhqDOleYfjazE','1439512086','0','0','twllsi1431226863'),('79','onHRmuPrJjaImdUGNOBYnqid7Wds','1439517572','0','0','twllsi1431226863'),('80','onHRmuATA-W4a4dxYwONsTuxCAMc','1439531613','0','0','twllsi1431226863'),('81','onHRmuOWnXNIW2Ex5CFBBE-N0F2w','1439537763','0','0','twllsi1431226863'),('82','onHRmuCi5yYzvtlzDTjoJ6jKNtTA','1439536995','0','0','twllsi1431226863'),('83','onHRmuPrRHaiRsIl1utv-BjlRkSo','1439540297','0','0','twllsi1431226863');/* MySQLReback Separation */
 /* 创建表结构 `tp_weixin_account` */
 DROP TABLE IF EXISTS `tp_weixin_account`;/* MySQLReback Separation */ CREATE TABLE `tp_weixin_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `appId` char(45) NOT NULL,
  `appSecret` char(45) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `encodingAesKey` varchar(70) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL COMMENT '1开放平台公众号服务，2其他',
  `date_time` char(15) DEFAULT NULL,
  `component_verify_ticket` varchar(100) DEFAULT NULL,
  `component_access_token` varchar(150) NOT NULL,
  `token_expires` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_weixin_bill` */
 DROP TABLE IF EXISTS `tp_weixin_bill`;/* MySQLReback Separation */ CREATE TABLE `tp_weixin_bill` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `third_id` varchar(64) NOT NULL COMMENT '第三方支付id',
  `plat_type` tinyint(1) unsigned NOT NULL COMMENT '微信支付到账号来源（0：当前的微信号，1：系统平台的账号，2：自己公司的其他账号）',
  `appid` varchar(64) NOT NULL COMMENT '支付到账号的appid',
  `mchid` varchar(64) NOT NULL COMMENT '支付到账号的商户ID',
  PRIMARY KEY (`pigcms_id`),
  KEY `time` (`time`),
  KEY `orderid` (`orderid`,`from`),
  KEY `third_id` (`third_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_weizhaohuan` */
 DROP TABLE IF EXISTS `tp_weizhaohuan`;/* MySQLReback Separation */ CREATE TABLE `tp_weizhaohuan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(35) NOT NULL,
  `title` char(45) NOT NULL,
  `pic` char(200) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `info` text NOT NULL,
  `intro` text NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `add_time` char(15) NOT NULL,
  `show_num` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  `min` varchar(11) NOT NULL DEFAULT '',
  `max` varchar(11) NOT NULL DEFAULT '',
  `bgpic` varchar(200) NOT NULL DEFAULT '',
  `bgcolor` varchar(20) NOT NULL DEFAULT '#ca1a48',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_weizhaohuan_prize` */
 DROP TABLE IF EXISTS `tp_weizhaohuan_prize`;/* MySQLReback Separation */ CREATE TABLE `tp_weizhaohuan_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(45) NOT NULL,
  `img` char(200) NOT NULL,
  `num` int(11) NOT NULL,
  `use_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `gt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_weizhaohuan_share` */
 DROP TABLE IF EXISTS `tp_weizhaohuan_share`;/* MySQLReback Separation */ CREATE TABLE `tp_weizhaohuan_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `share_key` char(32) NOT NULL,
  `add_time` char(15) NOT NULL,
  `num` int(11) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_weizhaohuan_user` */
 DROP TABLE IF EXISTS `tp_weizhaohuan_user`;/* MySQLReback Separation */ CREATE TABLE `tp_weizhaohuan_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(35) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `is_real` tinyint(4) NOT NULL,
  `share_num` int(100) NOT NULL,
  `share_code` varchar(100) NOT NULL,
  `is_see` varchar(100) NOT NULL,
  `status` int(1) unsigned zerofill NOT NULL,
  `use_time` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_wxcert` */
 DROP TABLE IF EXISTS `tp_wxcert`;/* MySQLReback Separation */ CREATE TABLE `tp_wxcert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `apiclient_cert` varchar(1000) NOT NULL,
  `apiclient_key` varchar(1000) NOT NULL,
  `rootca` varchar(1000) NOT NULL,
  `uploadtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 插入数据 `tp_wxcert` */
 INSERT INTO `tp_wxcert` VALUES ('1','twllsi1431226863','http://weixin.blbook.cn/uploads/t/twllsi1431226863/555a011bed82d.pem','http://weixin.blbook.cn/uploads/t/twllsi1431226863/555a012626005.pem','http://weixin.blbook.cn/uploads/t/twllsi1431226863/555a0132f173b.pem','1431961906');/* MySQLReback Separation */
 /* 创建表结构 `tp_wxuser` */
 DROP TABLE IF EXISTS `tp_wxuser`;/* MySQLReback Separation */ CREATE TABLE `tp_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `aeskey` varchar(45) NOT NULL DEFAULT '',
  `encode` tinyint(1) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  `oauthinfo` tinyint(1) NOT NULL DEFAULT '1',
  `color_id` int(2) NOT NULL,
  `ifbiz` tinyint(1) DEFAULT '0',
  `fuwuappid` char(20) DEFAULT NULL,
  `share_ticket` varchar(150) NOT NULL,
  `share_dated` char(15) NOT NULL,
  `authorizer_access_token` varchar(200) NOT NULL,
  `authorizer_refresh_token` varchar(200) NOT NULL,
  `authorizer_expires` char(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `web_access_token` varchar(200) NOT NULL COMMENT ' 网页授权token',
  `web_refresh_token` varchar(200) NOT NULL,
  `web_expires` char(10) NOT NULL,
  `wx_coupons` tinyint(4) NOT NULL,
  `card_ticket` char(120) NOT NULL,
  `card_expires` char(15) NOT NULL,
  `wx_liaotian` tinyint(4) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `dynamicTmpls` int(11) NOT NULL DEFAULT '0',
  `sub_notice` varchar(255) DEFAULT NULL,
  `need_phone_notice` varchar(255) DEFAULT NULL,
  `sub_notice_btn` varchar(60) DEFAULT NULL,
  `is_syn` tinyint(4) NOT NULL DEFAULT '0',
  `phone` text NOT NULL,
  `smsstatus` text NOT NULL,
  `smsuser` text NOT NULL,
  `smspassword` text NOT NULL,
  `email` text NOT NULL,
  `emailstatus` text NOT NULL,
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`),
  KEY `agentid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `tp_wxuser` */
 INSERT INTO `tp_wxuser` VALUES ('1','','0','2','博览书店','3','rKzkrCUzYGikcogyriwPJjNAYZLQXyPpipzzSuZRahc','0','wx95a2ccf2f2fa0ebd','694627f59907f99b256abdd901938fc3','gh_a4dcb057a779','bolanbook','./tpl/User/default/common/images/portrait.jpg','twllsi1431226863','dwiCQr8DaiqBgqm6oMPE','广东省','广州市','1431226863@yourdomain.com','0','8','','','10000','1','100','100','1431226988','350','1438739167','1350_index_78yus','1','yl_list','1','ktv_content','0','0','3','1','1','6','0','','sM4AOVdWfPE4DxkXGEs8VHuzBfzGBXm1kEItM4qxTOsmONNxgT9UprlWhCEgPViinUstUmh3JenIsxTL8IuX1g','1434981099','lCqvdhN0RaT2zfpbKG8V1awywj0DfJ1v6ROr_MEZFVy3t9AjCr4Yut2tKt5m7hIPOTcIzDsa0N5lRIyqOttY08FG62NVLihb_5LAL9_ytGE','','1431303788','0','','','','1','','','1','http://weixin.blbook.cn/uploads/t/twllsi1431226863/6/9/9/9/thumb_556da120ad92f.jpg','0','','','','0','','','','','','','','');/* MySQLReback Separation */
 /* 创建表结构 `tp_yeepay_tmp` */
 DROP TABLE IF EXISTS `tp_yeepay_tmp`;/* MySQLReback Separation */ CREATE TABLE `tp_yeepay_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `from` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `platform` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_yml_config` */
 DROP TABLE IF EXISTS `tp_yml_config`;/* MySQLReback Separation */ CREATE TABLE `tp_yml_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `secret` varchar(32) NOT NULL,
  `print_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wx_appid` varchar(100) NOT NULL,
  `wx_appsecret` varchar(100) NOT NULL,
  `voice_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_yml_record` */
 DROP TABLE IF EXISTS `tp_yml_record`;/* MySQLReback Separation */ CREATE TABLE `tp_yml_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wxid` varchar(100) NOT NULL,
  `step` text NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_yundabao` */
 DROP TABLE IF EXISTS `tp_yundabao`;/* MySQLReback Separation */ CREATE TABLE `tp_yundabao` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `AppId` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `AppName` varchar(100) DEFAULT NULL,
  `AppNote` text,
  `HideTop` int(11) DEFAULT NULL,
  `IconType` int(11) DEFAULT NULL,
  `IconName` varchar(200) DEFAULT NULL,
  `IconName_url` varchar(200) DEFAULT NULL,
  `LogoName` varchar(100) DEFAULT NULL,
  `LogoName_url` varchar(200) DEFAULT NULL,
  `BgColor` int(11) DEFAULT NULL,
  `SplashType` int(11) DEFAULT NULL,
  `SplashName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_yundabao_users` */
 DROP TABLE IF EXISTS `tp_yundabao_users`;/* MySQLReback Separation */ CREATE TABLE `tp_yundabao_users` (
  `pigcms_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `endtime` int(11) NOT NULL,
  `AccessToken` varchar(200) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`pigcms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;/* MySQLReback Separation */
 /* 创建表结构 `tp_zhaopin` */
 DROP TABLE IF EXISTS `tp_zhaopin`;/* MySQLReback Separation */ CREATE TABLE `tp_zhaopin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `gangwei` varchar(200) DEFAULT NULL,
  `xinzi` varchar(200) DEFAULT NULL,
  `yaoqiu` varchar(5000) DEFAULT NULL,
  `ren` varchar(255) NOT NULL,
  `zhize` varchar(5000) NOT NULL,
  `jigou` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `people` varchar(255) NOT NULL,
  `tell` char(11) NOT NULL,
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `leibie` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `click` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `allow` tinyint(1) NOT NULL COMMENT '审核',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_zhaopin_jianli` */
 DROP TABLE IF EXISTS `tp_zhaopin_jianli`;/* MySQLReback Separation */ CREATE TABLE `tp_zhaopin_jianli` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `job` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `introduce` varchar(5000) DEFAULT NULL,
  `education` varchar(255) NOT NULL,
  `workarea` varchar(255) NOT NULL,
  `phone` char(11) NOT NULL,
  `leibie` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `click` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `validTime` int(100) NOT NULL,
  `age` char(3) NOT NULL DEFAULT '',
  `wecha_id` varchar(200) NOT NULL,
  `allow` tinyint(1) NOT NULL COMMENT '审核',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_zhaopin_reply` */
 DROP TABLE IF EXISTS `tp_zhaopin_reply`;/* MySQLReback Separation */ CREATE TABLE `tp_zhaopin_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '????',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `allowjl` tinyint(1) NOT NULL COMMENT '审核简历',
  `allowqy` tinyint(1) NOT NULL COMMENT '审核招聘',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `tp_zhida` */
 DROP TABLE IF EXISTS `tp_zhida`;/* MySQLReback Separation */ CREATE TABLE `tp_zhida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */