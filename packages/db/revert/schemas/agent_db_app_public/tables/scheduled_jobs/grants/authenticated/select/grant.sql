-- Revert: schemas/agent_db_app_public/tables/scheduled_jobs/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".scheduled_jobs FROM authenticated;


