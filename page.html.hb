<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/dry.underscore.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/glyphicons.css">
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384&#45;BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> -->
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>

    <body class="clearfix">
        <div class="modal suicide hide">
            <div class="container">
                <div class="header">
                    <div class="title"></div>
                    <div class="close"><span class="glyphicon glyphicon-remove"></span></div>
                </div>
                <div class="content clearfix">
                    If you're thinking about suicide, please <a target="_blank" href="https://www.helpguide.org/articles/suicide-prevention/suicide-help-dealing-with-your-suicidal-thoughts-and-feelings.htm">read this</a> or call 1-800-273-TALK (8255) in the U.S.<br/> <br/>
                    There is hope and help.<br/> <br/>
                    To find a suicide helpline outside the U.S. visit <a href="http://www.iasp.info/resources/Crisis_Centres/" target="_blank">IASP</a> or <a href="http://www.suicide.org/international-suicide-hotlines.html" target="_blank">Suicide.org</a>.
                </div>
            </div>
        </div>
        <div class="container clearfix">
            <div class="checklist clearfix">
                <div class="header">
                    <div class="title">Burns Depression Checklist</div>
                    <div class="instructions">Instructions: <span>Put a check to indicate how much you have experienced each symptom during the past week, including today.  Please answer all 25 items.</span></div>
                </div>

                {{#each checklist}}
                <div class="questions">
                    <div class="title">
                        <div class="text">{{title}}</div>
                        <div class="answers">
                        {{#each ../answers}}
                            <div class="answer" data-score="{{score}}"><span class="label">{{title}}</span></div>
                        {{/each}}
                        </div>
                    </div>
                    {{#each questions}}
                    <div class="question {{#if first}}active{{/if}} {{#if suicide}}suicide{{/if}}">
                        <div class="text">{{number}}. {{text}}</div>
                        <div class="answers">
                            {{#each ../../answers}}
                            <div class="answer" data-score="{{score}}">
                                <span class="icon glyphicon glyphicon-ok"></span>
                                <span class="label">{{title}}</span>
                            </div>
                            {{/each}}
                        </div>
                    </div>
                    {{/each}}
                </div>
                {{/each}}
            </div>


            <div class="results clearfix hide">
                <div class="header hide">
                    <div class="title">Results</div>
                    <!-- <div class="score">Score: <span class="value"></span></div>   -->
                    <!-- <div class="result">Result: <span class="value"></span></div> -->
                </div>
                <div class="content">
                    <div class="sentence"><span class="value"></span></div>
                    <div class="help">
                        <div class="hope">If you treat your depression you will feel better. I promise. There is hope.</div>
                        <div class="resources">Read <a target="_blank" href="https://www.amazon.com/Feeling-Good-New-Mood-Therapy/dp/0380810336">this book</a> or <a target="_blank" href="https://therapists.psychologytoday.com/rms">find a therapist</a>.</div>
                        <small>(In a double blind clinical study the book relieved the symptoms of depression as effectively as medication.)</small>
                        <small class="smaller">(I'm not getting paid for the link.)</small>
                    </div>
                    <div class="legend hide">
                        {{#legend}}
                        <div class="title">{{title}}</div>
                        <div class="values">
                            {{#each values}}
                            <div class="value">
                                <span class="range">{{min}}-{{max}}</span>
                                <span class="result">{{result}}</span>
                            </div>
                            {{/each}}
                        </div>
                        {{/legend}}
                    </div>
                </div>
            </div>
        </div>
    </body>

    <script type="text/javascript"> window.data = _.parse({{{page_data}}}); </script>

</html>
