-- Deploy: schemas/agentic_db_app_public/tables/raw_messages/columns/provider/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table
-- requires: schemas/agentic_db_app_public/tables/raw_messages/columns/provider/column


ALTER TABLE agentic_db_app_public.raw_messages 
  ALTER COLUMN provider SET NOT NULL;

