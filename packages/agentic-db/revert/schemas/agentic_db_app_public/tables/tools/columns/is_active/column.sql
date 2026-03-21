-- Revert: schemas/agentic_db_app_public/tables/tools/columns/is_active/column


ALTER TABLE agentic_db_app_public.tools 
  DROP COLUMN is_active RESTRICT;


