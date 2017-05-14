
function calculate_results(){

    var score = 0;
    var total_answered = 0;

    $(".question .answer.selected").each(function(i){
        var answer = $(this);
        score += _.n(answer.data('score'));
        total_answered = i+1;
    });

    if(total_answered !== 25){ return; }

    _.p("total_answered: ", total_answered, " score: ", score);

    var key = window.data.scoring_key;

    var result = _.find(key, function(range){
        return(score >= range.min && score <= range.max);
    });

    if(!result){ return alert("There was a problem, we can't find that score"); }

    var sentence = "You scored " + score + ". ";

    if(result.normal){
        sentence += "You're not clinically depressed.<small>That's something to be happy about.<small>";
        $(".results .help").addClass("hide");
    }else{
        sentence += "You are suffering from " + _.lc(result.result) + "."
        $(".results .help").removeClass("hide");
    }

    $(".results .score > .value").text(score);
    $(".results .result > .value").text(result.result);
    $(".results .sentence > .value").html(sentence);

    $(".results").removeClass("hide");
}

function main(){

    $(".question .answer").click(function(){
        var answer = $(this);
        var answers = answer.parent();
        answers.children(".answer").removeClass("selected");
        answer.addClass("selected");
        calculate_results();

        var question = answer.parents(".question");

        if(question.hasClass("suicide") && _.n(answer.data('score')) > 0){
            $(".modal.suicide").removeClass("hide");
        }
    });

    $(".question .answer[data-score='0']").click();

    $(".modal .close").click(function(){ $(this).parents(".modal").addClass("hide"); });
}

$(main);
