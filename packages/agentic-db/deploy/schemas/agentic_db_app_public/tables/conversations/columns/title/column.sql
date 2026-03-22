-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/alterations/alt0000006083


ALTER TABLE agentic_db_app_public.conversations 
  ADD COLUMN title text;

