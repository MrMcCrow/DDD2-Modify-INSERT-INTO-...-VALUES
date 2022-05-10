-- modify the tables being created to fit your design

--
-- Table structure for table `pupils`
--
CREATE TABLE pupils (
                    studentNum INT PRIMARY KEY, 
                    name VARCHAR(50), 
                    age INT, 
                    house VARCHAR(20),
                    CHECK(LENGTH(house) <= 25)
                    );

--
-- Table structure for table `guidance`
--
CREATE TABLE guidance (
          employeeNum INT PRIMARY KEY,
          title VARCHAR(8),
          surname VARCHAR(20),
          age INT,
          house VARCHAR(10)
          );
