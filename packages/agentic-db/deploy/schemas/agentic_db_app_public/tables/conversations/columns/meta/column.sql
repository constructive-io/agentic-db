-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/meta/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/status/alterations/alt0000006085


ALTER TABLE agentic_db_app_public.conversations 
  ADD COLUMN meta jsonb;

