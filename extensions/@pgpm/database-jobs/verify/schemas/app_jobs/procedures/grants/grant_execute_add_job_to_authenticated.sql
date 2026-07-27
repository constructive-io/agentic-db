-- Verify schemas/app_jobs/procedures/grants/grant_execute_add_job_to_authenticated on pg

BEGIN;

SELECT has_function_privilege('authenticated', 'app_jobs.add_job(text, json, text, text, timestamptz, integer, integer, uuid, uuid, text, uuid, text)', 'EXECUTE');

ROLLBACK;
