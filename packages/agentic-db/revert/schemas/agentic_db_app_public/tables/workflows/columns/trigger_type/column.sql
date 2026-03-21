-- Revert: schemas/agentic_db_app_public/tables/workflows/columns/trigger_type/column


ALTER TABLE "agentic_db_app_public".workflows 
  DROP COLUMN trigger_type RESTRICT;


