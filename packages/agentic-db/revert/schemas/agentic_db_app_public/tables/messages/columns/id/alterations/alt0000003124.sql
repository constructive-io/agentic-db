-- Revert: schemas/agentic_db_app_public/tables/messages/columns/id/alterations/alt0000003124


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN id DROP NOT NULL;


