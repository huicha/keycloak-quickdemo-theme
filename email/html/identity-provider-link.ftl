<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!-- utf-8 works for most cases -->
    <meta name="viewport" content="width=device-width">
    <!-- Forcing initial-scale shouldn't be necessary -->
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <!-- Use the latest (edge) version of IE rendering engine -->
    <title>Quickdemo</title>
    <!-- The title tag shows in email notifications, like Android 4.4. -->
  <style type="text/css">
		html,body{
			margin:0;
			padding:0;
			height:100% !important;
			width:100% !important;
		}
		*{
			-ms-text-size-adjust:100%;
			-webkit-text-size-adjust:100%;
		}
		.ExternalClass{
			width:100%;
		}
		table,td{
			mso-table-lspace:0;
			mso-table-rspace:0;
		}
		table{
			border-spacing:0 !important;
		}
		.ExternalClass,.ExternalClass *{
			line-height:100%;
		}
		table{
			border-collapse:collapse;
			margin:0 auto;
		}
		img{
			-ms-interpolation-mode:bicubic;
		}
		.yshortcuts a{
			border-bottom:none !important;
		}
		.mobile-link--footer a{
			color:#666666 !important;
		}
		img{
			border:0 !important;
			outline:none !important;
			text-decoration:none !important;
		}
	@media only screen and (min-width: 601px){
		.email-container{
			width:600px !important;
		}

}	@media only screen and (max-width: 600px){
		.email-container{
			width:100% !important;
			max-width:none !important;
		}
         /* What it does: Forces elements to resize to the full width of their container. Useful for resizing images beyond their max-width. */
            .fluid {
                max-width: 100% !important;
                height: auto !important;
                margin-left: auto !important;
                margin-right: auto !important;
            }
            /* What it does: Forces table cells into full-width rows. */
            .stack-column,
            .stack-column-center {
                display: block !important;
                width: 100% !important;
                max-width: 100% !important;
                direction: ltr !important;
            }
            /* And center justify these ones. */
            .stack-column-center {
                text-align: center !important;
            }x
}</style></head>
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#f4f4f4" style="margin:0; padding:0; -webkit-text-size-adjust:none; -ms-text-size-adjust:none;">
    <table cellpadding="0" cellspacing="0" border="0" width="100%" bgcolor="#f4f4f4" style="height:auto;border-collapse:collapse;">
      <tr>
        <td>
          <!-- Visually Hidden Preheader Text : BEGIN -->
          <div style="display:none;font-size:1px;color:#222222;line-height:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden;mso-hide:all;">
            (Optional) This text will appear in the inbox preview, but not the email body.
          </div>
          <!-- Visually Hidden Preheader Text : END -->
          <!-- Outlook and Lotus Notes don't support max-width but are always on desktop, so we can enforce a wide, fixed width view. -->
          <!-- Beginning of Outlook-specific wrapper : BEGIN -->
          <!--[if (gte mso 9)|(IE)]>
          <table width="600" align="center" cellpadding="0" cellspacing="0" border="0">
            <tr>
              <td>
                <![endif]-->
          <!-- Beginning of Outlook-specific wrapper : END -->
          <!-- Email wrapper : BEGIN -->
          <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="max-width:600px;margin:auto;" class="email-container">
            <tr>
              <td>
                <!-- LINK A HTML DIRECTO -->
                  <p style="font-family: sans-serif; font-size: 11px; color:#999999; font-weight: normal;text-align:center; padding-top:5px; padding-bottom:2px;">Si no ves correctamente este correo hacé click <a href="#" target="_blank" style="color:#5BC500;">aquí</a></p>  
                <!-- Logo + Links : BEGIN -->
                <table border="0" width="100%" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
                  <tr>
                    <td valign="middle" style="padding:10px 10px;text-align:left;" width="150">
                      
                    </td>
                    <td valign="middle" style="padding:10px 18px 10px 0px;text-align:right;line-height:1.3;font-family:sans-serif;font-size:16px;color:#5ac7eb;">
					
                    </td>
                  </tr>
                </table>
                <!-- Logo + Links : END -->
                <table border="0" width="100%" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
                  <tr>
                  	<td valign="middle" style="padding:10px 10px;text-align:left;" width="150">
						${msg("identityProviderLinkBodyHtml", identityProviderAlias, realmName, identityProviderContext.username, link, linkExpiration)}
					</td>
                  </tr>
                </table>
				<!-- 1 Column Text + Button : BEGIN -->
                <tr>
                    <td bgcolor="#ffffff" style="padding: 0 40px 30px; font-family: sans-serif; font-size: 15px; line-height: 20px; color: #555555; text-align: center;">
                        <p style="margin: 0;">Este enlace te llevará a una página segura donde podrás cambiar tu contraseña. En caso de no haber solicitado el cambio de contraseña, simplemente omite este mensaje.
                        </p>
                    </td>
                </tr>
                  <!-- Data Table : END -->
                </table>
                <!-- Main Email Body : END -->
              </td>
            </tr>
            <!-- Footer : BEGIN -->
            <tr>
              <td style="text-align:center;padding:4% 0;font-family:sans-serif;font-size:12px;line-height:1.2;color:#bbb;">
                 
              </td>
            </tr>
              <!-- Footer : END -->
            </table>
            <!-- Email wrapper : END -->
            <!-- End of Outlook-specific wrapper : BEGIN -->
            <!--[if (gte mso 9)|(IE)]>
          </td>
        </tr>
      </table>
      <![endif]-->
            <!-- End of Outlook-specific wrapper : END -->
          </td>
        </tr>
      </table>
    </body>
</html>