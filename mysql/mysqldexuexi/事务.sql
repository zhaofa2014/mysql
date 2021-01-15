/*
 * 事务
 */
 CREATE TABLE account(
	NAME VARCHAR(32),
	salary DOUBLE
 );
 INSERT INTO account VALUES('zhaosan',5000);
 INSERT INTO account VALUES('lisi',5000);
 
 -- 开启事务
 START TRANSACTION;
 -- 转账
 UPDATE account SET salary = salary - 500 WHERE NAME='zhaosan';
 -- 异常
 -- 出错。。。
 UPDATE account SET salary = salary + 500 WHERE NAME='lisi';

 -- 提交事务
 COMMIT;
 
 -- 回滚事务
 -- 一旦在执行sql中出现异常,将事务回滚到开始事务时候的情况
 ROLLBACK;
 
 -- 查看事务的提交方式
 SELECT @@autocommit;-- 1 代表自动提交事务 -- 0 代表手动提交事务
 
 -- 修改事务的提交方式
 SET @@autocommit = 0;
 SET @@autocommit = 1;
 
 
 