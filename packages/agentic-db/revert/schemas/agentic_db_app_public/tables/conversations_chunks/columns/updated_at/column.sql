-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN updated_at RESTRICT;


