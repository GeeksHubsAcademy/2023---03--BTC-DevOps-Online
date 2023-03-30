# Sesión 3: Ejercicios IaC

El objetivo de todos los ejercicios es modelar la infraestructura que se pide. Como no vamos a ver cómo gestionar servidores en esta sesión tendremos que levantar un nginx sencillo para ver que nuestra servidor responde con la página por defecto.

## 0. Boilerplate
Aquí podéis encontrar un ejemplo de cómo empezaría yo a modelar un Stack en TF. Recordar cambiar vuestro nombre y el nombre del proyecto en el estado de TF (`_backend.tf`) y poner actualizar las tags que se usarán en el provider (`_provider.tf`)

## Simple Instance
Vamos a levantar una instancia vainilla de nginx e iremos cambiando cómo modelamos los diferentes recursos.

Tenéis dos opciones, crear una carpeta por cada ejemplo o utilizar git (punto extra si usas tags) para las diferentes versiones.

Recordad! hay que cambiar las tags y el estado cada vez que copiéis el boilerplate.

### 1. Simple Instance
Caso con el modelado de la VPC y la instancia

### 2. Simple Instance Improved
Caso con la instancia pero con una gestión más limpia de los archivos.

### 3. Simple Instance Module
Aquí agrupo el stack como un módulo y lo llamo desde el módulo raíz.

### 4. Simple Instance Environments
Modelar diferentes stacks (en este caso los entornos de staging y producción)
