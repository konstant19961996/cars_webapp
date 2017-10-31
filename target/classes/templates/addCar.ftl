<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Список автомобилей автосалона</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="my.css">
</head>
<body ng-app="shopOfCars">
<div class="container" ng-controller="AddCarController">
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal">
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
                <legend>Добавление автомобиля</legend>
                <div class="form-group">
                    <label for="Markname" class="col-sm-4 control-label">Марка</label>
                    <div class="col-sm-8">
                        <input type="text" ng-model="Markname" class="form-control" id="Markname" placeholder="Марка">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Modelname" class="col-sm-4 control-label">Модель</label>
                    <div class="col-sm-8">
                        <input type="text" ng-model="Modelname" class="form-control" id="Modelname" placeholder="Модель">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Enginesize" class="col-sm-4 control-label">Объём двигателя</label>
                    <div class="col-sm-8">
                        <input type="number" ng-model="Enginesize" class="form-control" id="Enginesize" placeholder="Объём двигателя">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Power" class="col-sm-4 control-label">Мощность</label>
                    <div class="col-sm-8">
                        <input type="number" ng-model="Power" class="form-control" id="Power" placeholder="Мощность">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Numberofseats" class="col-sm-4 control-label">Число мест</label>
                    <div class="col-sm-8">
                        <input type="number" ng-model="Numberofseats" class="form-control" id="Numberofseats" placeholder="Число мест">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Price" class="col-sm-4 control-label">Цена</label>
                    <div class="col-sm-8">
                        <input type="number" ng-model="Price" class="form-control" id="Price" placeholder="Цена">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Maxspeed" class="col-sm-4 control-label">Максимальная скорость</label>
                    <div class="col-sm-8">
                        <input type="number" ng-model="Maxspeed" class="form-control" id="Maxspeed" placeholder="Максимальная скорость">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-4">
                        <button ng-click="addCar(Markname, Modelname, Enginesize, Power, Numberofseats, Price, Maxspeed)" class="btn btn-default">Добавить</button>
                    </div>
                </div>
            </form>
            <form class="form-horizontal" action="add2" method="POST">

                <legend>Добавление автомобиля</legend>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Марка</label>
                            <input type="text" class="form-control" name="Markname" placeholder="Марка">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Модель</label>
                    <input type="text" class="form-control" name="Modelname" placeholder="Модель">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Объём двигателя</label>
                    <input type="number" class="form-control" name="Enginesize" placeholder="Объём двигателя">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Мощность</label>
                    <input type="number" class="form-control" name="Power" placeholder="Мощность">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Число мест</label>
                    <input type="number" class="form-control" name="Numberofseats" placeholder="Число мест">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Цена</label>
                    <input type="number" class="form-control" name="Price" placeholder="Цена">
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Максимальная скорость</label>
                    <input type="number" class="form-control" name="Maxspeed" placeholder="Максимальная скорость">
                </div>

                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-4">
                        <button class="btn btn-default">Добавить</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.2/angular.min.js"></script>
    <script type="text/javascript" src="main.js"></script>
</body>
</html>