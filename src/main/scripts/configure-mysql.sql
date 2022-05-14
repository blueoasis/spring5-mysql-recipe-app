# docker startup:
# docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=secret -p 3306:3306 -v /Users/jasoncarps/mysql_data:/var/lib/mysql -d mysql

create database sfg_dev;
create database sfg_prod;

# create database service accounts
create user 'sfg_dev_user'@'localhost' identified by 'guru';
create user 'sfg_prod_user'@'localhost' identified by 'guru';
create user 'sfg_dev_user'@'%' identified by 'guru';
create user 'sfg_prod_user'@'%' identified by 'guru';

# database grants
grant select on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant insert on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant update on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant delete on sfg_dev.* to 'sfg_dev_user'@'localhost';
grant select on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant insert on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant update on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant delete on sfg_prod.* to 'sfg_prod_user'@'localhost';
grant select on sfg_dev.* to 'sfg_dev_user'@'%';
grant insert on sfg_dev.* to 'sfg_dev_user'@'%';
grant update on sfg_dev.* to 'sfg_dev_user'@'%';
grant delete on sfg_dev.* to 'sfg_dev_user'@'%';
grant select on sfg_prod.* to 'sfg_prod_user'@'%';
grant insert on sfg_prod.* to 'sfg_prod_user'@'%';
grant update on sfg_prod.* to 'sfg_prod_user'@'%';
grant delete on sfg_prod.* to 'sfg_prod_user'@'%';
