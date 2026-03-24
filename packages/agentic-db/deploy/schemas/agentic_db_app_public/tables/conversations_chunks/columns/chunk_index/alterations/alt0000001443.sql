-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/columns/chunk_index/alterations/alt0000001443
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".conversations_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

