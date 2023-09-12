-- Create STORAGE
CREATE TABLESPACE group2assignment2
  DATAFILE 'group2assignment2.dat' SIZE 40M 
  ONLINE; 

-- Create Users
CREATE USER group2User IDENTIFIED BY group2Password ACCOUNT UNLOCK
	DEFAULT TABLESPACE group2assignment2
	QUOTA 20M ON group2assignment2;
CREATE USER testUser IDENTIFIED BY testPassword ACCOUNT UNLOCK
	DEFAULT TABLESPACE group2assignment2
	QUOTA 5M ON group2assignment2;

-- Create ROLES
CREATE ROLE applicationAdmin;
CREATE ROLE applicationUser;

-- Grant PRIVILEGES
GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE TRIGGER, CREATE PROCEDURE TO applicationAdmin;
GRANT CONNECT, RESOURCE TO applicationUser;

-- Grant PRIVILEGES
GRANT applicationAdmin TO group2User;
GRANT applicationUser TO testUser;