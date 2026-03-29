-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN created_at RESTRICT;


