-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/quantity_unit/column


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP COLUMN quantity_unit RESTRICT;


