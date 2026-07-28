-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/updated_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.raw_messages 
  ALTER COLUMN updated_at DROP DEFAULT;


