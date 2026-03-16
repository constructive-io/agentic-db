-- Revert: schemas/agent_db_app_public/tables/activity_log/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".activity_log FROM authenticated;


