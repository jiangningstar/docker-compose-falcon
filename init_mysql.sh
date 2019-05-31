mkdir -p /tmp
cd /tmp && \
git clone --depth=1 https://github.com/open-falcon/falcon-plus && \
cd /tmp/falcon-plus/ && \
for x in `ls ./scripts/mysql/db_schema/*.sql`; do
   echo init mysql table $x ...;
   docker exec -i falcon-mysql mysql -uroot -ptest123456 < $x;
done

rm -rf /tmp/falcon-plus/
