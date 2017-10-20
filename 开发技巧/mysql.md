## 版本
```
▶ mysql --version
mysql  Ver 14.14 Distrib 5.7.18, for osx10.12 (x86_64) using  EditLine wrapper
```

## 时间戳转字符串时间
```sql
FROM_UNIXTIME(xxx.f_create_time/1000, '%Y-%m-%d %H:%i:%S')
```
## 使用变量
```sql
set @memberName = '165812'; # 要添加的人员
set @id = (select f_id from t_member where f_name = @memberName);
set @itemId = (select f_id from t_audience_item where f_join_id = '1' and f_join_type = 2);
insert into t_audience_member values(UUID(),@itemId, @id, now());
```