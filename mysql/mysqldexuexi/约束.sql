/*
 * 约束
 */
 # 主键约束 等于非空加唯一
 proimary KEY
 
 # 非空约束
 NOT NULL
 
 # 唯一约束
 unipue
 
 # 外键约束
 FOREIGN KEY
 
 # 外键约束
 
-- 数据冗余 解决方案：分成 2 张表
-- 创建部门表(id,dep_name,dep_location)
-- 一方，主表
CREATE TABLE department(
id INT PRIMARY KEY AUTO_INCREMENT,
dep_name VARCHAR(20),
dep_location VARCHAR(20)
);
-- 创建员工表(id,name,age,dep_id)
-- 多方，从表
CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(20),
age INT,
dep_id INT -- 外键对应主表的主键
-- 创建外键约束
-- constraint emp_depid_fk foreign key (dep_id) references department(id)
);
-- 添加 2 个部门
INSERT INTO department VALUES(NULL,'研发部','广州'),(NULL,'销售部', '深圳');
SELECT * FROM department;
-- 添加员工,dep_id 表示员工所在的部门
INSERT INTO employee (NAME, age, dep_id) VALUES ('张三', 20, 1);
INSERT INTO employee (NAME, age, dep_id) VALUES ('李四', 21, 1);
INSERT INTO employee (NAME, age, dep_id) VALUES ('王五', 20, 1);
INSERT INTO employee (NAME, age, dep_id) VALUES ('老王', 20, 2);
INSERT INTO employee (NAME, age, dep_id) VALUES ('大王', 22, 2);
INSERT INTO employee (NAME, age, dep_id) VALUES ('小王', 18, 2);
SELECT * FROM employee;
-- 在employee表存在的情况下添加外键
ALTER TABLE employee ADD CONSTRAINT emp_depid_fk FOREIGN KEY (dep_id) REFERENCES department(id);