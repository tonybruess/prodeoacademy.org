// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require twitter/bootstrap/transition
//= require_tree .

$(document).ready(function() {
    // for some reason this needs to be delayed, otherwise it appears in the wrong place
    setTimeout(function() {
        $('#youtube-link img').tooltip({placement: 'top', trigger: 'manual'}).tooltip('show');
    }, 250);

    $('.carousel').carousel({pause : 'false'});

    $('#youtube-modal').on('shown', function() {
        $('#video').attr('src', $('#video').attr('ssrc'));
    });

    $('#youtube-modal').on('hidden', function() {
        $('#video').attr('src', '');
    });

    $('#enroll').on('submit', function(e) {
        // Prevent form submission
        e.preventDefault();

        // Get the form instance
        var form = $(e.target);
        var button = form.find('button');

        var invalid = false;
        form.find('input').each(function (){
            if ($(this).val() == '' && $(this).attr('required') !== undefined) {
                invalid = true;
            }
        });

        if (invalid) {
            form.find('.alert').removeAttr('style');
            return;
        }

        // Use Ajax to submit form data
        var url = 'https://script.google.com/macros/s/AKfycbwiwe3VRoVbWuoHol84K1EDUkrWv_qkhbsDsHZ4ByjBZ03NPXv2/exec';
        var redirectUrl = 'enroll_success';

        // show the loading
        $('#enroll button').prop('disabled', true).html('Submitting...');
        var jqxhr = $.post(url, form.serialize(), function(data) {
            $(location).attr('href', redirectUrl);
        });
    });

    $('#localize-powered').livequery(function() {
        var el = $(this);
        el.text('Language');
        el.attr('href', '#');
        el.attr('target', '');
    });
});

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=185949604491";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");

!function(a){if(!a.Localize){a.Localize={};for(var e=["translate","untranslate","phrase","initialize","translatePage","setLanguage","getLanguage","detectLanguage","getAvailableLanguages","untranslatePage","bootstrap","prefetch","on","off"],t=0;t<e.length;t++)a.Localize[e[t]]=function(){}}}(window);

Localize.initialize({
    key: 'DF0FpGdPToEXF',
    rememberLanguage: true
});

