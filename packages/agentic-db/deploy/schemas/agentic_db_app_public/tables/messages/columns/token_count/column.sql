-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/token_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table


ALTER TABLE agentic_db_app_public.messages 
  ADD COLUMN token_count int;

