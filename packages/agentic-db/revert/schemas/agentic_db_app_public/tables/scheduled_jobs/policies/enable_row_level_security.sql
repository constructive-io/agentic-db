-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".scheduled_jobs 
  DISABLE ROW LEVEL SECURITY;


