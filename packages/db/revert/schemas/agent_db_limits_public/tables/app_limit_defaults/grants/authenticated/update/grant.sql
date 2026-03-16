-- Revert: schemas/agent_db_limits_public/tables/app_limit_defaults/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_limits_public".app_limit_defaults FROM authenticated;


