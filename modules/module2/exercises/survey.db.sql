BEGIN TRANSACTION;
CREATE TABLE bmgwd9.Person (id text, personal text, family text);
INSERT INTO Person VALUES('dyer','William','Dyer');
INSERT INTO Person VALUES('pb','Frank','Pabodie');
INSERT INTO Person VALUES('lake','Anderson','Lake');
INSERT INTO Person VALUES('roe','Valentina','Roerich');
INSERT INTO Person VALUES('danforth','Frank','Danforth');
CREATE TABLE bmgwd9.Site (name text, lat real, long real);
INSERT INTO Site VALUES('DR-1',-49.850000000000001419,-128.56999999999999317);
INSERT INTO Site VALUES('DR-3',-47.149999999999998578,-126.71999999999999886);
INSERT INTO Site VALUES('MSK-4',-48.869999999999997443,-123.40000000000000568);
CREATE TABLE bmgwd9.Visited (id text, site text, dated text);
INSERT INTO Visited VALUES('619','DR-1','1927-02-08');
INSERT INTO Visited VALUES('622','DR-1','1927-02-10');
INSERT INTO Visited VALUES('734','DR-3','1930-01-07');
INSERT INTO Visited VALUES('735','DR-3','1930-01-12');
INSERT INTO Visited VALUES('751','DR-3','1930-02-26');
INSERT INTO Visited VALUES('752','DR-3',NULL);
INSERT INTO Visited VALUES('837','MSK-4','1932-01-14');
INSERT INTO Visited VALUES('844','DR-1','1932-03-22');
CREATE TABLE bmgwd9.Survey (taken integer, person text, quant text, reading real);
INSERT INTO Survey VALUES(619,'dyer','rad',9.8200000000000002842);
INSERT INTO Survey VALUES(619,'dyer','sal',0.13000000000000000444);
INSERT INTO Survey VALUES(622,'dyer','rad',7.7999999999999998223);
INSERT INTO Survey VALUES(622,'dyer','sal',0.089999999999999996669);
INSERT INTO Survey VALUES(734,'pb','rad',8.4100000000000001421);
INSERT INTO Survey VALUES(734,'lake','sal',0.050000000000000002775);
INSERT INTO Survey VALUES(734,'pb','temp',-21.5);
INSERT INTO Survey VALUES(735,'pb','rad',7.2199999999999997513);
INSERT INTO Survey VALUES(735,NULL,'sal',0.059999999999999997779);
INSERT INTO Survey VALUES(735,NULL,'temp',-25.999999999999999999);
INSERT INTO Survey VALUES(751,'pb','rad',4.3499999999999996447);
INSERT INTO Survey VALUES(751,'pb','temp',-18.5);
INSERT INTO Survey VALUES(751,'lake','sal',0.10000000000000000555);
INSERT INTO Survey VALUES(752,'lake','rad',2.1899999999999999467);
INSERT INTO Survey VALUES(752,'lake','sal',0.089999999999999996669);
INSERT INTO Survey VALUES(752,'lake','temp',-16.0);
INSERT INTO Survey VALUES(752,'roe','sal',41.600000000000001421);
INSERT INTO Survey VALUES(837,'lake','rad',1.4599999999999999644);
INSERT INTO Survey VALUES(837,'lake','sal',0.20999999999999999222);
INSERT INTO Survey VALUES(837,'roe','sal',22.5);
INSERT INTO Survey VALUES(844,'roe','rad',11.25);
COMMIT;
