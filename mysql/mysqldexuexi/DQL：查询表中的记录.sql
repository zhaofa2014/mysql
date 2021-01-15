/*
 * DQL：查询表中的记录
 */
 CREATE TABLE student (
id INT, -- 编号
NAME VARCHAR(20), -- 姓名
age INT, -- 年龄
sex VARCHAR(5), -- 性别
address VARCHAR(100), -- 地址
math INT, -- 数学
english INT -- 英语
);
INSERT INTO student(id,NAME,age,sex,address,math,english) VALUES (1,'马云',55,'男','
杭州',66,78),(2,'马化腾',45,'女','深圳',98,87),(3,'马景涛',55,'男','香港',56,77),
(4,'柳岩',20,'女','湖南',76,65),(5,'柳青',20,'男','湖南',86,NULL),(6,'刘德华',57,'男','香港',99,99),
(7,'马德',22,'女','香港',99,99),(8,'德玛西亚',18,'男','南京',56,65);
DROP TABLE student;
 # 基础查询
 
 -- 查询表中所有数据
 SELECT * FROM student;
 -- 多个字段查询
 SELECT address FROM student;
 -- 去重查询
 SELECT DISTINCT address FROM student;
 -- 计算列，计算数学和英语成绩的和
 SELECT math,english,math+english FROM student;
 -- null在参与运算的时候结果为null,不合理,ifnull(表达式1,表达式2)：null参与的运算，计算结果都为null* 表达式1：哪个字段需要判断是否为null* 如果该字段为null后的替换值。
 SELECT math,english,math+IFNULL(english,0) FROM student;
 -- 给字段起别名math+IFNULL(english,0)——>总分
 SELECT math,english,math+IFNULL(english,0) AS 总分 FROM student;-- as可以省略
 
 # 条件查询
 -- 查询年龄20的学生
 SELECT * FROM student WHERE age=20;
 -- 查询年龄不是20的学生
 SELECT * FROM student WHERE age!=20;
 SELECT * FROM student WHERE age<>20;
 -- 查询年龄大于等于20，小于等于30的学生
 SELECT * FROM student WHERE age>=20 && age<=30;-- 不建议这么写
 SELECT * FROM student WHERE age>=20 AND age<=30;-- 建议
 SELECT * FROM student WHERE age BETWEEN 20 AND 30;-- 20到30之间包含20和30
 -- 查询年龄是22,18,25的学生
 SELECT * FROM student WHERE age=22 OR age=18 OR age=25;-- 麻烦
 SELECT * FROM student WHERE age IN (22,18,25);-- 建议
 -- 查询英语成绩为null
 SELECT * FROM student WHERE english = NULL;-- 错误，null不能用null判断。要用is 
 SELECT * FROM student WHERE english IS NULL;-- 正确
 -- 查询英语成绩不为null
 SELECT * FROM student WHERE english IS NOT NULL;-- not 要在is后面
 
 #模糊查询like
 
 -- 查询姓马的有哪些
 SELECT * FROM student WHERE NAME LIKE '马%';
 -- 姓名第二个字是化的人
 SELECT * FROM student WHERE NAME LIKE '_化%';
 -- 姓名是三个字的人
 SELECT * FROM student WHERE NAME LIKE '___';
 -- 查询姓名中包含德的人
 SELECT * FROM student WHERE NAME LIKE '%德%';
 
 # 排序查询 ORDER BY
 -- order by 数学成绩排序，不写排序方式默认升序排列，ASC升序，DESC降序
 SELECT * FROM student ORDER BY math ASC;
 SELECT * FROM student ORDER BY math DESC;
 -- 按照数学成绩排名，如果数学成绩一样，则按照英语成绩排名
 SELECT * FROM student ORDER BY math DESC ,english ASC;
 
 
 # 聚合函数
 
 -- count 计算个数
 SELECT COUNT(NAME) FROM student;
 -- max 查找数学成绩的最大值
 SELECT MAX(math) FROM student;
 -- min 查找数学成绩的最小值
 SELECT MIN(math) FROM student;
 -- sum 计算英语成绩的和
 SELECT SUM(english) FROM student; -- 聚合函数的计算，排除null值
 -- 计算english的平均成绩
 SELECT AVG(english) FROM student;
 
 # 分组查询
 
 -- 按照性别分组，分组查询男女同学的英语平均分
 SELECT sex,AVG(english) FROM student GROUP BY sex;
 -- 按照性别分组，分组查询男女同学的英语平均分,和人数
 SELECT sex,AVG(english) 英语平均分,MAX(english) 英语最高分,MIN(english) 英语最低分,COUNT(id)总人数 FROM student GROUP BY sex;
 -- 按照性别分组，分组查询男女同学的english平均分，和人数，要求分数<70的人不参与分组
 SELECT sex,AVG(english),COUNT(id) FROM student WHERE english>70 GROUP BY sex;
 -- 按照性别分组，分组查询男女同学的math平均分，和人数,要求math<70的人不参与分组，分组之后，人数要大于2人
 SELECT sex,AVG(math),COUNT(id) FROM student WHERE math>70 GROUP BY sex HAVING COUNT(id)>2;
 SELECT sex,AVG(math),COUNT(id) 人数 FROM student WHERE math>70 GROUP BY sex HAVING 人数>2;

 #分页查询:公式=开始的索引，每页查询的条数：开始的索引=（当前的页码-1），每页显示的条数
 
 -- 每页显示3条记录 查询第一页
 SELECT * FROM student LIMIT 0,3;
 -- 每页显示4条记录 查询第2页
 SELECT * FROM student LIMIT 1,4;
 
 
 
 