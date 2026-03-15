-- Revert: schemas/agent_db_limits_public/tables/app_limits/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_limits_public".app_limits FROM authenticated;


