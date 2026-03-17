-- Revert: schemas/agentic_db_app_public/tables/scheduled_jobs/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".scheduled_jobs FROM authenticated;


