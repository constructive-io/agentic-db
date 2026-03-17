-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/is_active/alterations/alt0000001098
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/is_active/column
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/version/alterations/alt0000001097



ALTER TABLE "agentic_db_app_public".prompts 
    ALTER COLUMN is_active SET DEFAULT true;

