-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/id/alterations/alt0000006410
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/trip_places/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.trip_hiking_trails 
    ALTER COLUMN id SET DEFAULT uuidv7();

