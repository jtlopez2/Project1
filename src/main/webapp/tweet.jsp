<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tweet Page</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<div id="navbar">
  <a href="index.jsp">Log in</a>
  <a class ="active" href="">Tweet</a>
  <a href="">Friends</a>
  <a href="">Top Tweets</a>
</div>

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '1897639163860326',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v3.0'
    });
    FB.ui({
    	  method: 'share_open_graph',
    	  action_type: 'og.likes',
    	  action_properties: JSON.stringify({
    	    object:'https://developers.facebook.com/docs/',
    	  })
    	}, function(response){
    	  // Debug response (optional)
    	  console.log(response);
    	});
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</body>
</html>