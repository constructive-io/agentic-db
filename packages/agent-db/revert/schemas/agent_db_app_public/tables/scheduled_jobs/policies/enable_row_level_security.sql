-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.scheduled_jobs 
  DISABLE ROW LEVEL SECURITY;


