-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/name/alterations/alt0000004640
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000004639


ALTER TABLE agentic_db_app_public.recipes 
  ALTER COLUMN name SET NOT NULL;

