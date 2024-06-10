# Base de Datos de Restaurantes

Esta carpeta contiene los archivos relacionados con la base de datos de restaurantes en Buenos Aires.

## Contenido

- `restaurantescaba_db.sql`: Archivo SQL con la creación de las tablas y datos de ejemplo.
- `DER-restaurantes_db.png`: Diagrama Entidad-Relación (DER) de la base de datos.

## Descripción de la Base de Datos

### Tablas

- **Restaurantes**: Información sobre los restaurantes.
- **Categorías**: Tipos de comida que ofrecen los restaurantes.
- **Locaciones**: Ubicación de los restaurantes (barrios).

### Relaciones

- Un restaurante pertenece a una categoría.
- Un restaurante está ubicado en un barrio.
- Un barrio puede tener muchos restaurantes

## Uso

1. Importe `restaurantescaba_db.sql` a su base de datos MySQL.
2. Consulte `DER-restaurantes_db.png` para entender la estructura de la base de datos.
3. Ejecute las consultas desde el administrador de base de datos de su preferencia.

## Contribuciones

Las contribuciones son bienvenidas. Por favor, abra un issue o envíe un pull request para mejorar el proyecto.
