-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.idea_chunks 
  DROP COLUMN updated_at RESTRICT;


