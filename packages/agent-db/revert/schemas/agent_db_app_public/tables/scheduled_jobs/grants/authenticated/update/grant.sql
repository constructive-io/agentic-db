-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".scheduled_jobs FROM authenticated;


