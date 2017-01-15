$(document).ready(function() {
  console.log("ZT");

  var sysValues = document.getElementsByClassName("sys");

  [].forEach.call(sysValues, function (value) {
    sysValue = value.innerHTML;
    if (sysValue < 100)      value.style.backgroundColor = "yellow";
    else if (sysValue <= 120) value.style.backgroundColor = "lime";
    else if (sysValue <= 130) {
      value.style.backgroundColor = "green";
      value.style.color = "white";
    } else if (sysValue <= 140) value.style.backgroundColor = "yellow";
    else if (sysValue <= 160) {
      value.style.backgroundColor = "tomato";
      value.style.color = "white";
    } else if (sysValue <= 180) {
      value.style.backgroundColor = "red";
      value.style.color = "white";
    } else {
      value.style.backgroundColor = "firebrick";
      value.style.color = "white";
    }
  });

  var diaValues = document.getElementsByClassName("dia");

  [].forEach.call(diaValues, function (value) {
    diaValue = value.innerHTML;
    if (diaValue < 60)        value.style.backgroundColor = "yellow";
    else if (diaValue <= 80)  value.style.backgroundColor = "lime";
    else if (diaValue <= 85) {
     value.style.backgroundColor = "green";
     value.style.color = "white";
    } else if (diaValue <= 90)  value.style.backgroundColor = "yellow";
    else if (diaValue <= 100) {
      value.style.backgroundColor = "tomato";
      value.style.color = "white";
    } else if (diaValue <= 110) {
      value.style.backgroundColor = "red";
      value.style.color = "white";
    } else {
      value.style.backgroundColor = "firebrick";
      value.style.color = "white";
    }
  });

  var pulseValues = document.getElementsByClassName("pulse");

  [].forEach.call(pulseValues, function (value) {
    pulseValue = value.innerHTML;
    if (pulseValue <= 80)       value.style.backgroundColor = "lightyellow";
    else if (pulseValue <= 85) {
      value.style.backgroundColor = "green";
      value.style.color = "white";
    } else if (pulseValue <= 90) {
      value.style.backgroundColor = "tomato";
      value.style.color = "white";
    } else if (pulseValue <= 100) {
      value.style.backgroundColor = "red";
      value.style.color = "white";
    } else {
      value.style.backgroundColor = "firebrick";
      value.style.color = "white";
    }
  });

  var artmValues = document.getElementsByClassName("artm");

  [].forEach.call(artmValues, function (value) {
    artmValue = value.innerHTML;
    if (artmValue === 'Y')  value.style.backgroundColor = "darkgrey";
  });
});
