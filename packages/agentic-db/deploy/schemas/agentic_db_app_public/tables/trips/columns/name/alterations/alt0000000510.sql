-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/name/alterations/alt0000000510
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.trips 
  ALTER COLUMN name SET NOT NULL;

