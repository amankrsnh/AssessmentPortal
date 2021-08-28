// function check(){
//     let sub = document.getElementsByClassName('start')[0]
//     if("disabled" in sub.classList){
//         sub.classList.remove(['disabled'])
//     }else{
//         sub.classList.add(['disabled'])
//     }
// }

function timer(){
	const startingMinutes = 15;
	let time = startingMinutes * 60;

	const countdownEl = document.getElementById('countdown');

    setInterval(function updateCountdown(){
		const minutes= Math.floor(time / 60);
		let seconds = time % 60;
	
		seconds = seconds < 10 ? '0' + seconds : seconds;
	
		countdownEl.innerHTML = minutes+':'+ seconds;
		time--;
	}, 1000);

}