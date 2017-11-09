<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
    <div class="content">
    	<div id="register" class="p-8">
		    <div class="form-wrapper md-elevation-8 p-8">
		        <div class="logo bg-secondary">
		            <span>Q</span>
		        </div>
		        <div class="title mt-4 mb-8">${msg("emailInstruction")}</div>
			    <form id="kc-reset-password-form" action="${url.loginAction}" method="post">
			    	<div class="form-group mb-4">
				        <input type="email" id="username" name="username" class="form-control" id="forgotPasswordFormInputEmail" aria-describedby="emailHelp" placeholder=" " required="" autofocus>
			            <label for="username"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
		            </div>
			       	<button type="submit" class="submit-button btn btn-block btn-secondary mt-8 mb-4 mx-auto fuse-ripple-ready">${msg("doSubmit")}</button>
			    </form>
			   	<div class="login row align-items-center justify-content-center mt-8 mb-6 mx-auto">
			    	<a class="link text-secondary" href="${url.loginUrl}">${msg("backToLogin")}</a>
			    </div>
			</div>    
		</div>
	</div>		
    <#elseif section = "info" >
       
    </#if>
</@layout.registrationLayout>
