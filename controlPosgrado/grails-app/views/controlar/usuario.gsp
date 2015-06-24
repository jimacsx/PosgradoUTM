<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAlum">
		
		
	</head>
<body>

    
    
       <div class="col-sm-7 col-md-8 col-sm-offset-3 col-md-offset-2 main">
	       <div class="bs-docs-section">
	 			
	 				
			  	<div class="bs-example" data-example-id="simple-carousel">
				    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					    <ol class="carousel-indicators">
					       <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					       <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					       <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					    </ol>
			      		<div class="carousel-inner" role="listbox">
				     		<div class="item active">
					     		<img src="${resource(dir: 'images', file: 'titulo.jpeg') }" style="width: 790px; height: 150px">
					  		</div>
			          		<div class="item">
			        	 		<img src="${resource(dir: 'images', file: 'electronica.jpeg') }" style="width: 900px; height: 500px">
			          		</div>
					        <div class="item">
					        	<img src="${resource(dir: 'images', file: 'lab.jpeg') }" style="width: 900px; height: 500px">
					        </div>
			        	</div>
				      	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				        	<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				        	<span class="sr-only">Anterior</span>
				        </a>
				        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				        	<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				        	<span class="sr-only">Siguiente</span>
				        </a>
			    </div>
			</div>
	    </div>
  	</div>


	
       
<%--        	<p class="text-muted" align="center"; >Universidad Tecnológica de la Mixteca.</p>--%>
        
    
</body>
</html>