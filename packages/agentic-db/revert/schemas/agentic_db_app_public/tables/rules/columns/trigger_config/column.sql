-- Revert: schemas/agentic_db_app_public/tables/rules/columns/trigger_config/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN trigger_config RESTRICT;


