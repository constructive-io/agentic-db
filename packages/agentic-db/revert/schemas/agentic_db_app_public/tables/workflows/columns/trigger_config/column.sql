-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/trigger_config/column


ALTER TABLE "agentic_db_app_public".workflows 
  DROP COLUMN trigger_config RESTRICT;


