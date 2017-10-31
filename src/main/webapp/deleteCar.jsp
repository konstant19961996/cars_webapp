<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--DOM--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Реестр запрещенных сайтов</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="my.css">
</head>
<body class="shopOfCars">
<div class="container">
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" action="deleteCar" method="POST">
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
                <legend>Удаление автомобиля</legend>
                <div class="form-group">
                    <label class="col-sm-4 control-label">Ссылка</label>
                    <c:if test="${not empty allCars}">
                        <select class="form-control" name="idCars">
                            <c:forEach var="car" items="${allCars}">
                                <option value=${car.id}>${car.markname} ${car.modelname} ${car.power}</option>
                            </c:forEach>
                        </select>
                    </c:if>
                </div>

                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-4">
                        <button class="btn btn-default">Удалить</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>