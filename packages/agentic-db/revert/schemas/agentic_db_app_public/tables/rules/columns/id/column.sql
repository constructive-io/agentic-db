-- Revert: schemas/agentic_db_app_public/tables/rules/columns/id/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN id RESTRICT;


