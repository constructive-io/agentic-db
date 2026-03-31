-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/id/alterations/alt0000003817
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx



ALTER TABLE agentic_db_app_public.activity_logs 
    ALTER COLUMN id SET DEFAULT uuidv7();

