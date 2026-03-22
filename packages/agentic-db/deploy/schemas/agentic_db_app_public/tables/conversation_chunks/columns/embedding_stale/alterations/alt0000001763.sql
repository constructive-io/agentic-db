-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding_stale/alterations/alt0000001763
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN embedding_stale SET NOT NULL;

