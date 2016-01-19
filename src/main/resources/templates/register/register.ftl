<#import "../layout/default.ftl" as layout>
<@layout.default >

    <#include "../modul/navigation.ftl">

<div class="container">


    <div class="col-lg-10 col-lg-offset-1">
        <form name="runner" class="form-horizontal" action="/register/add" role="form"
              method="post">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Anmeldung</h3>
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Name:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="surename" placeholder="Enter email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="forename">Vorname:</label>

                        <div class="col-sm-10">
                            <input type="forename" class="form-control" id="forename" placeholder="Enter Vorname" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">E-Mail:</label>

                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" placeholder="Enter email" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="age">Alter:</label>

                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="age" placeholder="Enter age" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="phone">Telefonnummer:</label>

                        <div class="col-sm-10">
                            <input type="tel" class="form-control" id="phone" placeholder="Enter phone" required>
                        </div>
                    </div>

                    <div class="form-group">

                        <label class="control-label col-sm-2">Geburtstag:</label>

                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="birthdate" placeholder="Birthdate" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="postalAddress">Straße:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="street" placeholder="Street">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="streetnumber">Hausnummer:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="streetnumber" placeholder="Streetnumber">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="ZipCode">Postleitzahl:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="ZipCode" placeholder="Zip Code" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="city">Stadt:</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="city" placeholder="Stadt">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2">Geschlecht:</label>

                        <div class="col-sm-5">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="male"> Male
                            </label>
                        </div>
                        <div class="col-sm-5">
                            <label class="radio-inline">
                                <input type="radio" name="genderRadios" value="female"> Female
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Passwort:</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Speichern</button>
                        </div>
                    </div>

                </div>
            </div>
        </form>
    </div>

</div>


</@layout.default>