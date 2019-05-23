<#import "parts/common.ftl" as c>

<@c.page>
<div id="content" class="container-fluid">
    <div class="row" style="margin-top: 10px;">
        <div class="col-lg-9 border-right border-dark" style="font-family: 'Arial'; font-size: 14pt;">
            <!-- <div class="row">
                <div class="col-lg-6">
                    <h3 style="font-family: Arial;">New report name</h3>
                </div>
                <div class="col-lg-6">
                    <button type="button" class="btn btn-outline-primary">Добавить элемент отчета</button>
                    <button type="button" class="btn btn-outline-danger">Удалить элемент отчета</button>
                    <button type="button" class="btn btn-outline-success">Сохранить отчет</button>
                </div>
            </div> -->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1>Создание нового отчета</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <input type="text" name="componentTitle" style="font-family: Arial; outline: none; border:none; width: 100%; text-align: center; font-size: 22pt;" placeholder="Название отчета" />
                    <!-- <div class="float-right">
                    <button type="button" class="btn btn-outline-primary">Добавить компонент</button>
                    <button type="button" class="btn btn-outline-danger">Удалить компонент</button>
                    <button type="button" class="btn btn-outline-success">Сохранить отчет</button>
                </div>
 -->				</div>
            </div>
            <div class="row" id="report">

            </div>
            <div style="margin-top: 40px;">
                <div style="text-align: center;">
                    <button type="button" class="btn btn-outline-success">Сохранить отчёт</button>
                </div>
            </div>
        </div>
        <div class="col-lg-3" style="min-height: 90vh;">
            <div class="row">
                <div class="col-lg-12">
                    <h4 style="font-family: Arial;">Все компоненты</h3>
                        <ul class="component">
                            <li id="component1" class="component">Компонент 1</li>
                            <li id="component2" class="component">Компонент 2</li>
                            <li id="component3" class="component">Компонент 3</li>
                            <li id="component4" class="component">Компонент 4</li>
                            <li id="component5" class="component">Компонент 5</li>
                        </ul>
                </div>
                <canvas id="Cnvs" width="0" height="0">
            </div>

            <!-- 			<div class="row border-top">
                            <div class="col-lg-12">
                                <h4 style="font-family: Arial;">Виды элементов</h3>
                            </div>
                        </div> -->
        </div>
    </div>
</div>

</@c.page>