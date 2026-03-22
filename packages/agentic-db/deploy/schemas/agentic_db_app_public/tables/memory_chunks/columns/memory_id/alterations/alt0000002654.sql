-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/alterations/alt0000002654
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".memory_chunks 
  ALTER COLUMN memory_id SET NOT NULL;

