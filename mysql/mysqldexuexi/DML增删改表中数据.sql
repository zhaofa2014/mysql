/*
 * DML：增删改表中数据
 */
 
# 添加数据
 -- 给指定的字段添加值
 INSERT INTO USER (id,username,PASSWORD,age,birthday,insert_time) VALUES(003,'wangrui','wangrui123',23,'1996-11-27',NULL);
 
 -- 如果不指定字段，则默认给表中所有字段添加值,表中所有字段必须全部添加，否则报错
 INSERT INTO USER VALUES(002,'杨林','yanglin123',22,'1998-11-11',NULL);
 
# 删除数据
 DELETE FROM USER WHERE id=3;
 -- 如果不加条件，则删除表中所有记录
 -- 如果要删除所有记录
 DELETE FROM USER;-- 不推荐使用。有多少条记录就会执行多少次删除操作
 TRUNCATE TABLE USER;-- 推荐使用，效率更高 先删除表，然后再创建一张一样的表。
 
# 修改数据
 UPDATE USER SET PASSWORD='wangrui456',age=22 WHERE id=1;
-- 如果不加任何条件，则会将表中所有记录全部修改
 
 