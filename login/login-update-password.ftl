<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
    <div class="content">
    	<div id="register" class="p-8">
		    <div class="form-wrapper md-elevation-8 p-8">
		        <div class="logo bg-secondary">
		            <span>QD</span>
		        </div>
		        <div class="title mt-4 mb-8">Reset your password</div>
		        <form id="kc-passwd-update-form" action="${url.loginAction}" method="post">
	            	<div class="form-group mb-4">
	            		<input type="password" id="password-new" class="form-control" placeholder=${msg("passwordNew")} name="password-new" autofocus autocomplete="off" />
				        <label for="password-new">${msg("passwordNew")}</label>
		            </div>
		            <div class="form-group mb-4">
		            	<input type="password" id="password-confirm" class="form-control" name="password-confirm" autocomplete="off" />
		                <label for="password-confirm">${msg("passwordConfirm")}</label>    
		            </div>
	            	<div class="form-group mb-4">
		                <button class="submit-button btn btn-block btn-secondary mt-8 mb-4 mx-auto fuse-ripple-ready" aria-label=${msg("doSubmit")}>${msg("doSubmit")}</button>
	            	</div>
				</form>
		    </div>    
		</div>
	</div>
    </#if>
</@layout.registrationLayout>