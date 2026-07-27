-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/title/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/title/column


ALTER TABLE agentic_db_app_public.conversations 
  ALTER COLUMN title SET NOT NULL;

