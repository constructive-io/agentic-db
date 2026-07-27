-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/columns/message/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.runtime_logs 
  ALTER COLUMN message DROP NOT NULL;


