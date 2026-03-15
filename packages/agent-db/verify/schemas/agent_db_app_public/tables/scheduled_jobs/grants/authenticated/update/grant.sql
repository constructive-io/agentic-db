-- Verify: schemas/agent_db_app_public/tables/scheduled_jobs/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.scheduled_jobs', 'update', 'authenticated');


