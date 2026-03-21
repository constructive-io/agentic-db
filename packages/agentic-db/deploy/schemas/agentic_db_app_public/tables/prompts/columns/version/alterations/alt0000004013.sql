-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/version/alterations/alt0000004013
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/model/column
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/version/column



ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN version SET DEFAULT 1;

