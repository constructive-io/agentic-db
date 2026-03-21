-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/model/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/type/column


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN model text;

