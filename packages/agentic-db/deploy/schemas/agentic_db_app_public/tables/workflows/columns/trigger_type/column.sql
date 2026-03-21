-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/trigger_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/description/column


ALTER TABLE agentic_db_app_public.workflows 
  ADD COLUMN trigger_type text;

