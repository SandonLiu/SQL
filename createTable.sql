--建立雇员表
CREATE TABLE `employee` (
  `empId` char(10) NOT NULL,
  `empName` varchar(45) NOT NULL,
  `insertDateTime` datetime DEFAULT NULL,
  `updateDateTime` datetime DEFAULT NULL,
  `updateNumber` int DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='员工表'

