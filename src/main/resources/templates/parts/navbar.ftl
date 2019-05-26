<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Project 4</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto">
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/diagram">Построение отчётов</a>
                    </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/view">Просмотр отчета</a>
                    </li>
                </#if>
                <#if user??>
                    <li class="nav-item">
                        <a class="nav-link" href="/component">Построение компонентов</a>
                    </li>
                </#if>
            </ul>

            <ul class="navbar-nav mr-auto">

            </ul>

            <div class="navbar-text mr-3"><#if user??>${name}<#else>Please, login</#if></div>
            <@l.logout />
        </div>
    </div>
</nav>
