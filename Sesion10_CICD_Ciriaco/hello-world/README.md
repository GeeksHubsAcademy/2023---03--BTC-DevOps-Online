# Ejercicio: Implementar un flujo de trabajo "Hola Mundo" y usar [skip ci] para no ejecutar el flujo de trabajo

En este ejercicio, aprenderás cómo implementar un flujo de trabajo "Hola Mundo" en tu repositorio de Github y cómo utilizar el mecanismo `[skip ci]` para evitar que se ejecute el flujo de trabajo en ciertas ocasiones.

## Paso 1: Implementar el flujo de trabajo "Hola Mundo"

Para implementar el flujo de trabajo "Hola Mundo", sigue estos pasos:

1. Crea un archivo `.yml` en el directorio `.github/workflows` de tu repositorio.
2. Copia y pega el siguiente código en el archivo `.yml`:

```yaml
name: Flujo de trabajo Hola Mundo
on:
  push:
    branches:
      - main
jobs:
  hola_mundo:
    runs-on: ubuntu-latest
    steps:
      - name: Saluda
        run: echo "¡Hola Mundo!"
```

3. Guarda los cambios y haz un commit en tu repositorio.

Con estos pasos, has implementado un flujo de trabajo "Hola Mundo" que se activará cada vez que hagas un push en la rama "main" de tu repositorio. El flujo de trabajo imprimirá el mensaje "¡Hola Mundo!" en la consola.

## Paso 2: Usar [skip ci] para evitar la ejecución del flujo de trabajo

A veces, no queremos que se ejecute el flujo de trabajo en ciertas ocasiones, como cuando hacemos cambios menores que no afectan el funcionamiento del código. Para evitar la ejecución del flujo de trabajo en estos casos, podemos utilizar el mecanismo `[skip ci]`.

Para usar `[skip ci]`, sigue estos pasos:

1. Haz los cambios que quieras en tu código.
2. Añade `[skip ci]` al mensaje del commit. Por ejemplo: `git commit -m "Agrega nueva función [skip ci]"`.
3. Haz un push en tu repositorio.

Con estos pasos, Git y Github entenderán que no necesitan ejecutar el flujo de trabajo en esta ocasión y evitarán su ejecución.

¡Y eso es todo! Ahora sabes cómo implementar un flujo de trabajo "Hola Mundo" en tu repositorio de Github y cómo utilizar `[skip ci]` para evitar su ejecución en ciertas ocasiones. ¡A seguir programando!
