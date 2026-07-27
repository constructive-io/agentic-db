-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN name text;

