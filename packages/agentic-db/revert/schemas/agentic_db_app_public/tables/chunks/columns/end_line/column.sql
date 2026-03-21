-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/end_line/column


ALTER TABLE agentic_db_app_public.chunks 
  DROP COLUMN end_line RESTRICT;


