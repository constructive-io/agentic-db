-- Revert: schemas/agentic_db_app_public/tables/messages/columns/id/alterations/alt0000000435


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN id DROP NOT NULL;


