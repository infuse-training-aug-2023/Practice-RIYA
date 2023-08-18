const clock = document.getElementById("clock");
const greet = document.getElementById("Greet");

function updateTime() {
    const now = new Date();
    const hours = now.getHours()
    const minutes = now.getMinutes()
    const seconds = now.getSeconds()
    clock.innerHTML = hours + " : " + minutes + " : " + seconds;

    if(hours<12 && hours>=0){
        greet.innerHTML = "Good Morning :)"
    }
    else if(hours>12 && hours < 16){
        greet.innerHTML = "Good Afternoon :)"
    }
    else{
        greet.innerHTML = "Good Evening :)"
    }
}

    setInterval(updateTime, 1000)