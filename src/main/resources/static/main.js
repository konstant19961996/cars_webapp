/**
 * Created by 803100 on 13.10.2017.
 */
var app = angular.module("shopOfCars", []);

app.controller("AppCtrl", function ($scope, $http) {
    $scope.list = [];

    $http.get('http://localhost:8088/start').success(function (data) {
        $scope.list = data;
    });
});

app.controller("AddCarController", function ($scope, $http) {
    $scope.addCar = function (Markname, Modelname, Enginesize, Power, Numberofseats, Price, Maxspeed) {
        $http.put('http://localhost:8088/add?Markname=' + Markname + '&Modelname=' + Modelname + '&Enginesize=' + Enginesize
            + '&Power=' + Power + '&Numberofseats=' + Numberofseats + '&Price=' + Price + '&Maxspeed=' + Maxspeed,
            $scope.cars);
        location.reload();
    }
});