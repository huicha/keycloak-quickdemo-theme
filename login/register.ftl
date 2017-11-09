<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
    <div class="content">
    	<div id="register" class="p-8">
    		<div class="form-wrapper md-elevation-8 p-8">
			<div class="logo bg-secondary">
            	<span>Q</span>
        	</div>
        	<div class="title mt-4 mb-8">Create an account</div>
			<form id="kc-register-form" action="${url.registrationAction}" method="post">
				<#if !realm.registrationEmailAsUsername>
		            <div class="form-group mb-4">
		                <input type="text" id="username" class="form-control" aria-describedby="nameHelp" name="username" value="${(register.formData.username!'')?html}" />
		                <label for="username" >${msg("username")}</label>
		            </div>
				</#if>
	            <div class="form-group mb-4">
	                <input type="text" id="email" class="form-control" aria-describedby="emailHelp" name="email" value="${(register.formData.email!'')?html}" />
	                <label for="email">${msg("email")}</label>
	            </div>
	            <div class="form-group mb-4">
					<input type="text" id="firstName" class="form-control" name="firstName" value="${(register.formData.firstName!'')?html}" />
					<label for="firstName" >${msg("firstName")}</label>
				</div>
				<div class="form-group mb-4">
			    	<input type="text" id="lastName" class="form-control" name="lastName" value="${(register.formData.lastName!'')?html}" />
					<label for="lastName">${msg("lastName")}</label>
				</div>	
	            <#if passwordRequired>
		            <div class="form-group mb-4">
		            	<input type="password" id="password" class="form-control" name="password" />
		                <label for="password">${msg("password")}</label>
		            </div>
		            <div class="form-group mb-4">
		            	<input type="password" class="form-control" id="password-confirm" name="password-confirm" />
		                <label for="password-confirm">${msg("passwordConfirm")}</label>
		            </div>
	            </#if>
	            <#if recaptchaRequired??>
		            <div class="form-group">
		                <div>
		                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
		                </div>
		            </div>
	            </#if>
	            <button type="submit" class="submit-button btn btn-block btn-secondary my-4 mx-auto fuse-ripple-ready" aria-label="LOG IN">
	                ${msg("doRegister")}
	            </button>
        	</form>
	        <div class="login d-flex flex-column flex-sm-row align-items-center justify-content-center mt-8 mb-6 mx-auto">
	            <a class="link text-secondary" href="${url.loginUrl}">${msg("backToLogin")}</a>
	        </div>
    	</div>
	</div>
	</#if>
</@layout.registrationLayout>