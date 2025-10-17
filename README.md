# Proyecto: Colegios Educativos

## Descripción General

Este proyecto se desarrolló con el propósito de analizar y estructurar la información relacionada con los colegios oficiales de Colombia.  
La fuente de datos utilizada proviene del portal **Datos Abiertos de Colombia**, y fue procesada para obtener un modelo de base de datos optimizado que permita representar de manera clara las instituciones educativas del país.

El trabajo se centra en el proceso completo de modelado de datos, desde el análisis inicial hasta la construcción del modelo físico implementado en SQL.  

---

## Contexto del Proyecto

El conjunto de datos original incluía información general de los colegios, como su nombre, ubicación, jornada y calendario académico.  
Durante el estudio se identificaron columnas vacías y registros sin valor informativo, por lo que se aplicó una depuración para mejorar la calidad de los datos antes de diseñar la base de datos.

El objetivo fue lograr una representación limpia y normalizada del sistema educativo, de modo que los datos pudieran ser usados en análisis, reportes o aplicaciones futuras.

---

## Etapas de Desarrollo

1. **Análisis del conjunto de datos**  
   Se revisó la estructura original del dataset, identificando sus atributos, inconsistencias y relaciones potenciales entre los datos.

2. **Limpieza y depuración**  
   Se eliminaron las columnas vacías (“Estado” y “Sector”) y se verificó la coherencia del resto de los registros.  
   Esto permitió trabajar con una base uniforme y sin valores nulos.

3. **Modelado Conceptual**  
   Se identificaron las principales entidades del sistema: *Colegios*, *Municipios*, *Departamentos* y *Zonas*.  
   El modelo describe cómo se relacionan los colegios con su ubicación geográfica y tipo de zona.

4. **Modelado Lógico**  
   Las entidades fueron convertidas en tablas relacionales, definiendo claves primarias y foráneas.  
   Este paso permitió establecer la estructura de base de datos y sus relaciones.

5. **Normalización**  
   Se aplicaron las tres primeras formas normales (1FN, 2FN y 3FN) para eliminar redundancias y asegurar la integridad de los datos.

6. **Modelo Físico**  
   Finalmente, se implementó la base de datos en SQL, creando las tablas y relaciones mediante código estructurado.

---

## Estructura de Tablas

| Tabla | Descripción |
|--------|--------------|
| **Departamentos** | Contiene los nombres de los departamentos del país. |
| **Municipios** | Almacena los municipios asociados a cada departamento. |
| **Zonas** | Define si la institución se encuentra en zona rural o urbana. |
| **Colegios** | Contiene la información principal de cada establecimiento educativo. |

---

## Tecnologías y Herramientas Utilizadas

- **Lenguaje:** SQL  
- **Diseño de modelos:** DrawSQL y Diagrams.net  
- **Gestión del proyecto:** Git y GitHub  
- **Entorno de trabajo:** Visual Studio Code  
- **Fuente de datos:** Datos Abiertos de Colombia

---

## Resultados

- Se obtuvo un modelo de datos relacional completamente normalizado.  
- Se redujo la redundancia y se mejoró la integridad de la información.  
- La base de datos está lista para ser usada en aplicaciones de análisis, dashboards o sistemas de información educativa.  

---

## Cómo Ejecutar el Proyecto

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/STIVENMARTINEZVILLAMIZAR/colegioseducativos_s2_mongodb.git


MongoDb -- stiven martinez villamizar