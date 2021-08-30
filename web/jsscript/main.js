
let qres =[];
let ares=[];
let i=0,score=0;
const ansList = [];
function showQuestion(){
    if(i===0)
        disablePrevious();
    else if(i===14)
        disableNext();
    else{
        enableBoth();
    }
    var x = document.getElementById("question");
    x.innerHTML=qres[i];
}
function getQnA(){
    $.post("ShowQuestionsControllerServlet",null,function(responseText){
        
            var result=JSON.parse(responseText);
            ares=JSON.parse(result.answerList);
            qres=JSON.parse(result.questionList);
            showQuestion();
            $('.loader').fadeOut('slow');
            timer();
        }); 
}

function next(){
    ++i;
    showQuestion();
    putBackTheAns();
}
function previous(){
    --i;
    showQuestion();
    putBackTheAns();
}
function putBackTheAns(){
        document.querySelector( "input[value='"+ansList[i]+"']").setAttribute('checked','checked');
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
    ansList[i]=userans;
}
function saveData(){
    localStorage["answers"] = JSON.stringify(ansList);
    localStorage["cans"]=JSON.stringify(ares);
    window.location='thanks.html';
}
function showScore(){
    var ans = JSON.parse(localStorage["answers"]);
    var can= JSON.parse(localStorage["cans"]);
    ans.forEach((value,index)=>{
        if(value===can[index])
            ++score;
    });
    document.getElementById("marks_got").innerHTML=score;
    
}
let myInterval;
function timer()
{
    const startingMinutes = 15;
    let time = startingMinutes * 60;

    const countdownEl = document.getElementById('countdown');

    myInterval=setInterval(function updateCountdown()
    {
        
        let minutes= Math.floor(time / 60);
        let seconds = time % 60;
        if(minutes===0 && seconds===0)
            stopTimer();
        seconds = seconds < 10 ? '0' + seconds : seconds;
        minutes = minutes < 10 ? '0' + minutes : minutes;
        countdownEl.innerHTML = minutes+':'+ seconds;
        time--;
    }, 1000);
    
}
function stopTimer(){
    clearInterval(myInterval);
    alert("You ran out of time.\nSubmitting your test....\nClick Ok and Do not close the tab until we evaluate your score!");
    saveData();
}

function enableCheck(checkbox) {
    if(checkbox.checked == true){
        document.getElementById("startAssessment").disabled=false;
        document.getElementById("startAssessment").style.backgroundColor="#3B89C4";
    }else{
        document.getElementById("startAssessment").disabled=true;
        document.getElementById("startAssessment").style.backgroundColor="gray";
   }
}