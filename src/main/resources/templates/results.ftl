<#import "layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

    <#include "modul/navigation.ftl">

<div class="main">
    <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">

                <h3 class="col-sm-14 col-sm-offset-0">Ergebnisse</h3>


                <ul name="runs" id="runs" class="nav nav-pills registration">
                    <#list runs as run>
                        <li class="runList" data-runid="${run.runId}">
                            <a id="actualResultRun" href="results/${run.runId}#run${run.runId}" data-runid="${run.runId}"
                               data-toggle="tab">
                            ${run.name}
                            </a>
                        </li>

                    </#list>
                </ul>
                <br/>
                <br/>

                <#if participants?size=0>
                    <p>Aktuell liegen noch keine Ergbnisse vor.</p>
                <#else>


                    <div class="row col-lg-12">
                        <div class="table-responsive">
                            <table id="particpantTable"
                                   class="table table-striped table-hover tablesorter  table-condensed">
                                <thead>
                                <tr>
                                    <th class="col-sm-2">Vorname</th>
                                    <th data-placeholder="Tippe deinen Nachnamen ein..." class="col-sm-2">Nachname</th>
                                    <th data-placeholder="Tippe deinen Verein ein..." class="col-sm-2">Verein</th>
                                    <th class="col-sm-1">Geschlecht</th>
                                    <th class="col-sm-1">Jahrgang</th>
                                    <th class="col-sm-2">Zeit</th>
                                    <th data-sorter="false" class="col-sm-1">Platzierung*</th>
                                    <th class="col-sm-1"></th>
                                </thead>
                                <tbody>
                                    <#list participants as participant>
                                    <tr>
                                        <td>${participant.runner.forename}</td>
                                        <td>${participant.runner.surname}</td>
                                        <td>${participant.runner.club}</td>
                                        <td>${participant.runner.gender}</td>
                                        <td>${participant.runner.birthyear?c}</td>
                                        <td>${participant.runtime}</td>
                                        <td></td>
                                        <td>
                                            <a href="https://www.dropbox.com/s/s8omlepthw2un9k/${participant.runner.forename}_${participant.runner.surname}.pdf">Urkunde</a>
                                        </td>
                                    </tr>
                                    </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </#if>
            </div>


            <#if participants?has_content>
                <div class="panel-footer">
                    *Die Platzierung wird abhängig von der gewählten Sortierung und Filterung der Tabelle berechnet.
                </div>
            </#if>
        </div>

</@layout.default>