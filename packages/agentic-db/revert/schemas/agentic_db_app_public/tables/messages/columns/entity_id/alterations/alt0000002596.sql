-- Revert: schemas/agentic_db_app_public/tables/messages/columns/entity_id/alterations/alt0000002596


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN entity_id DROP NOT NULL;


