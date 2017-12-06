-- noinspection SqlNoDataSourceInspectionForFile

-- Separate file because PostGIS populates the spatial_ref_sys table on load
DROP SCHEMA IF EXISTS postgis CASCADE;
CREATE SCHEMA postgis;
CREATE EXTENSION IF NOT EXISTS postgis SCHEMA postgis;


CREATE TABLE postgis_table (pk SERIAL, p postgis.GEOMETRY(POINT,4326), ml postgis.GEOGRAPHY(MULTILINESTRING), --ga postgis.GEOMETRY[], 
    b postgis.BOX3D, PRIMARY KEY(pk));
