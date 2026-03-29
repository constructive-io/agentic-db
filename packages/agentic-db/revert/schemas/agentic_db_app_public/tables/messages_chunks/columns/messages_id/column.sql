-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/messages_id/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN messages_id RESTRICT;


