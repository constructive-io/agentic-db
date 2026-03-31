-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  DROP COLUMN updated_at RESTRICT;


