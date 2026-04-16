-- Revert: schemas/agentic_db_app_public/tables/rules/columns/action_type/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN action_type RESTRICT;


