### Enunciado del Ejercicio

La empresa "Cuidado Verde" se dedica a la jardinería y cuidado de plantas para oficinas y hogares. Desean desarrollar una aplicación que les permita gestionar sus servicios de manera eficiente. Para esto, necesitan un sistema que maneje tanto a los empleados como a los clientes y los distintos tipos de plantas que ofrecen. La aplicación requiere lo siguiente:

1. **Preparación del entorno**:
    - Crear un usuario nuevo en MySQL llamado 'jardinero_master' con contraseña 'planta$Segura'.
    - A este usuario, otorgarle todos los privilegios en la base de datos que se creará a continuación.

2. **Creación de la base de datos**:
    - Generar una base de datos llamada 'CuidadoVerdeDB'.

3. **Diseño de la base de datos**:
    - La base de datos debe contener las siguientes tablas con las relaciones correspondientes:
      - **Empleados**: Cada empleado tiene un ID único, nombre, apellido, especialidad y datos de contacto.
      - **Clientes**: Cada cliente tiene un ID único, nombre de la empresa o persona, dirección para el servicio y datos de contacto.
      - **Plantas**: Catálogo de plantas con un ID único, nombre común, nombre científico y tipo de planta.
      - **Servicios**: Registros de los servicios prestados, que incluyen un ID de servicio, la fecha del servicio, el ID del empleado que lo realizó, y el ID del cliente.
      - **InventarioPlantas**: Inventario de plantas que incluye ID único, ID de la planta (relacionado con el catálogo de plantas), cantidad en stock y ubicación en el almacén.
    - Las llaves primarias deben estar claramente definidas como tales.
    - Donde sea pertinente, se deben establecer llaves foráneas para indicar la relación entre las tablas.

4. **Implementación de funcionalidades CRUD**:
    - Desarrollar las funcionalidades básicas de CRUD (Crear, Leer, Actualizar, Eliminar) para cada una de las tablas mencionadas.

5. **Población inicial de la base de datos**:
    - Ingresar al menos 10 registros en cada tabla para simular una operación inicial de la empresa.