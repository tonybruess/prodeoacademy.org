---
layout: default
---

<div class='container'>
    <div class='carousel slide'>
        <div class='carousel-inner'>
            <div class='container'>
                <div class='carousel-caption'>
                    <a id='youtube-link' href='https://www.youtube.com/watch?v=__PjDIdam7o' data-toggle='modal'><!--
                    <a id='youtube-link' href='#youtube-modal' data-toggle='modal'>
-->
                        <img class='pull-left' data-position='top' rel='tooltip' src='/assets/youtube.png' title='Watch our video'>
                    </a>
                    <h1>College Starts Here</h1>
                  <!--  <a class='btn' href='https://prodeo-academy.breezy.hr/'>Now Hiring &raquo;</a>-->
                </div>
            </div>
            {% assign total = 10 %}
            {% assign start = site.time | date: "%s" | modulo: total %}
            {% for num in (1..total) %}
                <div class='{% if forloop.index0 == start %} active {% endif %}item'>
                    <img src='/assets/index/{{ num }}.jpg'>
                </div>
            {% endfor %}
        </div>
    </div>
</div>
<div class='container'>
    <div class='row center' id='index'>
        <div class='span4'>
            <div class='hero-unit' id='families'>
                <h3>College Starts Here</h3>
                <div class='btn-group dropup'>
                    <a class='btn btn-large dropdown-toggle' href='/enroll'>
                        Enroll Your Child
                    </a>
                </div>
            </div>
        </div>
        <div class='span4'>
            <div class='hero-unit' id='donors'>
                <h3>Close the Gap</h3>
                <div class='btn-group dropup'>
                    <a class='btn btn-large dropdown-toggle' href='https://prodeo-academy.breezy.hr/'>
                        Careers
                    </a>
                </div>
            </div>
        </div><!--
        <div class='span4'>
            <div class='hero-unit' id='tutors'>
                <h3>Back to School</h3>
                <div class='btn-group dropup'>
                    <a class='btn btn-large' data-toggle='modal' href='https://bit.ly/2xRPySy'>More Information</a>
                </div>
            </div>
        </div>-->
         <div class='span4'>
            <div class='hero-unit' id='tutors'>
                <h3>Build the Future</h3>
                <div class='btn-group dropup'>
                    <a class='btn btn-large' data-toggle='modal' href='#donate'>Donate Today</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class='modal hide fade' id='stay-in-touch'>
    <div class='modal-header'>
        <button class='close' data-dismiss='modal' type='button'>x</button>
        <h3>Get in Touch</h3>
    </div>
    <div class='modal-body'>
        <p class='lead'>If you’re interested in learning more about our inspiring community, feel free to contact us.</p>
        <br>
        <p>
            <b>Lahens St Fleur, Student Recruiter</b>
        </p>
        <p>
            <a href='mailto:LahensStFleur@prodeoacademy.org'>LahensStFleur@prodeoacademy.org</a>
        </p>
        <p>
            <a href='tel:6122071706'>(612) 207-1706</a>
        </p>
    </div>
</div>
<div class='modal hide fade' id='youtube-modal'>
    <div class='modal-header'>
        <button class='close' data-dismiss='modal' id='stop-video' type='button'>x</button>
        <h3>Video</h3>
    </div>
    <div class='modal-body'>
        <iframe allowfullscreen frameborder='0' height='300px' id='video' ssrc='//www.youtube.com/embed/QmSOaDtUN74?autoplay=1' width='530px'></iframe>
    </div>
</div>
<div class='modal hide fade' id='donate'>
    <div class='modal-header'>
        <button class='close' data-dismiss='modal' id='stop-video' type='button'>x</button>
        <h3>Donate Today</h3>
    </div>
    <div class='modal-body'>
        <div class='row-fluid'>
            <div class='span7'>
                <div id='razoo_donation_widget'>
                    <p class='lead'>Donate online</p>
                    <br>
                    <div class='center'>
                        <a href='http://www.razoo.com/story/Education-Prodeo-Academy' target='_blank'>
                            <span>Click to donate online</span>
                            <img src='/assets/givemn.png'>
                        </a>
                    </div>
                </div>
                <script type='text/javascript'>
                    var r_params = {
                        "title":"Prodeo Academy",
                        "short_description":"Help close the achievement gap in MN! We are thankful for any level of support.",
                        "long_description":"Prodeo Academy is a K-8, free, public charter school in Minneapolis. From the first day of kindergarten, we are preparing our children for college. At Prodeo Academy, every student is engaged in learning. We provide individualized instruction for every child. Excellence is our standard, for both students and teachers. At Prodeo Academy we close the achievement gap by using the best practices in education from the top academic schools in the country. Results matter:   we strive to produce results that are among the highest performing schools in the country. Together with our families, we provide a structure and culture of success.",
                        "color":"#212359",
                        "donation_options": {
                            25: "",
                            50: "",
                            75: "",
                            100: "",
                        },
                        "image":"http://prodeoacademy.org/assets/logo.png"
                    };
                    var r_identifier='Education-Prodeo-Academy';
                </script>
                <script id='razoo_widget_loader_script' src='https://www.razoo.com/javascripts/widget_loader.js' type='text/javascript'></script>
            </div>
            <div class='span5'>
                <p class='lead'>Donate by mail</p>
                <p>To make a contribution by mail, send a check to the address below.</p>
                <p>
                    Attention: Rick Campion
                    <br>
                    Prodeo Academy
                    <br>
                    620 Olson Memorial Highway
                    <br>
                    Minneapolis, MN 55411
                </p>
                <p>Federal Tax ID: 80-0743744</p>
            </div>
        </div>
    </div>
</div>

