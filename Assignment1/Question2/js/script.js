window.onload = display;


var myPics = new Array("imgs/clearPicture.jpg","imgs/cloudy.jpg","imgs/cloudyPicture.jpg","imgs/default.jpg","imgs/mistPicture.jpg","imgs/noon.jpg","imgs/rainPicture.jpg",
	"imgs/stormPicture.jpg","imgs/snowPicture.jpg");

var msgs = [  
    "Hey!! You are in middle of the night. Its high time you sleep",
    "Good Morning!! Have a wonderful day!!",
    "Have a happy noon!!",
    "Good Evening! Have a nice time!!",
    "Good night and sleep tight!"  
    ];


function display() {
    var randomno = Math.floor(Math.random() * myPics.length);
    document.getElementById("displayimg").src = myPics[randomno];

    var today = new Date();
    var d = today.getDate();
    var m = today.getMonth()+1;
    var y = today.getFullYear();

    hr = today.getHours();                               
    var DJ = 0;                                               
    if ((hr >= 6) && (hr < 12)) { DJ = 1; }   
    if ((hr >= 12) && (hr < 17)) { DJ = 2; } 
    if ((hr >= 17) && (hr < 20)) { DJ = 3; } 
    if ((hr >= 20) && (hr < 24)) { DJ = 4; } 
    document.getElementById('text').innerHTML = msgs[DJ];
  
}