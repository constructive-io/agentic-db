-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/embedding_stale/alterations/alt0000010963
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN embedding_stale SET NOT NULL;

