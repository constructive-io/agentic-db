-- Revert: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/column


ALTER TABLE "agentic_db_app_public".runtime_config 
  DROP COLUMN is_secret RESTRICT;


