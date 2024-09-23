% Hechos sobre activos informáticos
activo(red).
activo(servidor).
activo(base_datos).
activo(informacion).
activo(aplicacion_web).
activo(dispositivo_IoT).
activo(dispositivo_movil).
activo(sistema_operativo).

% Hechos sobre ciberamenazas
ciberamenaza(informacion, malware).
ciberamenaza(servidor, denegacion_servicio).
ciberamenaza(red, sniffing).
ciberamenaza(dispositivo_IoT, exploit).
ciberamenaza(sistema_operativo, rootkit).
ciberamenaza(aplicacion_web, inyeccion_sql).
ciberamenaza(base_datos, fuga_datos).
ciberamenaza(informacion, espionaje).
ciberamenaza(dispositivo_movil, spyware).

% Descripciones de ciberamenazas con ejemplos de CVE
descripcion_ciberamenaza(malware, 'Malware: Software malicioso diseñado para dañar o explotar sistemas. Ejemplo: CVE-2021-22904 permite la ejecución remota de código en dispositivos vulnerables.').
descripcion_ciberamenaza(phishing, 'Phishing: Técnicas para engañar a usuarios y robar información. Ejemplo: CVE-2022-12345 describe un ataque de phishing dirigido a usuarios de correo electrónico.').
descripcion_ciberamenaza(denegacion_servicio, 'Denegación de servicio: Ataques que hacen que un servicio no esté disponible. Ejemplo: CVE-2020-0601 permite ataques de DDoS aprovechando debilidades en la implementación de criptografía.').
descripcion_ciberamenaza(sniffing, 'Sniffing: Interceptación de datos en la red. Ejemplo: CVE-2019-14899 permite la captura de tráfico de red no cifrado en dispositivos vulnerables.').
descripcion_ciberamenaza(robo, 'Robo: Pérdida física de dispositivos con información sensible. Ejemplo: CVE-2023-23276 expone datos críticos tras el robo de un dispositivo.').
descripcion_ciberamenaza(exploit, 'Exploit: Código que aprovecha vulnerabilidades. Ejemplo: CVE-2019-0708, conocido como BlueKeep, permite la ejecución remota de código en sistemas vulnerables.').
descripcion_ciberamenaza(rootkit, 'Rootkit: Software que permite el acceso oculto a un sistema. Ejemplo: CVE-2018-1002105 compromete entornos de Kubernetes.').
descripcion_ciberamenaza(inyeccion_sql, 'Inyección SQL: Ataques que permiten manipular bases de datos. Ejemplo: CVE-2021-22945 permite ejecutar comandos SQL maliciosos.').
descripcion_ciberamenaza(fuga_datos, 'Fuga de datos: Exposición no autorizada de información. Ejemplo: CVE-2020-5902 permite la fuga de datos en sistemas de gestión de contenido.').
descripcion_ciberamenaza(ataque_man_in_the_middle, 'Ataque Man-in-the-Middle: Interceptación de comunicaciones. Ejemplo: CVE-2018-15473 permite a los atacantes espiar el tráfico de red.').
descripcion_ciberamenaza(ransomware, 'Ransomware: Malware que cifra archivos y exige rescate. Ejemplo: CVE-2020-10400 describe un ataque de ransomware que afecta a sistemas Windows.').
descripcion_ciberamenaza(espionaje, 'Espionaje: Obtención secreta de información. Ejemplo: CVE-2022-31199 describe un ataque a través de software de videoconferencia.').
descripcion_ciberamenaza(spyware, 'Spyware: Software que recopila información sin consentimiento. Ejemplo: CVE-2023-23457 permite la instalación de spyware en dispositivos móviles.').

% Hechos sobre vulnerabilidades
vulnerabilidad(informacion, falta_encriptacion).
vulnerabilidad(servidor, configuracion_insegura).
vulnerabilidad(red, acceso_no_autorizado).
vulnerabilidad(dispositivo_movil, falta_actualizacion).
vulnerabilidad(sistema_operativo, parches_faltantes).
vulnerabilidad(aplicacion_web, validacion_inadecuada).
vulnerabilidad(base_datos, acceso_inadecuado).
vulnerabilidad(dispositivo_IoT, firmware_desactualizado).

% Descripciones de vulnerabilidades con ejemplos de CVE
descripcion_vulnerabilidad(falta_encriptacion, 'Falta de encriptación: La ausencia de cifrado en datos sensibles. Ejemplo: CVE-2017-11882, permite ejecución remota de código en documentos de Microsoft.').
descripcion_vulnerabilidad(configuracion_insegura, 'Configuración insegura: Ajustes incorrectos que permiten accesos no deseados. Ejemplo: CVE-2021-22986 describe configuraciones inseguras en servidores web.').
descripcion_vulnerabilidad(acceso_no_autorizado, 'Acceso no autorizado: Fallos en los controles de acceso. Ejemplo: CVE-2018-1002105 permite acceso a datos críticos sin autorización.').
descripcion_vulnerabilidad(falta_actualizacion, 'Falta de actualización: Sistemas obsoletos expuestos. Ejemplo: CVE-2020-1472 permite ataques a través de protocolos de red desactualizados.').
descripcion_vulnerabilidad(software_desactualizado, 'Software desactualizado: Aplicaciones sin parches de seguridad. Ejemplo: CVE-2019-0708 afecta a Windows y permite ejecución de código remoto.').
descripcion_vulnerabilidad(parches_faltantes, 'Parches faltantes: Retrasos en la aplicación de actualizaciones. Ejemplo: CVE-2022-22965 permite vulnerabilidades de ejecución remota debido a parches no aplicados.').
descripcion_vulnerabilidad(validacion_inadecuada, 'Validación inadecuada: Entrada de datos no controlada. Ejemplo: CVE-2019-18368 permite ataques de inyección a través de formularios web.').
descripcion_vulnerabilidad(acceso_inadecuado, 'Acceso inadecuado: Permisos excesivos a usuarios. Ejemplo: CVE-2021-22938 permite acceso a información sensible sin restricciones.').
descripcion_vulnerabilidad(firmware_desactualizado, 'Firmware desactualizado: Vulnerabilidades en el firmware. Ejemplo: CVE-2021-22961 afecta a dispositivos IoT y permite ataques remotos.').

% Hechos sobre controles
control(informacion, encriptacion).
control(servidor, firewall).
control(red, autentificacion_multifactor).
control(dispositivo_movil, antivirus).
control(sistema_operativo, actualizaciones_regulares).
control(aplicacion_web, sanitizacion_entrada).
control(base_datos, cifrado_datos).
control(dispositivo_IoT, autenticacion_fisica).

% Descripciones de controles
descripcion_control(encriptacion, 'Encriptación: Uso de algoritmos para codificar datos, protegiendo su confidencialidad. Ejemplo: AES (Advanced Encryption Standard) se utiliza en diversas aplicaciones para asegurar información.').
descripcion_control(firewall, 'Firewall: Dispositivo o software que controla el tráfico de red. Ejemplo: Un firewall de última generación que previene accesos no autorizados y bloquea malware.').
descripcion_control(autentificacion_multifactor, 'Autenticación multifactor: Proceso que requiere múltiples formas de verificación. Ejemplo: Uso de contraseñas y autenticación biométrica para acceder a sistemas críticos.').
descripcion_control(antivirus, 'Antivirus: Software diseñado para detectar y eliminar malware. Ejemplo: Symantec Endpoint Protection proporciona defensa contra amenazas conocidas y emergentes.').
descripcion_control(actualizaciones_regulares, 'Actualizaciones regulares: Implementación continua de parches de seguridad. Ejemplo: Aplicar parches críticos en sistemas operativos de forma mensual para mitigar vulnerabilidades.').
descripcion_control(sanitizacion_entrada, 'Sanitización de entrada: Prácticas para validar y filtrar datos ingresados. Ejemplo: Usar listas blancas para validar entradas en formularios web.').
descripcion_control(cifrado_datos, 'Cifrado de datos: Proteger información sensible mediante cifrado. Ejemplo: Implementar cifrado de datos en reposo en bases de datos utilizando TDE (Transparent Data Encryption).').
descripcion_control(autenticacion_fisica, 'Autenticación física: Métodos que requieren identificación física. Ejemplo: Sistemas de control de acceso que utilizan tarjetas de proximidad o lectores biométricos.').

% Regla para identificar ciberamenazas
identificar_ciberamenaza(Activo, Amenaza) :- 
    activo(Activo),
    ciberamenaza(Activo, Amenaza),
    descripcion_ciberamenaza(Amenaza, Descripcion),
    write('Ciberamenaza: '), write(Amenaza), nl,
    write(Descripcion), nl.

% Regla para identificar vulnerabilidades
identificar_vulnerabilidad(Activo, Vulnerabilidad) :- 
    activo(Activo),
    vulnerabilidad(Activo, Vulnerabilidad),
    descripcion_vulnerabilidad(Vulnerabilidad, Descripcion),
    write('Vulnerabilidad: '), write(Vulnerabilidad), nl,
    write(Descripcion), nl.

% Regla para identificar controles
identificar_control(Activo, Control) :- 
    activo(Activo),
    control(Activo, Control),
    descripcion_control(Control, Descripcion),
    write('Control: '), write(Control), nl,
    write(Descripcion), nl.
