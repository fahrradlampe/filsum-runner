<#import "../layout/default.ftl" as layout>
<@layout.default >

    <#include "../modul/navigation.ftl">

<div class="container">


    <#if products?size == 0 || customers? size == 0>
        <div class="alert alert-danger">
            Bitte legen sie zuerst mindestens einen Kunden und ein Produkt an.
        </div>
    <#else>

        <#if warn??>
            <div class="alert alert-danger">
            ${warn}
            </div>
        </#if>

        <#if success??>
            <div class="alert alert-success">
            ${success}
            </div>
        </#if>


        <div class="well">
            <h3>Neue Lizenz</h3>
            <a href="/license/all" class="btn btn-primary">Alle Lizenzen</a>
        </div>

        <#if formError??>
            <div class="alert alert-danger">
            ${formError}
            </div>
        </#if>

        <div class="col-lg-10 col-lg-offset-1">
            <form name="licensedata" class="form-horizontal" action="/license/add" role="form"
                  method="post">
                <div class="panel panel-default">
                    <div class="panel-heading">Allgemein</div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputName">Produkt*</label>

                            <div class="col-lg-10">
                                <select id="selectProduct" onchange="changeFeature();" name="selectedProduct"
                                        class="form-control">

                                    <#list products as product>
                                        <#assign id=product.productId?c/>
                                        <#if product.productId == licensedata.selectedProduct>
                                            <option value="${product.productId?c}" feature="${featureProductList[id]}"
                                                    selected>${product.name}</option>
                                        <#else>
                                            <option value="${product.productId?c}"
                                                    feature="${featureProductList[id]}">${product.name}</option>
                                        </#if>
                                    </#list>
                                </select>
                            </div>

                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputName">Kunden*</label>

                            <div class="col-lg-10">
                                <select name="selectedCustomer" class="form-control">
                                    <#list customers as customer>
                                        <#if customer.customerId == licensedata.selectedCustomer>
                                            <option value="${customer.customerId?c}" selected>${customer.name}</option>
                                        <#else>
                                            <option value="${customer.customerId?c}">${customer.name}</option>
                                        </#if>
                                    </#list>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputInfo">Info</label>

                            <div class="col-lg-4">
                                <input value="${licensedata.info!""}" name="info" id="inputInfo" type="text"
                                       class="form-control">
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Zeitraum</div>
                    <div class="panel-body">


                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputValidUntil">Gültig Ab*</label>

                            <div class="col-lg-4">
                                <input value="${licensedata.validFrom}" name="validFrom" id="inputValidUntil"
                                       class="form-control datepicker" required>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputValidDuration">Dauer (Monate)*</label>

                            <div class="col-lg-4">
                                <input value="${licensedata.validDuration}" name="validDuration" min="1"
                                       id="inputValidDuration" type="number" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputSendEmail">automatisch neue*</label>

                            <div class="col-lg-4 ">
                                <div class="checkbox">
                                    <#if licensedata.isSendNewLicenseSet()>
                                        <input name="sendNewLicense" id="inputSendEmail" type="checkbox" checked>
                                    <#else>
                                        <input name="sendNewLicense" id="inputSendEmail" type="checkbox">
                                    </#if>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputMaxDate">Maximal Gültig Bis</label>

                            <div class="col-lg-4">
                                <input value="${licensedata.maxDate!""}" name="maxDate" id="inputMaxDate"
                                       class="form-control datepicker">
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">Inhalt</div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputLicenseTyp">Typ*</label>

                            <div class="col-lg-4">
                                <input value="${licensedata.licenseType!""}" name="licenseType" id="inputLicenseTyp" type="text"
                                       class="form-control" placeholder="Entwicklung,Test,Produktion" required>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputFeature">Features</label>

                            <div class="col-lg-10">
                                <#assign id=products[0].productId?c/>
                                <#if licensedata.features != "">
                                    <textarea pattern=".{3,}" name="features" rows="10" class="form-control"
                                              id="inputFeature">${licensedata.features}</textarea>
                                <#else>
                                    <textarea pattern=".{3,}" name="features" rows="10" class="form-control"
                                              id="inputFeature">${featureProductList[id]}</textarea>
                                </#if>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputName">Key File*</label>

                            <div class="col-lg-10">
                                <select id="selectKey" name="selectedKey" class="form-control" required>
                                    <#list keys as key>
                                        <option value="${key.keyFileId?c}">${key.name}</option>
                                    </#list>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="inputName">Token</label>

                            <div class="col-lg-10">
                                <input value="${licensedata.token!""}" name="token" id="inputToken" type="text"
                                       class="form-control">
                            </div>
                        </div>
                    </div>
                </div>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary">Erstellen</button>
                    </div>
                </div>


            </form>
        </div>

        </section>
    </#if >
</div>


</@layout.default>