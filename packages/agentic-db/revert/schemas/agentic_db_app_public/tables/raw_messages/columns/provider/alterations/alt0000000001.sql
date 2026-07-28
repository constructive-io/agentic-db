-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/provider/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.raw_messages 
  ALTER COLUMN provider DROP NOT NULL;


