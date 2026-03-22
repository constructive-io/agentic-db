-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/title/alterations/alt0000006084


ALTER TABLE agentic_db_app_public.conversations 
  ADD COLUMN agent_id uuid;

