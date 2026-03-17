-- Verify: schemas/agentic_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_agent_id_idx


SELECT verify_index('agentic_db_app_public.scheduled_jobs', 'scheduled_jobs_agent_id_idx');


