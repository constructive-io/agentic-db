-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/is_active/alterations/alt0000004196


ALTER TABLE agentic_db_app_public.workflows 
  ADD COLUMN tags citext[];

