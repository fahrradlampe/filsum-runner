<#import "../layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

    <#include "../modul/navigation.ftl">

<div class="container">


    <div class="col-lg-10 col-lg-offset-1">
        <form name="runner" class="form-horizontal" action="/register/add" role="form"
              method="post">

            <@spring.bind path="runner" />

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Anmeldung</h3>
                </div>
                <div class="panel-body">

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

                    <div class="form-group">
                        <@spring.bind path="runner.birthdate" />

                        <label class="control-label col-sm-2">Geburtstag:</label>

                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Birthdate" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.street" />

                        <label class="control-label col-sm-2" for="postalAddress">Straße:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Street">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.streetNumber" />

                        <label class="control-label col-sm-2" for="streetnumber">Hausnummer:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Streetnumber">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.zip" />

                        <label class="control-label col-sm-2" for="ZipCode">Postleitzahl:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Zip Code" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.city" />

                        <label class="control-label col-sm-2" for="city">Stadt:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Stadt">
                        </div>
                    </div>

                    <div class="form-group">
                        <@spring.bind path="runner.gender" />

                        <label class="control-label col-sm-2">Geschlecht:</label>

                        <div class="col-sm-5">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="m"> Männlich
                            </label>
                        </div>
                        <div class="col-sm-5">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="f"> Weiblich
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <@spring.bind path="runner.gender" />

                        <label class="control-label col-sm-2" for="pwd">Passwort:</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="${spring.status.expression}" id="${spring.status.expression}" placeholder="Enter password">
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


</@layout.default>