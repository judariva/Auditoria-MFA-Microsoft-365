# Auditoría de Autenticación Multi-Factor (MFA) en Microsoft 365 con PowerShell - Una Herramienta Vital para Tu Seguridad

¡Hola! Soy Juan David Rivera, especialista en ciberseguridad. En esta ocasión quiero presentarte una herramienta esencial en el mundo de la ciberseguridad: un script de PowerShell para auditar el estado de la Autenticación Multi-Factor (MFA) en Microsoft 365.

## Contexto

Las amenazas cibernéticas son un riesgo creciente y constante en nuestra era digital. Organizaciones de todos los tamaños y sectores enfrentan ataques sofisticados que buscan explotar sus sistemas y políticas de seguridad. Desde ataques de fuerza bruta hasta ingeniería social y phishing, el panorama de amenazas es vasto. En este contexto, la Autenticación Multi-Factor es una protección crucial para evitar accesos no autorizados. Este script te proporcionará un informe detallado del estado de MFA de los usuarios en tu organización de Microsoft 365.

## Descripción del Script

Este script interactúa con Microsoft 365 para recopilar información sobre el estado de MFA de los usuarios en tu organización y exporta estos datos a un archivo CSV.

Los datos recopilados incluyen:

- `UserPrincipalName`: El nombre principal del usuario.
- `DisplayName`: El nombre que se muestra del usuario.
- `UserType`: El tipo de usuario (por ejemplo, usuario regular, invitado, etc.)
- `MFAState`: El estado de la MFA para el usuario ('Disabled', 'Enabled', 'Enforced').
- `MFADefaultMethod`: El método de autenticación MFA predeterminado del usuario.
- `MFAPhoneNumber`: El número de teléfono registrado para la MFA.
- `PrimarySMTP`: El SMTP principal del usuario.
- `Aliases`: Los alias de correo electrónico del usuario.




## Cómo utilizarlo

1. Asegúrate de cumplir con los prerrequisitos mencionados anteriormente.
2. Descarga el script desde mi repositorio en GitHub: [MFA_Status_Report.ps1](https://github.com/judariva/MFA-Status-Report/blob/main/MFA_Status_Report.ps1)
3. Abre una sesión de PowerShell con permisos de administrador.
4. En caso de que no esté instalado, instala el módulo MSOnline ejecutando `Install-Module MSOnline` en tu sesión de PowerShell.
5. Conéctate a tu cuenta de administrador de Microsoft 365 utilizando el módulo MSOnline con el comando `Connect-MsolService`. Se te solicitará que introduzcas tus credenciales de administrador.
6. Navega hasta la ubicación del script descargado con el comando `cd ruta_del_script`.
7. Ejecuta el script con el siguiente comando: `.\MFA_Status_Report.ps1 -ExportPath tu_ruta_de_exportacion`. Sustituye `tu_ruta_de_exportacion` con la ruta donde deseas que se guarde el informe.


## Contacto

Si tienes alguna pregunta o necesitas más información sobre ciberseguridad, no dudes en contactarme. Mi objetivo es ayudarte a ti y a tu organización a mejorar la seguridad y mantenerse un paso por delante de las amenazas cibernéticas. ¡Estoy aquí para ayudarte!

Para más información, visita mi sitio web: [https://juandavidrivera.com/](https://juandavidrivera.com/)

# Auditoría de Autenticación Multi-Factor (MFA) en Microsoft 365 con PowerShell - Una Herramienta Vital para Tu Seguridad

¡Hola! Soy Juan David Rivera, especialista en ciberseguridad. En esta ocasión quiero presentarte una herramienta esencial en el mundo de la ciberseguridad: un script de PowerShell para auditar el estado de la Autenticación Multi-Factor (MFA) en Microsoft 365.

## Contexto

Las amenazas cibernéticas son un riesgo creciente y constante en nuestra era digital. Organizaciones de todos los tamaños y sectores enfrentan ataques sofisticados que buscan explotar sus sistemas y políticas de seguridad. Desde ataques de fuerza bruta hasta ingeniería social y phishing, el panorama de amenazas es vasto. En este contexto, la Autenticación Multi-Factor es una protección crucial para evitar accesos no autorizados. Este script te proporcionará un informe detallado del estado de MFA de los usuarios en tu organización de Microsoft 365.

## Descripción del Script

Este script interactúa con Microsoft 365 para recopilar información sobre el estado de MFA de los usuarios en tu organización y exporta estos datos a un archivo CSV. Ahora, con el código actualizado, también puedes conocer el tipo de usuario ('Member' o 'Guest') y si tiene licencia asignada o no.

Los datos recopilados incluyen:

- UserPrincipalName (UPN): El nombre principal del usuario.
- DisplayName: El nombre que se muestra del usuario.
- UserType: El tipo de usuario (por ejemplo, usuario regular, invitado, etc.)
- MFAState: El estado de la MFA para el usuario ('Disabled', 'Enabled', 'Enforced').
- MFADefaultMethod: El método de autenticación MFA predeterminado del usuario.
- MFAPhoneNumber: El número de teléfono registrado para la MFA.
- IsLicensed: Si el usuario tiene licencia asignada o no.
- AssignedLicence: Licencia(s) asignada(s) al usuario.
- PrimarySMTP: El SMTP principal del usuario.
- Aliases: Los alias de correo electrónico del usuario.

## Prerrequisitos

Antes de poder ejecutar este script, necesitas:

- [PowerShell 5.1](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell?view=powershell-7.1) o superior instalado en tu sistema.
- Acceso a una cuenta de administrador en tu tenant de [Microsoft 365](https://docs.microsoft.com/en-us/office365/admin/add-users/about-admin-roles?view=o365-worldwide).
- El módulo [MSOnline](https://docs.microsoft.com/en-us/powershell/module/msonline/?view=azureadps-1.0) de PowerShell. Puedes instalarlo ejecutando `Install-Module MSOnline` en tu sesión de PowerShell.

## Cómo utilizarlo

1. Asegúrate de cumplir con los prerrequisitos mencionados anteriormente.
2. Descarga el script desde mi repositorio en GitHub: [MFA_Status_Report.ps1](https://github.com/judariva/MFA-Status-Report/blob/main/MFA_Status_Report.ps1)
3. Abre una sesión de PowerShell con permisos de administrador.
4. En caso de que no esté instalado, instala el módulo MSOnline ejecutando `Install-Module MSOnline` en tu sesión de PowerShell.
5. Conéctate a tu cuenta de administrador de Microsoft 365 utilizando el módulo MSOnline con el comando `Connect-MsolService`. Se te solicitará que introduzcas tus credenciales de administrador.
6. Navega hasta la ubicación del script descargado con el comando `cd ruta_del_script`.
7. Ejecuta el script con el siguiente comando: `.\MFA_Status_Report.ps1`. El informe se guardará como un archivo CSV en el mismo directorio donde se ejecuta el script.


## Contacto

Si tienes alguna pregunta o necesitas más información sobre ciberseguridad, no dudes en contactarme. Mi objetivo es ayudarte a ti y a tu organización a mejorar la seguridad y mantenerse un paso por delante de las amenazas cibernéticas. ¡Estoy aquí para ayudarte!

Para más información, visita mi sitio web: [https://juandavidrivera.com/](https://juandavidrivera.com/)

