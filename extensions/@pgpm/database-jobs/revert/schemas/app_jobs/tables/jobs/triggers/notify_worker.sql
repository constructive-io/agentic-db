-- Revert schemas/app_jobs/tables/jobs/triggers/notify_worker from pg
BEGIN;
DROP TRIGGER IF EXISTS _900_notify_worker ON app_jobs.jobs;
DROP TRIGGER IF EXISTS _900_after_insert ON app_jobs.jobs;
DROP FUNCTION IF EXISTS app_jobs.tg_jobs__after_insert;
COMMIT;
