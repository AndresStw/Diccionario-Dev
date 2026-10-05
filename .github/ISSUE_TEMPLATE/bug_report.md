name: Bug report
about: Reporta un problema o error en el contenido del repositorio
title: ""
labels: bug
assignees: ""

body:
  - type: markdown
    attributes:
      value: |
        Gracias por reportar un problema. Completa la información para ayudarnos a corregirlo rápidamente.

  - type: textarea
    id: description
    attributes:
      label: Descripción del problema
      description: Explica qué está mal o qué esperabas ver.
      placeholder: Ejemplo: el ejercicio de variables tiene un error de sintaxis en Java.
    validations:
      required: true

  - type: textarea
    id: steps
    attributes:
      label: Pasos para reproducir
      description: Enumera los pasos para ver el problema.
      placeholder: 1. Abrir el archivo...
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: Resultado esperado
      description: Qué deberías ver o cómo debería comportarse.

  - type: textarea
    id: actual
    attributes:
      label: Resultado actual
      description: Qué ocurre realmente.

  - type: textarea
    id: extra
    attributes:
      label: Información adicional
      description: Añade contexto, capturas o enlaces.
