-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/content/alterations/alt0000004012


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN type text;

