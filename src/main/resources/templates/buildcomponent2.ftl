<#import "parts/common.ftl" as c>

<@c.page>

    <div id="content" class="container-fluid">
        <div class="row" style="margin-top: 10px;">
            <div class="col-lg-9 border-right border-dark" style="font-family: 'Arial'; font-size: 14pt;">
                <!-- <div class="row">
                    <div class="col-lg-8">
                        <h3 style="font-family: Arial;">New element name</h3>
                    </div>
                    <div class="col-lg-4">
                        <button type="button" class="btn btn-outline-primary">Добавить элемент</button>
                        <button type="button" class="btn btn-outline-danger">Удалить элемент</button>
                        <button type="button" class="btn btn-outline-success">Сохранить</button>
                    </div>
                </div> -->
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Создание нового компонента отчета</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <!-- <h3 style="font-family: Arial;">Покупатели (национальность)</h3> -->
                        <div class="float-right">
                            <!-- <button type="button" class="btn btn-outline-primary">Добавить компонент</button>
                            <button type="button" id="loadButton" class="btn btn-outline-primary">Загрузить данные с сервера</button>
                            <button type="button" class="btn btn-outline-success">Сохранить</button> -->
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 40px;">
                </div>
                <div class="row" style="margin-top: 40px;">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <!--<div style="height: 500px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">
                            <p>Визуализированные данные:</p>
                            <hr style="border-color: black;">-->
                        <input id="componentTitle" type="text" name="componentTitle" style="font-family: Arial; outline: none; border:none; width: 100%; text-align: center; font-size: 22pt;" placeholder="Название компонента" />
                        <canvas id="Cnvs" width=700" height="430" style="border:1px solid #000000; margin: 0 auto;">
                        </canvas>
                        <!--</div>-->
                        <div style="margin-top: 40px;">
                            <div style="text-align: center;"><button type="button" class="btn btn-outline-success">Сохранить</button></div>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </div>
            <div class="col-lg-3" style="min-height: 900px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 style="font-family: Arial;">Доступные таблицы и атрибуты</h3>
                            <ul class="table-names">
                                <li>Petrol1
                                    <ul>
                                        <li>year</li>
                                        <li>price</li>
                                    </ul>
                                </li>
                                <li>Petrol2
                                    <ul>
                                        <li>producer</li>
                                        <li>amount</li>
                                    </ul>
                                </li>
                                <li>Petrol3
                                    <ul>
                                        <li>consumer</li>
                                        <li>amount</li>
                                    </ul>
                                </li>
                                <li>Mordovia
                                    <ul>
                                        <li>year</li>
                                        <li>population</li>
                                    </ul>
                                </li>
                            </ul>
                    </div>
                </div>
                <div class="row border-top">
                    <div class="col-lg-12">
                        <h4 style="font-family: Arial;">Виды элементов (диаграммы)</h4>
                        <div class="btn-group-vertical">
                            <button id="lineButton" type="button" class="btn btn-outline-primary" style="margin-bottom: 20px;">График</button>
                            <button id="barButton" type="button" class="btn btn-outline-primary" style="margin-bottom: 20px;">Столбчатая диаграмма</button>
                            <button id="pieButton" type="button" class="btn btn-outline-primary" >Круговая диаграмма</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@c.page>