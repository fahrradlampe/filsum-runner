<#import "layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

    <#include "modul/navigation.ftl">

<div class="main">
    <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">

                <h3 class="col-sm-14 col-sm-offset-0">Ergebnisse</h3>


                    <div class="row col-lg-12">
                    <div class="table-responsive">
                        <table id="particpantTable"
                               class="table table-striped table-hover tablesorter  table-condensed">
                            <thead>
                            <tr>
                                <th  class="col-sm-2">Vorname</th>
                                <th data-placeholder="Tippe deinen Nachnamen ein..."  class="col-sm-2">Nachname</th>
                                <th data-placeholder="Tippe deinen Verein ein..."  class="col-sm-2">Verein</th>
                                <th  class="col-sm-1">Geschlecht</th>
                                <th  class="col-sm-1">Jahrgang</th>
                                <th  class="col-sm-1">Strecke</th>
                                <th  class="col-sm-2">Zeit</th>
                                <th  class="col-sm-1"></th>
                            </thead>
                            <tbody>
                                <#list participants as participant>
                                <tr>
                                    <td>${participant.runner.forename}</td>
                                    <td>${participant.runner.surname}</td>
                                    <td>${participant.runner.club}</td>
                                    <td>${participant.runner.gender}</td>
                                    <td>${participant.runner.birthyear?c}</td>
                                    <td>${participant.run.name}</td>
                                    <td>${participant.time!""}</td>
                                    <td><a class="btn btn-primary" href="https://www.dropbox.com/s/s8omlepthw2un9k/Urkunde-KlfK_2015.pdf?dl=0" role="button">Urkunde</a></td>
                                </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                    </div>


            </div>
        </div>

</@layout.default>