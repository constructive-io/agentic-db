-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/is_active/alterations/alt0000004014


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN tags citext[];

