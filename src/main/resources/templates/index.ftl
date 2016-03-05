<#import "layout/default.ftl" as layout>
<#import "/spring.ftl" as spring/>
<@layout.default >

<#include "modul/navigation.ftl">

<div class="main">
    <div class="container">


        <div class="jumbotron homecontainer">
            <div class="container">
                <img class="logo img-responsive center-block" src="../../images/logo_filsum_loeppt.gif">
                <h3 class="text-center">24.Juni 2016</h3>
                <p><a class="btn btn-primary btn-lg center-block btn-filsum" href="/register" role="button">Anmelden</a></p>
            </div>
        </div>

    <div class="row">
      <div class="col-sm-4 col-md-2">
        <div class="thumbnail">
          <a href="http://www.ford-debuhr-filsum.de">
            <img class="media-logo center-block" src="../images/Logo_de_Buhr_9_cm.png" alt="Autohaus de Buhr E.K.">
          </a>
        </div>
      </div>

      <div class="col-sm-4 col-md-2">
          <div class="thumbnail">
            <a href="http://www.cramers-filsum.de">
              <img class="media-logo" src="../images/Cramers_9cm.png" alt="Cramers">
            </a>
          </div>
      </div>

      <div class="col-sm-4 col-md-2">
            <div class="thumbnail">
              <a href="http://www.smb-haustueren.de">
                <img class="media-logo" src="../images/Logo_SMB_nurLogo_9cm.png" alt="SMB Kunststofftechnik">
              </a>

            </div>
      </div>

        <div class="col-sm-4 col-md-2">
          <div class="thumbnail">
            <img class="media-logo" src="../images/Logo_Pleis_nurLogo_9cm.png" alt="Dentallabor Schulte Dental">

          </div>
        </div>

      <div class="col-sm-4 col-md-2">
        <div class="thumbnail">
          <img class="media-logo" src="../images/Schulte_nurLogo_9cm.png" alt="Dentallabor Schulte Dental">

        </div>
      </div>


       <div class="col-sm-4 col-md-2">
           <div class="thumbnail">
              <a href="http://www.schmidt-bauunternehmung.de">
                  <img class="media-logo" src="../images/Logo_Focke_Schmidt_nurLogo_9cm.png" alt="Focke Schmidt">
              </a>
           </div>
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