-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/title/alterations/alt0000001669
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".memories 
  ALTER COLUMN title SET NOT NULL;

