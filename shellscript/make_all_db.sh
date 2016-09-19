user_name=homestead
password=secret

for i in `seq -w 1 25`;
do
  sql=$(printf "CREATE DATABASE IF NOT EXISTS chap%s;" $i);
  mysql -u $user_name -p$password --execute "$sql"
done
