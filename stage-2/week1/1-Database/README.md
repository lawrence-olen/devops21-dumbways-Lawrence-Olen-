Tasks:
1. Deploy database MySQL
   - Setup secure_installation
   - Add password for root user
   - Create new user for MySQL
   - Create new database
   - Create privileges for your new user so they can access the database you created
   - Dont forget to change the MySQL bind address on /etc/mysql/mysql.conf.d/mysqld.cnf

2. Role Based
   - Create new database call demo and make some dummy table call transaction
   - Create a 2 role with the name admin, and guest that will be used to see and manage the 'transaction' table.
   - Give SELECT, INSERT, UPDATE, and DELETE access right to the employees tables for the admin role you just created, and only give SELECT access to guest.
   - Create a new user with the username your_name and password your_password. Add the user to the admin role.
   - Create a new user with the username guest and password guest. Add the user to the guest role.
   - Test all of tour user.

3. Remote User
   - Try to remote tour database from your local computer with mysql-client.
