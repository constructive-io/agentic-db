-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.raw_messages 
  ALTER COLUMN id DROP NOT NULL;


