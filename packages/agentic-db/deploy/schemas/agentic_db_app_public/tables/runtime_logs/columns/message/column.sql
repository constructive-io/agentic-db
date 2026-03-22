-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/message/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/alterations/alt0000005992


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD COLUMN message text;

