<#import "layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

<#include "modul/navigation.ftl">

<div class="main">
    <div class="container">


        <div class="jumbotron homecontainer">
            <div class="container">


                <img class="logo" src="../../images/logo_filsum_loeppt.gif">

                <h3 class="text-center">24.Juni 2016</h3>
                <p><a class="btn btn-primary btn-lg center-block btn-filsum" href="/register" role="button">Anmelden</a></p>
            </div>
        </div>


    </div>
</div>

<script>
    setInterval(function() {
        window.location.reload();
    }, 12000000);
</script>
</@layout.default>