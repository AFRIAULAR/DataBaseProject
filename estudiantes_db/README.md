# Base de Datos de Estudiantes

Esta carpeta contiene los archivos relacionados con la base de datos de estudiantes.

## Contenido

- `estudiantes_db.sql`: Archivo SQL con la creación de las tablas y datos de ejemplo.
- `DER-estudiantes_db.png`: Diagrama Entidad-Relación (DER) de la base de datos.

## Descripción de la Base de Datos

### Tablas

- **Estudiantes**: Información sobre los estudiantes.
- **Cursos**: Información sobre los cursos.
- **Calificaciones**: Calificaciones de los estudiantes en los cursos.

### Relaciones

- Un estudiante está inscrito en varios cursos.
- Un curso puede tener varios estudiantes.
- Un estudiante tiene calificaciones en varios cursos.

## Uso

1. Importe `estudiantes_db.sql` a su base de datos MySQL.
2. Consulte `DER-estudiantes_db.png` para entender la estructura de la base de datos.
3. Ejecute las consultas desde el administrador de base de datos de su preferencia.
