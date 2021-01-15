# 创建部门表
CREATE TABLE dept(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(20)
);
INSERT INTO dept (NAME) VALUES ('开发部'),('市场部'),('财务部');
# 创建员工表
CREATE TABLE emp (
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(10),
	gender CHAR(1), -- 性别
	salary DOUBLE, -- 工资
	join_date DATE, -- 入职日期
	dept_id INT,
	FOREIGN KEY (dept_id) REFERENCES dept(id) -- 外键，关联部门表(部门表的主键)
);
INSERT INTO emp(NAME,gender,salary,join_date,dept_id) VALUES('孙悟空','男',7200,'2013-02-24',1);
INSERT INTO emp(NAME,gender,salary,join_date,dept_id) VALUES('猪八戒','男',3600,'2010-12-02',2);
INSERT INTO emp(NAME,gender,salary,join_date,dept_id) VALUES('唐僧','男',9000,'2008-08-08',2);
INSERT INTO emp(NAME,gender,salary,join_date,dept_id) VALUES('白骨精','女',5000,'2015-10-07',3);
INSERT INTO emp(NAME,gender,salary,join_date,dept_id) VALUES('蜘蛛精','女',4500,'2011-03-14',1);

-- 查询所有员工信息和对应的部门信息
SELECT * FROM emp,dept;
-- 数据冗余,处理
SELECT * FROM emp,dept WHERE emp.`dept_id` = dept.`id`
-- 隐式内连接
SELECT 
	t1.name,
	t1.gender,
	t2.name
FROM
	emp t1,
	dept t2
WHERE 
	t1.dept_id = t2.id
	
# 子查询
-- 最高工资
SELECT MAX(salary) FROM  emp;
-- 查询员工信息，并且工资等于9000的
SELECT * FROM emp WHERE emp.`salary` = 9000;
-- 查询工资最高的员工信息,一条sql就查询出来
SELECT * FROM emp WHERE emp.`salary` = (SELECT MAX(salary) FROM emp);

-- 查询财务部和市场部的所有员工信息
SELECT * FROM emp WHERE dept_id IN (SELECT id FROM dept WHERE NAME = '财务部' OR NAME = '市场部');

-- 子查询多行多列
-- 查询员工入职日期在2011-11-11之后的员工信息和部门信息
SELECT 
	* 
FROM 
	dept t1,
	(SELECT * FROM emp WHERE emp.`join_date` > '2011-11-11') t2
WHERE 
t1.`id` = t2.dept_id;
	