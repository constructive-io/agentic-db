-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/title/alterations/alt0000013328
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN title SET NOT NULL;

