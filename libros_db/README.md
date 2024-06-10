# Base de Datos de Libros

Esta carpeta contiene los archivos relacionados con la base de datos de libros.

## Contenido

- `libros_db.sql`: Archivo SQL con la creación de las tablas y datos de ejemplo.
- `DER-libros_db.png`: Diagrama Entidad-Relación (DER) de la base de datos.

## Descripción de la Base de Datos

### Tablas

- **Libros**: Información sobre los libros.
- **Autores**: Información sobre los autores.
- **Generos**: Información sobre el género de los libros.

### Relaciones

- Un libro tiene un autor.
- Un libro tiene un genero.
- Un género puede tener muchos libros.

## Uso

1. Importe `libros_db.sql` a su base de datos MySQL.
2. Consulte `DER-libros_db.png` para entender la estructura de la base de datos.
3. Ejecute las consultas desde el administrador de base de datos de su preferencia.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abra un issue o envíe un pull request para mejorar el proyecto.
