-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.conversation_chunks 
  DROP COLUMN entity_id RESTRICT;


