-- Revert: schemas/agentic_db_app_public/tables/rules/columns/is_active/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN is_active RESTRICT;


