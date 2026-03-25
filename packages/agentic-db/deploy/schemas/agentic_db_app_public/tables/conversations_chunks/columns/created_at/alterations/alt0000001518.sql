-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/alterations/alt0000001518
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

