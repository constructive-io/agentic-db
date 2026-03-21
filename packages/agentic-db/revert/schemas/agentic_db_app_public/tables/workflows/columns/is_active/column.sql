-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/is_active/column


ALTER TABLE agentic_db_app_public.workflows 
  DROP COLUMN is_active RESTRICT;


