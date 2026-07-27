-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table


ALTER TABLE agentic_db_app_public.messages 
  ADD COLUMN created_at timestamptz;

