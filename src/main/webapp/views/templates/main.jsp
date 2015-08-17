<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Loading Bootstrap -->
    
    <link href="<c:url value="/resources/css/vendor/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="<c:url value="/resources/css/flat-ui.min.css"/>"  rel="stylesheet">
    <link href="<c:url value="/resources/css/complementar.css"/>" rel="stylesheet" type="text/css" >

    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->  
  </head>

  <body>
	<div id="wrap">
	
		<tiles:insertAttribute name="cabecalho"/>
      	
      	<div class="container">		
		
			<tiles:insertAttribute name="conteudo"/>
			
		</div>
		<div id="push"></div>	
	</div> <!-- wrap -->
	
	<tiles:insertAttribute name="rodape"/>
	
    <!-- jQuery (necessary for Flat UI's JavaScript plugins) -->
    <script src="<c:url value="/resources/js/vendor/jquery.min.js"/>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/vendor/video.js"/>"></script>
    <script src="<c:url value="/resources/js/flat-ui.min.js"/>"></script>

  </body>
</html>
