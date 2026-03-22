-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/meta/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/token_count/column


ALTER TABLE agentic_db_app_public.messages 
  ADD COLUMN meta jsonb;

