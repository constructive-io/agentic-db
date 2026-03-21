-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/name/alterations/alt0000004195
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/updated_at/alterations/alt0000004194


ALTER TABLE agentic_db_app_public.workflows 
  ALTER COLUMN name SET NOT NULL;

