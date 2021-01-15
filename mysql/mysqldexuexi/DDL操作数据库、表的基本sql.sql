/*
 * 操作数据库的CRUD
 */
-- 创建数据库，判断是否存在，并制定字符集为gbk
CREATE DATABASE IF NOT EXISTS LIANXI CHARACTER SET gbk ;

-- 判断数据库存在，存在再删除
DROP DATABASE IF EXISTS LIANXI ;

-- 修改数据库的字符集
ALTER DATABASE LIANXI 
  CHARACTER SET gbk ;

-- 查询所有数据库的名称
SHOW DATABASES ;

-- 查询某个数据库的字符集:查询某个数据库的创建语句
SHOW CREATE DATABASE LIANXI ;

-- 查询当前正在使用的数据库名称
SELECT 
  DATABASE() ;

-- 使用指定数据库
USE LIANXI 
/*
 * 操作表的CRUD
 */
-- C
CREATE TABLE USER(
  id INT,
  username VARCHAR (32),
  PASSWORD VARCHAR (32),
  age INT,
  birthday DATE,
  insert_time TIMESTAMP-- 时间戳类型,yyyy-MM-dd HH:mm:ss,包含年月日时分秒, 如果将来不给这个字段赋值，或赋值为null，则默认使用当前的系统时间，来自动赋值
) ;

-- R
-- 查询某个数据库中所有的表名称
SHOW TABLES ;

-- 查询表结构
DESC USER ;

-- U
-- 修改表名
ALTER TABLE USER RENAME TO USERS 
  ;

ALTER TABLE USERS 
  RENAME TO USER ;

-- 修改表的字符集
ALTER TABLE USER CHARACTER SET gbk 
  ;

-- 添加一列
ALTER TABLE USER ADD weight 
  INT ;

-- 增加体重一列
-- 修改列名称 类型：alter table 表名 change 列名 新列名 新数据类型;
ALTER TABLE USER CHANGE weight 
  height INT ;

ALTER TABLE USER MODIFY height 
  INT ;

-- 只改数据类型
-- 删除列
ALTER TABLE USER DROP height 
  ;

-- D
-- 先判断是否有此表再 删除表
DROP TABLE IF EXISTS USER 