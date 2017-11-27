window.onload = function(){
  var oTop = document.getElementById("to_top");
  var e=document.getElementById("dropdown");
  e.style.left=0+"px";
  e.style.top=0+"px";	
  var screenw = document.documentElement.clientWidth || document.body.clientWidth;
  var screenh = document.documentElement.clientHeight || document.body.clientHeight;
  oTop.style.right = 0+"px";
  oTop.style.top = screenh - oTop.offsetHeight + "px";


  window.onscroll = function(){
    var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
    oTop.style.top =screenh - oTop.offsetHeight + scrolltop +"px";
    e.style.top =scrolltop +"px";
  }
  oTop.onclick = function(){
    document.documentElement.scrollTop = document.body.scrollTop =0;
  }
} 




