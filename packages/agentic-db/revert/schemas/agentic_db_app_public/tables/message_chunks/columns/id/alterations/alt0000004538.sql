-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/id/alterations/alt0000004538


ALTER TABLE agentic_db_app_public.message_chunks 
  ALTER COLUMN id DROP NOT NULL;


