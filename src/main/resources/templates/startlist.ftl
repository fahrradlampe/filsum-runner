<#import "layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

    <#include "modul/navigation.ftl">

<div class="main">
    <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">

                <h3 class="col-sm-14 col-sm-offset-0">Teilnehmerliste</h3>

                <div class="row">
                    <div class="col-lg-12">
                        <table id="particpantTable"
                               class="table table-striped table-hover tablesorter table-responsive table-condensed">
                            <thead>
                            <tr>
                                <th width="20%">Vorname</th>
                                <th width="20%">Nachname</th>
                                <th width="8%">Verein</th>
                                <th width="5%">Geschlecht</th>
                                <th width="8%">Jahrgang</th>
                                <th width="8%">Strecke</th>
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


                                </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>

</@layout.default>