-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/id/alterations/alt0000002380
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx



ALTER TABLE agentic_db_app_public.rules 
    ALTER COLUMN id SET DEFAULT uuidv7();

