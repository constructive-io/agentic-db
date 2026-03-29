-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN entity_id RESTRICT;


