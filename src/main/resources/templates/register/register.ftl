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
        <form name="runner" class="form-horizontal" action="/register/add" role="form"
              method="post">

            <@spring.bind path="runner" />

            <div class="panel panel-default">
                <div class="panel-body">

                    <div class="form-group">

                        <label class="control-label col-sm-2" for="runs">Strecke:</label>

                        <div class="col-sm-10">


                            <ul name="selectedRuns" id="selectedRuns" class="nav nav-pills registration">
                                <#list runs as run>
                                <li class="">
                                    <a href="#tab28-1-km" data-toggle="tab">
                                        ${run.name}
                                    </a>
                                </li>
                                </#list>
                            </ul>
                        </div>

                    </div>


                    <div class="form-group">

                        <@spring.bind path="runner.surname" />

                        <label class="control-label col-sm-2" for="name">Name:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Name" required>
                        </div>
                    </div>


                    <div class="form-group">
                        <@spring.bind path="runner.forename" />

                        <label class="control-label col-sm-2" for="forename">Vorname:</label>

                        <div class="col-sm-10">
                            <input type="forename" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Vorname" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <@spring.bind path="runner.email" />

                        <label class="control-label col-sm-2" for="email">E-Mail:</label>

                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe E-Mail" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.phone" />

                        <label class="control-label col-sm-2" for="phone">Telefonnummer:</label>

                        <div class="col-sm-10">
                            <input type="tel" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Telefonnummer" required>
                        </div>
                    </div>

                    <!--div class="form-group">
                        <!--@spring.bind path="runner.birthdate" /-->

                        <!--label class="control-label col-sm-2">Geburtstag:</label>

                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Geburtsdatum" required>
                        </div>
                    </div-->

                    <div class="form-group">
                        <@spring.bind path="runner.street" />

                        <label class="control-label col-sm-2" for="postalAddress">Straße:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Straße">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.streetNumber" />

                        <label class="control-label col-sm-2" for="streetnumber">Hausnummer:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Hausnummer">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.zip" />

                        <label class="control-label col-sm-2" for="ZipCode">Postleitzahl:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Postleitzahl" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.city" />

                        <label class="control-label col-sm-2" for="city">Stadt:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Eingabe Stadt">
                        </div>
                    </div>



                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Anmelden</button>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>

</div>
</div>

</@layout.default>