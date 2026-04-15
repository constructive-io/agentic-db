-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN id RESTRICT;


