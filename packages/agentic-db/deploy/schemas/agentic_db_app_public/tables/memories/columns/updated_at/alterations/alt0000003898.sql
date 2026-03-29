-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/updated_at/alterations/alt0000003898
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.memories 
  ALTER COLUMN updated_at SET NOT NULL;

