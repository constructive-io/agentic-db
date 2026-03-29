-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN conversations_id RESTRICT;


