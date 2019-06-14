<#import "parts/common.ftl" as c>

<@c.page>
<div id="content" class="container-fluid">
    <div class="row" style="margin-top: 10px;">
        <div class="col-lg-10 border-right border-dark" style="font-family: 'Arial'; font-size: 14pt;">
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
        <div class="col-lg-2" style="min-height: 90vh;">
            <div class="row">
                <div class="col-lg-12">
                        <ul class="component">
                            <li id="component1" class="component">Компонент 1</li>
                            <li id="component2" class="component">Компонент 2</li>
                            <li id="component3" class="component">Компонент 3</li>
                            <li id="component4" class="component">Компонент 4</li>
                            <li id="component5" class="component">Компонент 5</li>
                        </ul>
                  <form action="/diagram/file" method="post" enctype="multipart/form-data">
                      <div class="form-group">
                          <div class="custom-file" id="customFile" lang="es">
                              <input type="file" name="file" class="custom-file-input" id="inputFile" aria-describedby="fileHelp">
                              <label class="custom-file-label" for="inputFile">
                                  Выбирете файл
                              </label>
                          </div>
                      </div>
                      <input type="hidden" name="_csrf" value="${_csrf.token}" />
                      <div class="form-group">
                          <button type="submit" class="btn btn-primary">Загрузить данные для графиков</button>
                      </div>
                  </form>
                  <#if hasFile??>
                    <div class="form-group">
                        ${fileData.id}  ${fileData.getName()}
                    </div>
                  </#if>
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