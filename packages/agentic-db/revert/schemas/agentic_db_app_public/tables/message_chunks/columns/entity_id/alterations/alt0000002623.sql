-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/entity_id/alterations/alt0000002623


ALTER TABLE agentic_db_app_public.message_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


