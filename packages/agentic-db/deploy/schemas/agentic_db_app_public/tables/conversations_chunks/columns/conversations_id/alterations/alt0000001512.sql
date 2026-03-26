-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/alterations/alt0000001512
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/column


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  ALTER COLUMN conversations_id SET NOT NULL;

