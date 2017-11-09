<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>
<form action="${url.passwordUrl}" class="form-horizontal" method="post">
<div class="tab-content">
	<div>Reset your password</div>
	<div class="tab-pane fade show active" id="basic-info-tab-pane" role="tabpanel" aria-labelledby="basic-info-tab">
    <div class="card p-12">
    	<#if password.passwordSet>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" autofocus autocomplete="off">
                <label>${msg("password")}</label>
            </div>
        </#if>
            <div class="form-group">
                <input type="password" class="form-control" id="registerFormInputPassword" required="">
                <label for="password-new">${msg("passwordNew")}</label>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="off">
                <label for="password-confirm" class="control-label" class="two-lines">${msg("passwordConfirm")}</label>
            </div>
            <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">
            <button type="submit" class="btn btn-secondary fuse-ripple-ready" aria-label="${msg("doSave")}">
                ${msg("doSave")}
        	</button>
        </form>
    </div>
</div>
</form>
</@layout.mainLayout>