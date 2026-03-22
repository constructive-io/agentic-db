-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/name/alterations/alt0000006134
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/projects/columns/updated_at/alterations/alt0000006133


ALTER TABLE agentic_db_app_public.projects 
  ALTER COLUMN name SET NOT NULL;

