k delete service

echo Carregando a imagem do banco... 

docker build -t jeanoliveira45/mysql-kub:2.0 ./sql
docker push jeanoliveira45/mysql-kub:2.0 

echo Carregando as imagens do backend...

docker build -t jeanoliveira45/php-kub:2.0 ./backend
docker push jeanoliveira45/php-kub:2.0

kubectl apply -f deployment.yml
kubectl apply -f service.yml


