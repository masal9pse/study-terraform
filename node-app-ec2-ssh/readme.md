https://qiita.com/oishihiroaki/items/bc663eb1282d87c46e97
このサイトのインフラをコード化

## AmazonLinux2 に mongo をインストールして mongo コマンドを使えるようにする。

connect ssh

sudo yum update -y

sudo vi /etc/yum.repos.d/mongodb-org-3.2.repo

```
[mongodb-org-3.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/3.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc
```

:wq で抜ける sudo をコマンドが抜けていたら:q!でもう一度

\$ sudo yum install -y mongodb-org -y

\$ sudo service mongod start

# 停止

\$ sudo service mongod stop

# 再起動

\$ sudo service mongod restart

# mongo シェルの起動

\$ mongo

さらに詳しくはここ
https://dev.classmethod.jp/articles/mongodb-on-ec2/
