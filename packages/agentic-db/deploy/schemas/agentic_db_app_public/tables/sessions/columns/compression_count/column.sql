-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/compression_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/columns/archived_messages/column


ALTER TABLE agentic_db_app_public.sessions 
  ADD COLUMN compression_count int;

