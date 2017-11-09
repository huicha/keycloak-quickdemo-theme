<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("accountManagementTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico">
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
</head>
<body class="layout layout-vertical layout-left-navigation layout-below-toolbar">
	<div class="content">
	<div class="page-layout simple left-sidebar-floating">
    <!-- HEADER -->
    <div class="page-header bg-secondary text-auto p-6">
        <div class="d-flex flex-row align-items-center">
            <button type="button" class="sidebar-toggle-button btn btn-icon d-block d-lg-none mr-2 fuse-ripple-ready" data-fuse-bar-toggle="demo-sidebar">
                <i class="icon icon-menu"></i>
            </button>
            <span class="h3">Quick Demo</span>
        </div>
    </div>
    <!-- / HEADER -->
    <div class="page-content-wrapper">
        <aside class="page-sidebar p-6" data-fuse-bar="demo-sidebar" data-fuse-bar-media-step="md">
            <div class="page-sidebar-card">
                <!-- DEMO CONTENT -->
                <div class="demo-sidebar">
				    <ul class="nav flex-column">
				        <li class="subheader">Opciones</li>
						<li class="nav-item <#if active=='account'>active</#if>">
							<a class="nav-link" href="${url.accountUrl}">${msg("account")}</a>
						</li>
						<md-divider></md-divider>
				        <#if features.passwordUpdateSupported>
				        	<li class="nav-item <#if active=='password'>active</#if>">
				        		<a class="nav-link" href="${url.passwordUrl}">${msg("password")}</a>
				        	</li>
				        	<md-divider></md-divider>
				       	</#if>
				        <li class="nav-item <#if active=='totp'>active</#if>">
				        	<a class="nav-link" href="${url.totpUrl}">${msg("authenticator")}</a>
				        </li>
				        <md-divider></md-divider>
				        <#if features.identityFederation>
				        	<li class="nav-item <#if active=='social'>active</#if>">
				        		<a class="nav-link" href="${url.socialUrl}">${msg("federatedIdentity")}</a>
				        	</li>
				        	<md-divider></md-divider>
				        </#if>
				        <li class="nav-item <#if active=='sessions'>active</#if>">
				        	<a class="nav-link" href="${url.sessionsUrl}">${msg("sessions")}</a>
				        </li>
				        <md-divider></md-divider>
				        <li class="nav-item <#if active=='applications'>active</#if>">
				        	<a class="nav-link" href="${url.applicationsUrl}">${msg("applications")}</a>
				        </li>
				        <md-divider></md-divider>
				        <#if features.log>
				        	<li class="nav-item <#if active=='log'>active</#if>">
				        		<a class="nav-link" href="${url.logUrl}">${msg("log")}</a>
				        	</li>
				        	<md-divider></md-divider>
				        </#if>
				    </ul>
				</div>
                <!-- / DEMO CONTENT -->
            </div>
		</aside>
        <!-- CONTENT -->
        <div class="page-content">
            <!-- DEMO CONTENT -->
            <div class="demo-content">
    			<#nested "content">
			</div>
            <!-- / DEMO CONTENT -->
        </div>
        <!-- / CONTENT -->
    </div>
</div>
        <div class="col-sm-9 content-area">
            <#if message?has_content>
                <div class="alert alert-${message.type}">
                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                    <#if message.type=='error' ><span class="pficon pficon-error-octagon"></span><span class="pficon pficon-error-exclamation"></span></#if>
                    ${message.summary}
                </div>
            </#if>

            
        </div>
    </div>
	<#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
</body>
</html>
</#macro>