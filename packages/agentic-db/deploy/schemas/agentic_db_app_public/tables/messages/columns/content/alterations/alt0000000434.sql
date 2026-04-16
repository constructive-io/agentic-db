-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/content/alterations/alt0000000434
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN content SET NOT NULL;

