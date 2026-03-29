-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/entity_id/alterations/alt0000005687


ALTER TABLE agentic_db_app_public.messages_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


