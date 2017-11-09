<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>
      <h2 class="MainTitle">${msg("editAccountHtmlTitle")}</h2>
          <form action="${url.accountUrl}" class="form-horizontal" method="post">
              <br/>
			  <!-- FIELD FIRSTNAME-->
			  <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">    
              <div class="col-sm-12 noPadding campo">
                <label class="label_titular">${msg("firstName")}</label>
                <input type="text" class="form-control" id="firstName" name="firstName" value="${(account.firstName!'')?html}"/>
              </div>
			  <!-- FIELD LASTNAME-->    
			  <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">
				  <div class="col-sm-12 noPadding campo">
					<label class="label_titular">${msg("lastName")}</label>
					<input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')?html}"/>
				  </div>
	          </div>
			  <!-- FIELD MOBILE-->
			  <#if !realm.registrationEmailAsUsername>
			  <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
				  <div class="col-sm-12 noPadding campo">
					  <label class="label_titular gray">Número Movistar</label>
					  <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')?html}"/>
				  </div>
			  </div>
			  </#if>    
			  <!-- FIELD EMAIL-->
	          <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
              	<div class="col-sm-12 noPadding campo">
               	 	<label class="label_titular">${msg("email")}</label>
					<input type="text" class="form-control" id="email" name="email" autofocus value="${(account.email!'')?html}"/>
				</div>
              </div>
			  <!-- FIELD BUTTONS-->     
			  <div class="pull-right margin-top-2">
				 <div class="col-xs-12">
					<button type="submit" class="btn btn-primary" name="submitAction" value="Save">${msg("doSave")}</button>
					<button type="submit" class="btn btn-danger" name="submitAction" value="Cancel">${msg("doCancel")}</button>
				  </div>			  
			  </div>	
			  <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">
          </form>
</@layout.mainLayout>