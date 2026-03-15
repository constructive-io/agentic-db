-- Verify: schemas/agent_db_app_public/tables/scheduled_jobs/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.scheduled_jobs', 'select', 'authenticated');


