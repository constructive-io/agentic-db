-- Verify schemas/app_jobs/procedures/grants/grant_execute_add_scheduled_job_to_authenticated on pg

BEGIN;

SELECT has_function_privilege('authenticated', 'app_jobs.add_scheduled_job(text, json, json, text, text, integer, integer, uuid, uuid)', 'EXECUTE');

ROLLBACK;
