-- Revert: schemas/agentic_db_app_public/tables/rules/columns/title/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN title RESTRICT;


