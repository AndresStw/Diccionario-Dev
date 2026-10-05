name: Feature request
about: Sugiere nuevos temas, ejercicios o proyectos para el canal
title: ""
labels: enhancement
assignees: ""

body:
  - type: markdown
    attributes:
      value: |
        ¡Gracias por sugerir contenido! Ayúdanos a entender la idea para poder implementarla.

  - type: textarea
    id: idea
    attributes:
      label: Propuesta
      description: Explica qué tema, ejercicio o proyecto quieres agregar.
      placeholder: Ejemplo: ejercicios de condicionales para nivel principiante.
    validations:
      required: true

  - type: textarea
    id: objective
    attributes:
      label: Objetivo
      description: ¿Para qué sirve esta propuesta y a quién ayuda?

  - type: textarea
    id: details
    attributes:
      label: Detalles
      description: Añade ideas, ejemplos o referencias.

  - type: dropdown
    id: category
    attributes:
      label: Categoría
      options:
        - Apuntes
        - Ejercicios
        - Proyecto
        - Comunidad
        - Otro
