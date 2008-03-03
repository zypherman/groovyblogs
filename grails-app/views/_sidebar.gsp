	      		<div class="niceBox">
	      			<div class="niceBoxHd">About</div>
	      			<div class="niceBoxBody">
						groovyblogs.org was developed by
						<a href="http://blogs.bytecode.com.au/glen">Glen Smith</a>
						as part of a 20 hour challenge. This site is running groovyblogs version
                        <g:meta name="app.version"/> on
                            Grails <g:meta name="app.grails.version"/>

                      </div>

	      		</div>
	      		
	      	
	      		<div class="niceBox">
	      			<div class="niceBoxHd">Feeds</div>
	      			<div class="niceBoxBody">
						<ul>
						<li>	      			
		      				<a href="<g:createLink controller='feed' action='atom'/>" class="feedLink">
			      				<img src="${createLinkTo(dir:'images',file:'feed-icon-16x16.jpg')}" alt="Atom"/>
			      			 Atom </a>
			      		</li>
			      		<li>
		      				<a href="<g:createLink controller='feed' action='rss'/>" class="feedLink">
			      				<img src="${createLinkTo(dir:'images',file:'feed-icon-16x16.jpg')}" alt="RSS"/>
			      			 RSS </a>
			      		</li>
			      		</ul>
			      		<g:feedburner/>
	      			</div>
	      		</div>
	      		
	      		
	      		<g:if test="${session.account}">
	      		
		      		<div class="niceBox">
			      			<div class="niceBoxHd">User Info</div>
			      			<div class="niceBoxBody">
								<p><a href="<g:createLink controller='account' action='edit'/>">
									${session.account.userid}
								</a></p>
			      			</div>
			      		
			      	</div>

	      		
	      		</g:if>
	      		<g:else>
		      		<div class="niceBox">
		      			<div class="niceBoxHd">Login</div>
		      			<div class="niceBoxBody">


				           <g:form controller="login" action="login" method="post" >
	                                <b>User Id:</b>
									<input type='text' name='userid'/>
	                       			<b>Password:</b>
	                                <input type="password" name='password'/>
				                        
				                     <span class="formButton">
				                        <input type="submit" value="Login"></input>
				                     </span>
				            </g:form>
				            <p>
				            <g:link controller='login' action="forgottenPassword">Forgotten your password?</g:link><p/>
				            <g:link controller='account' action="signup">Need to Sign Up?</g:link>

		      			</div>
		      		
		      		</div>
	      		</g:else>
	      		

	      		<div class="niceBox">
	      			<div class="niceBoxHd">Get the Source</div>
	      			<div class="niceBoxBody">
						Download the 
						<a href="http://code.google.com/p/groovyblogs/">complete source code</a>
						to groovyblogs.org. Contribute patches and enhancements!
	      			</div>
	      		</div>

	      		
	      		
	      		
	      		
	      		<div class="niceBox">
	      			<div class="niceBoxHd">Stats</div>
	      			<div class="niceBoxBody">
						<g:recentStats/>
						<img style="margin-left: -5px; margin-top: 5px;" src="<g:createLink controller='chart' action='siteStats'/>" alt="site stats"/>
	      			</div>
	      		</div>
	      		
	      		<div class="niceBox">
	      			<div class="niceBoxHd">Newest Bloggers</div>
	      			<div class="niceBoxBody">
						<g:recentBloggers/>
	      			</div>
	      		</div>
	      		

	      		<div style="padding-left: 3em;">
	      			<a href="http://www.grails.org/">
	      				<img src="${createLinkTo(dir:'images',file:'grails_button.gif')}" alt="Powered By Grails"/>
	      			</a>
	      		</div>
