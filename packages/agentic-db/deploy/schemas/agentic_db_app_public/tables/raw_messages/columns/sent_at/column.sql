-- Deploy: schemas/agentic_db_app_public/tables/raw_messages/columns/sent_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table


ALTER TABLE agentic_db_app_public.raw_messages 
  ADD COLUMN sent_at timestamptz;

