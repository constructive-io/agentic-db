-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/updated_at/alterations/alt0000006093


ALTER TABLE agentic_db_app_public.messages 
  ADD COLUMN conversation_id uuid;

