
let qres =[];
let ares=[];
let i=0,score=0;
const selectedAns = new Map();
function showQuestion(){
    console.log("uploading");
    if(i===0)
        disablePrevious();
    else if(i===14)
        disableNext();
    else{
        enableBoth();
    }
    var x = document.getElementById("question");
    x.innerHTML=qres[i];
    console.log(qres[i]);
}
function getQnA(){
    //window.location="quiz.html";
    $.post("ShowQuestionsControllerServlet",null,function(responseText){
            var result=JSON.parse(responseText);
            ares=JSON.parse(result.answerList);
            qres=JSON.parse(result.questionList);
            console.log(qres);
            console.log(ares);
            console.log("bcsajba");
            showQuestion();
        });    
}
//function checkLoad(){
//    
//        $.post("ShowQuestionsControllerServlet",null,function(responseText){
//            var result=JSON.parse(responseText);
//            ares=JSON.parse(result.answerList);
//            qres=JSON.parse(result.questionList);
//            console.log(qres);
//            console.log(ares);
//            console.log("bcsajba");
//            showQuestion();
//        });
//}

function next(){
    ++i;
    showQuestion();
}
function previous(){
    --i;
    showQuestion();
}
function disablePrevious(){
    document.getElementById("prev").disabled = true;
}
function disableNext(){
    document.getElementById("next").disabled = true;
}
function enableBoth(){
    document.getElementById("prev").disabled = false;
    document.getElementById("next").disabled = false;
}

function saveSelectedAnswer(){
    var userans=$("input[type='radio'][name='ques1']:checked").val();
    selectedAns.set(i,userans.trim());
}

function calculateScores(){
    for (let [key, value] of map) {
        if(value===ares[key].trim())
            score+=1;
    } 
}

function showScore(){
    document.getElementById("marks_got").innerHTML=score;
}