-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN created_at RESTRICT;


