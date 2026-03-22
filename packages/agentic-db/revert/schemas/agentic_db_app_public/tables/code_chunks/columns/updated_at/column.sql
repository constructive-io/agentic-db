-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN updated_at RESTRICT;


