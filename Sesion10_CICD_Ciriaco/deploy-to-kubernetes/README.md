## README.md - Docker Build y Push al Registro de Contenedores de GitHub

Este flujo de trabajo de GitHub Actions proporciona una forma automatizada de construir y enviar una imagen de Docker al Registro de Contenedores de GitHub (ghcr.io) cada vez que se realiza un evento de push en la rama principal de tu repositorio.

### 1) ¿Qué hace?

Este flujo de trabajo realiza las siguientes acciones:

1. Verifica el código del repositorio utilizando la acción `actions/checkout`.
2. Configura Docker Buildx, un complemento de la CLI de Docker para construir imágenes multiplataforma, utilizando la acción `docker/setup-buildx-action`.
3. Inicia sesión en el Registro de Contenedores de GitHub utilizando la acción `docker/login-action` y el token de GitHub proporcionado.
4. Construye la imagen de Docker utilizando la acción `docker/build-push-action`.
5. Envía la imagen de Docker construida al Registro de Contenedores de GitHub.
6. Genera un fichero de Kubernetes, cogiendo una plantilla y reemplazando una imagen por la imagen que acabamos de generar
7. Desplegamos esa imagen en nuestro cluster.

### 2) ¿Cómo implementarlo?

Para implementar este flujo de trabajo en tu repositorio, sigue estos pasos:

1. Crea un archivo nuevo llamado `.github/workflows/docker-build-push.yml` en la raíz de tu repositorio.
2. Copia y pega el código YAML proporcionado en el archivo recién creado.
3. Realiza un commit y un push de los cambios a la rama principal de tu repositorio.

A partir de ahora, cada vez que realices cambios y hagas un push en la rama principal, se activará este flujo de trabajo. Construirá una imagen de Docker basada en el contenido de tu repositorio y la enviará al Registro de Contenedores de GitHub. La imagen se etiquetará con el nombre del repositorio y el SHA del commit para una fácil identificación.

Asegúrate de tener los permisos y las credenciales necesarias configuradas en tu repositorio de GitHub para acceder al Registro de Contenedores de GitHub y realizar las acciones requeridas.

#### Detalles adicionales:

- `registry: ghcr.io`: Esto indica que el registro de contenedores utilizado es el Registro de Contenedores de GitHub (GitHub Container Registry) con la URL `ghcr.io`. El Registro de Contenedores de GitHub es un servicio proporcionado por GitHub que te permite almacenar y administrar imágenes de contenedores dentro de tu cuenta de GitHub.

- `username: ${{ github.repository_owner }}`: Utilizamos la variable `${{ github.repository_owner }}` para establecer el nombre de usuario al propietario del repositorio actual en GitHub. Esto asegura que se utilice el nombre de usuario correcto al iniciar sesión en el Registro de Contenedores de GitHub.

- `password: ${{ secrets.GITHUB_TOKEN }}`: En este caso, utilizamos la variable `${{ secrets.GITHUB_TOKEN }}` para establecer la contraseña al token de GitHub. El token de GitHub es un token de acceso personal que se crea automáticamente cuando se ejecutan acciones en un repositorio de GitHub. Este token tiene permisos limitados y se utiliza aquí para autenticarse en el Registro de Contenedores de GitHub y realizar las acciones necesarias, como la construcción y el envío de la imagen de Docker.

Al utilizar estos valores en el flujo de trabajo, nos aseguramos de que se establezcan las credenciales correctas para autenticarnos en el Registro de Contenedores de GitHub y realizar las operaciones

