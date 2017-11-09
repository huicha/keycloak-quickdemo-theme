<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
        <#if realm.password>
        <div id="login" class="p-8">
			<div class="form-wrapper md-elevation-8 p-8">
			<div class="logo bg-secondary">
		   		<span>Q</span>
		    </div>
			<div class="title mt-4 mb-8">Log in to your account</div>
				<form name="loginForm" id="kc-form-login" action="${url.loginAction}" method="post">
					<div class="form-group mb-4">
				        <#if usernameEditDisabled??>
		                	<input id="username" class="form-control" name="username" value="${(login.username!'')?html}" type="text" aria-describedby="emailHelp" disabled />
			            <#else>
							<input id="username" class="form-control" name="username" value="${(login.username!'')?html}" type="text" aria-describedby="emailHelp" autofocus autocomplete="off" />
						</#if>       
					    <label for="username"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
				    </div>
				    <div class="form-group mb-4">
				    	<input id="password" class="form-control" name="password" placeholder="Password" type="password" autocomplete="off" />
				        <label for="password">${msg("password")}</label>
		            </div>
				    <#if realm.rememberMe && !usernameEditDisabled??>
				    	<div class="remember-forgot-password row no-gutters align-items-center justify-content-between pt-4">
                			<div class="form-check remember-me mb-4">
                			<#if login.rememberMe??>
	                    		<label class="form-check-label">
	                        		<input id="rememberMe" type="checkbox" name="rememberMe" class="form-check-input" aria-label="Remember Me" checked>
	                        		<span class="checkbox-icon fuse-ripple-ready"></span>
	                        		<span class="form-check-description">${msg("rememberMe")}</span>
	                    		</label>
	                    	<#else>
	                    		<label class="form-check-label">
	                        		<input id="rememberMe" type="checkbox" name="rememberMe" class="form-check-input" aria-label="Remember Me">
	                        		<span class="checkbox-icon fuse-ripple-ready"></span>
	                        		<span class="form-check-description">${msg("rememberMe")}</span>
	                    		</label>
	                        </#if>		
                			</div>
            			</div>
	                </#if>
			        <input type="submit" class="submit-button btn btn-block btn-secondary my-4 mx-auto" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
			        <#if realm.resetPasswordAllowed>
			            <div class="register d-flex flex-column flex-sm-row align-items-center justify-content-center mt-8 mb-6 mx-auto">
                	        <span><a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                        </div>        
                    </#if>
			        </form>	
			        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
			            <div id="kc-registration">
			                <span>${msg("noAccount")} <a href="${url.registrationUrl}">${msg("doRegister")}</a></span>
			            </div>
			        </#if>
			        <#if realm.password && social.providers??>
			        	<div class="separator">
				            <span class="text">OR</span>
						</div>
			            <div id="kc-social-providers">
			                <ul>
			                    <#list social.providers as p>
			                        <li><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span class="text">${p.displayName}</span></a></li>
			                    </#list>
			                </ul>
			            </div>
			        </#if>
			    </div>
			</div>
		</div>	
    </#if>
    <#elseif section = "info" >
        
    </#if>
</@layout.registrationLayout>
