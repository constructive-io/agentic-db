-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/metadata/alterations/alt0000001544
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".messages_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

