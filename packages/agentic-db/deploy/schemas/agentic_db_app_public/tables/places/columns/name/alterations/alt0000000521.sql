-- Deploy: schemas/agentic_db_app_public/tables/places/columns/name/alterations/alt0000000521
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE agentic_db_app_public.places 
  ALTER COLUMN name SET NOT NULL;

