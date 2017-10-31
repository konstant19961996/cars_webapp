<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Список автомобилей автосалона</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="my.css">
</head>
<body ng-app="shopOfCars">
<div class="container" ng-controller="AppCtrl">
    <div class="col-md-10">
        <div class="panel panel-default">
            <div class="panel-heading">Автомобили в автосалоне</div>
            <menu>
                <ul>
                    <a href="http://localhost:8088/list" class="btn btn-info" role="button">
                        <li>
                            Список автомобилей
                        </li>
                    </a>
                    <a href="http://localhost:8088/addCar" class="btn btn-danger" role="button">
                        <li>
                            Добавить автомобиль в список
                        </li>
                    </a>
                    <a href="http://localhost:8088/deleteCar" class="btn btn-warning" role="button">
                        <li>
                            Удалить автомобиль из списка
                        </li>
                    </a>
                </ul>
            </menu>
            <div class="panel-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Марка</th>
                        <th>Модель</th>
                        <th>Объём двигателя</th>
                        <th>Мощность</th>
                        <th>Число мест</th>
                        <th>Цена</th>
                        <th>Максимальная скорость</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="item in list">
                        <td>{{item.Markname}}</td>
                        <td>{{item.Modelname}}</td>
                        <td>{{item.Enginesize}}</td>
                        <td>{{item.Power}}</td>
                        <td>{{item.Numberofseats}}</td>
                        <td>{{item.Price}}</td>
                        <td>{{item.Maxspeed}}</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.2/angular.min.js"></script>
<script type="text/javascript" src="main.js"></script>
</body>
</html>