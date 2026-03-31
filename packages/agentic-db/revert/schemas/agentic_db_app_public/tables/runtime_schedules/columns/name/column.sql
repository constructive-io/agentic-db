-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/name/column


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  DROP COLUMN name RESTRICT;


