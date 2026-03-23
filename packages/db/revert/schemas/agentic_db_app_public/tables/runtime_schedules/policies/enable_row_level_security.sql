-- Revert: schemas/agentic_db_app_public/tables/runtime_schedules/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".runtime_schedules 
  DISABLE ROW LEVEL SECURITY;


