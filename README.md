# transactions-solution-c4

## Ejercicio Práctico

- Cree un documento PDF con la respuesta al ejercicio.
  - El documento debe estar bien organizado y ser fácil de leer.
  - Agregue imágenes para explicar los diagramas. Puedes usar herramientas como http://draw.io/ para generar las imágenes.
  - Cada uno de los diagramas de C4 es un entregable importante. Asegúrese de hacerlos correctos y detallados.
  - Preste también atención a los otros diagramas requeridos.
  - Asegúrese de añadir cualquier texto explicativo que considere necesario.
- Suba el documento como respuesta a este ejercicio. Asegúrese de subirlo dentro del tiempo de resolución.

### Adicional, crear un repositorio público en Github y subir el PDF a ese repositorio. Colocar la URL al repositorio en los comentarios de este ejercicio:

### Recomendaciones MUY valoradas:

**- Cada decisión arquitectónica en el diseño debe tener una justificación teórica *(Mínimo 2 por cada una). Ejemplo: ¿Por qué se decidió por determinados patrones, tecnologías, componentes, protocolos, etc.? ¿Qué opciones evaluó?***

Se debe incluir los siguientes diagramas en el diseño de la solución:

- **Diagrama de Contexto:** Para usuarios no técnicos. Muestra sistemas internos y externos, actores clave, breves descripciones y conexiones explicativas.
- **Diagrama de Contenedores:** Para técnicos. Representa aplicaciones, servicios, bases de datos y mensajería, incluyendo componentes cloud sin mucho detalle. Conexiones con descripciones breves.
- **Diagrama de Componentes:** Mayor detalle técnico. Incluye microservicios, patrones arquitectónicos y protocolos de comunicación con seguridad. Destaca el uso de componentes cloud.

**Descripción del ejercicio:**

Usted ha sido contratado por una entidad llamada BP como arquitecto de soluciones para diseñar un sistema de banca por internet, en este sistema los usuarios podrán acceder al histórico de sus movimientos, realizar transferencias y pagos entre cuentas propias e interbancarias.

Toda la información referente al cliente se tomará de 2 sistemas, una plataforma Core que contiene información básica de cliente, movimientos, productos y un sistema independiente que complementa la información del cliente cuando los datos se requieren en detalle.

Debido a que la norma exige que los usuarios sean notificados sobre los movimientos realizados, el sistema utilizará sistemas externos o propios de envío de notificaciones, mínimo 2.

Este sistema contará con 2 aplicaciones en el Front, una SPA y una Aplicación móvil desarrollada en un Framework multiplataforma. (Mencione 2 opciones y justifique el porqué de su elección).

Ambas aplicaciones autenticarán a los usuarios mediante un servicio que usa el estándar Oauth2.0, para el cual no requiere implementar toda la lógica, ya que la compañía cuenta con un producto que puede ser configurado para este fin; sin embargo, debe dar recomendaciones sobre cuál es el mejor flujo de autenticación que se debería usar según el estándar.

Tenga en cuenta que el sistema de Onboarding para nuevos clientes en la aplicación móvil usa reconocimiento facial, por tanto, su arquitectura deberá considerarlo como parte del flujo de autorización y autenticación, a partir del Onboarding el nuevo usuario podrá ingresar al sistema mediante usuario y clave, huella o algún otro método especifique alguno de los anteriores dentro de su arquitectura, también puede recomendar herramientas de industria que realicen estas tareas y robustezca su aplicación.

El sistema utiliza una base de datos de auditoría que registra todas las acciones del cliente y cuenta con un mecanismo de persistencia de información para clientes frecuentes, para este caso proponga una alternativa basada en patrones de diseño que relacione los componentes que deberían interactuar para conseguir el objetivo.

Para obtener los datos del cliente el sistema pasa por una capa de integración compuesta por un api Gateway y consume los servicios necesarios de acuerdo con el tipo de transacción, inicialmente usted cuenta con 3 servicios principales, consulta de datos básicos, consulta de movimientos y transferencias que realiza llamados a servicios externos dependiendo del tipo, si considera que debería agregar más servicios para mejorar el rendimiento de su arquitectura o agregar más servicios para mejorar la repuesta de información a sus clientes, es libre de hacerlo.

**Consideraciones.**

Para este reto, mencione aquellos elementos normativos que considere importantes a tener en cuenta para entidades financieras, Ejemplo ley de datos personales, seguridad, etc.

Garantice en su arquitectura, alta disponibilidad **(HA)**, tolerancia a fallos, recuperación ante desastres **(DR)**, Seguridad y Monitoreo, Excelencia operativa y auto-healing.

Si lo considera necesario, su arquitectura puede contener elementos de infraestructura en nube, Azure u AWS, garantice baja latencia, cuenta con presupuesto para esto.

En lo posible plantee una arquitectura desacoplada con elementos y reusables y cohesionados para otros componentes que puedan adicionarse en el futuro.

El modelo debe ser desarrollado bajo [modelo **c4**](https://c4model.com/) (Modelo de Contexto, Modelo de aplicación o contenedor y componentes), describa hasta el modelo de componentes, la infraestructura la puede modelar como usted lo considere usando la herramienta de su preferencia.

**Criterios de calificación**

Se calificarán los siguientes elementos:

- Que la solución satisfaga los requerimientos y todo cuente con justificación
- Calidad y profundidad de los diagramas (Contexto, Contenedores y Componentes)
- Segmentación de Responsabilidades y Desacoplamiento
- Uso de patrones de arquitectura
- Integración con servicios externos
- Calidad de arquitectura de aplicación front-end y móvil
- Arquitectura de acceso a datos
- Conocimientos de Nube (AWS o Azure)
- Manejo de costos
- Arquitectura de Autenticación
- Arquitectura de Integración con Onboarding
- Diseño de Solución de Auditoría
- Conocimientos de regulaciones bancarias y estándares de seguridad
- Implementación de Alta Disponibilidad y Tolerancia a Fallos
- Implementación de Monitoreo
