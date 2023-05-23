# data-platform-kubernetes-dashboard-kube
data-platform-mongodb-replicaset-kube は、データ連携基盤において、kubernetes の dashbord の yaml が入っています。
yaml を使用して、Kubernetes クラスターに Kubernetes Dashboard をデプロイできます。

## https について
ダッシュボードは https でないと認証ができません。
https で listen 状態にし、アクセスできるようにしています。

## 追加したパラメーター
追加したパラメターです。
認証をスキップしたり、apiserver-host を指定したりしています。

```
- --enable-skip-login=true
- --enable-insecure-login
- --disable-settings-authorizer
- --insecure-bind-address=0.0.0.0
- --apiserver-host=http://{ipv4 address}:{port number}
```

## yaml ファイルの生成
```
make generate ipv4Address={ipv4 address} portNumber={port number}
```

## proxy の起動
```
make proxy start
```
