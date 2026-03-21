-- Revert: schemas/agentic_db_app_public/tables/rules/columns/verification/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN verification RESTRICT;


