$(document).ready(function()
    {
        $("#particpantTable").tablesorter({
            // this will apply the bootstrap theme if "uitheme" widget is included
            // the widgetOptions.uitheme is no longer required to be set
            theme: "bootstrap",

            widthFixed: true,

            dateFormat: "ddmmyyyy",

            headerTemplate: '{content} {icon}', // new in v2.7. Needed to add the bootstrap icon!

            // widget code contained in the tablesorter.widgets.js file
            // use the zebra stripe widget if you plan on hiding any rows (filter widget)
            widgets: [ "uitheme", "filter", "zebra", "saveSort", "stickyHeaders" ],

            // storage function works with a fixed url (for all license/copy, license/edit urls...)
            fixedUrl: "particpantTable",

            widgetOptions: {
                // using the default zebra striping class name, so it actually isn't included in the theme variable above
                // this is ONLY needed for bootstrap theming if you are using the filter widget, because rows are hidden
                zebra: ["even", "odd"],

                // reset filters button
                filter_reset: ".reset",

                // offset for sticky headers
                stickyHeaders_offset : '.navbar-fixed-top'

            }
        });

        // activate elements in main-nav
        var url = window.location.pathname.toLowerCase();
        var elements = url.split("/");
        var className = elements[1];
        if($('.' + className).length > 0){
            $('.' + className).addClass('active');
        }
        getPicturesFromFlickr();
    }

);

$(function () {

    // click hidden href link to retoure cover path (by clicking the button)
    $(document).on("click", '#actualRun', function (e) {
        var runId = e.target.getAttribute("data-runid");
        $('#selectedRun').val(runId);
    });

});

function getPicturesFromFlickr() {

    var url = "https://api.flickr.com/services/rest/?method=flickr.photosets.getPhotos&api_key=73144cfb5c4856b2ec9657674fcadc69&user_id=139699022@N07&format=json&photoset_id=72157663983567746";
    var src;
    $.getJSON(url + "&format=json&jsoncallback=?", function(data){
        $.each(data.photoset.photo, function(i,item){
            var src_small = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_q.jpg";
            var src_big = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_b.jpg";
            //$("<img/>").attr("src", src).appendTo("<a data-gallery>").attr("href", src).attr("").appendTo("#imageslinks");
            $("<a href=" +src_big +" data-gallery> <img src=" +src_small + "> </a>").appendTo("#imageslinks");
        });
    });

}