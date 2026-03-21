-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/trigger_config/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/trigger_type/column


ALTER TABLE agentic_db_app_public.workflows 
  ADD COLUMN trigger_config jsonb;

