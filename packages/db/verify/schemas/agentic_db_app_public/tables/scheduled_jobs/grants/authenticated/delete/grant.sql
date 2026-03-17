-- Verify: schemas/agentic_db_app_public/tables/scheduled_jobs/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.scheduled_jobs', 'delete', 'authenticated');


