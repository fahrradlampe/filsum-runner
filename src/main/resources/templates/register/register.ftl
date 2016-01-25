<#import "../layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

    <#include "../modul/navigation.ftl">

<div class="main">
<div class="container">


    <#if formError??>
        <div class="alert alert-danger">
        ${formError}
        </div>
    </#if>

    <div class="col-lg-10 col-lg-offset-1">
        <form name="runnerData" class="form-horizontal" action="/register/add" role="form"
              method="post">

            <@spring.bind path="runnerData" />

            <div class="panel panel-default">
                <div class="panel-body">

                    <div class="form-group">

                        <label class="control-label col-sm-2" for="runs">Strecke*:</label>

                        <div class="col-sm-10">


                            <ul name="runs" id="runs" class="nav nav-pills registration">
                                <#list runs as run>
                                <li class="">
                                    <a id="actualRun" href="#run${run.runId}" data-runid="${run.runId}" data-toggle="tab">
                                        ${run.name}
                                    </a>
                                </li>
                                </#list>
                            </ul>
                            <@spring.bind path="runnerData.selectedRun" />
                            <input id="selectedRun" name="selectedRun" type="hidden" value="">
                        </div>

                    </div>

                    <div class="form-group">
                        <div class="col-lg-8 col-md-offset-2">
                            <label class="radio-inline">
                                <input class="radio-row" name="gender" type="radio" id="female" value="w" checked> weiblich
                            </label>
                            <label class="radio-inline">
                                <input class="radio-row" name="gender" type="radio" id="male" value="m"> männlich
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.forename" />

                        <label class="control-label col-sm-2" for="forename">Vorname*:</label>

                        <div class="col-sm-10">
                            <input type="forename" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Vorname" required>
                        </div>
                    </div>

                    <div class="form-group">

                        <@spring.bind path="runnerData.runner.surname" />

                        <label class="control-label col-sm-2" for="name">Name*:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.birthyear" />

                        <label class="control-label col-sm-2" for="birthyear">Geburtsjahr*:</label>

                        <div class="col-sm-10">
                            <input type="number" class="form-control"name="${spring.status.expression}" id="${spring.status.expression}" value="1984" min="1900" max="2020"  required>

                        </div>
                    </div>


                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.street" />

                        <label class="control-label col-sm-2" for="postalAddress">Straße:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Straße">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.streetNumber" />

                        <label class="control-label col-sm-2" for="streetnumber">Hausnummer:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Hausnummer">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.zip" />

                        <label class="control-label col-sm-2" for="ZipCode">Postleitzahl:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Postleitzahl" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.city" />

                        <label class="control-label col-sm-2" for="city">Stadt:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Stadt">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.club" />

                        <label class="control-label col-sm-2" for="city">Verein:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Verein">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.shirt" />

                        <label class="control-label col-sm-2" for="city">T-Shirt:</label>

                        <div class="col-sm-10">
                            <select id="selectProduct"  name="selectedProduct"
                                    class="form-control" required>
                                <option value="s">S</option>
                                <option value="m">M</option>
                                <option value="l">L</option>
                                <option value="xl">XL</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runnerData.runner.email" />

                        <label class="control-label col-sm-2" for="email">E-Mail*:</label>

                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe E-Mail" required>
                        </div>
                    </div>

                    <div class="form-group">

                        <label class="control-label col-sm-2" for="inputCheck"></label>
                        <div class="col-sm-10">

                            <input name="" id="inputCheck" type="checkbox" required>

                            Haftungsausschluss des Veranstalters für Schäden jeglicher Art an. Er bestätigt, gesund und in einem ausreichenden Trainingszustand zu sein.
                            Hinweis das Teilnehmer in Kürze ne Email erhält mit einer Zahlungsaufforderung
                            Hinweis, dass erst nach Eingang der Zahlung ein Erscheinen in der Teilnehmerliste erfolgt und Anmeldung dann abgeschlossen ist.

                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Verbindlich Anmelden</button>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>

</div>
</div>

</@layout.default>