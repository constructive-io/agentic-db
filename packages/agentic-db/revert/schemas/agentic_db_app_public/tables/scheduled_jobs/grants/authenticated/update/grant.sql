-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.scheduled_jobs FROM authenticated;


