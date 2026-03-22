-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/start_line/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN start_line RESTRICT;


