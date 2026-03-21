-- Deploy: schemas/agentic_db_app_public/tables/tools/columns/name/alterations/alt0000004185
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/tools/columns/updated_at/alterations/alt0000004184


ALTER TABLE agentic_db_app_public.tools 
  ALTER COLUMN name SET NOT NULL;

