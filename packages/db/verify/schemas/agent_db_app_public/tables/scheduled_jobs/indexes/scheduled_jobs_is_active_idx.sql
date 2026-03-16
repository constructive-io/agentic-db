-- Verify: schemas/agent_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_is_active_idx


SELECT verify_index('agent_db_app_public.scheduled_jobs', 'scheduled_jobs_is_active_idx');


