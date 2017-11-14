<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("emailVerifyTitle")}
    <#elseif section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
    <div id="maintenance" class="p-8">
	    <div class="form-wrapper md-elevation-8 p-8">
	        <div class="logo bg-secondary">
	            <span>QD</span>
	        </div>
	        <div class="title mt-4">${msg("emailVerifyInstruction1")}</div>
	        <div class="subtitle mt-4 mb-4 mx-auto text-muted">
	            ${msg("emailVerifyInstruction2")} <a href="${url.loginEmailVerificationUrl}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
	        </div>
	    </div>
	</div>
    </#if>
</@layout.registrationLayout>