/**
This is the JavaScript File for weatheredwatcher.com
*/



function loadPage(site){
	
	switch(site){
		
		case 'twitter':
		myUrl= "http://www.twitter.com/davidduggins";
		break;
		case 'google':
		myUrl= "http://www.google.com/profiles/weatheredwatcher";
		break;
		case 'facebook':
		myUrl = "http://www.facebook.com/pages/weatheredwatchercom/260916628595?ref=ts";
		break;
		case 'linkedin':
		myUrl = "http://www.linkedin.com/in/davidduggins";
		break;
		case 'lastfm':
		myUrl = "http://www.last.fm/user/minasmir";
		break;
		case 'dA':
		myUrl = "http://weatheredwatcher.deviantart.com";
		break;
		case 'github':
		myUrl = "http://www.github.com/weatheredwatcher";
		break;
		default:
		myUrl="http://www.weatheredwatcher.com";
		break;
		
	}
	
	Modalbox.show('<div class=\'warning\'><p>Are you sure to navigate away from this site?</p> <input type=\'button\' value=\'Go!\'onclick=\'document.location=\"'+ myUrl +'\"\' /> or <input type=\'button\' value=\'Stay\' onclick=\'Modalbox.hide()\' /></div>',{title: "You are About to Leave This Site", width: 300});
	
}
