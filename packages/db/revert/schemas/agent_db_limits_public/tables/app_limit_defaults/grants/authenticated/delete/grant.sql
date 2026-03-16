-- Revert: schemas/agent_db_limits_public/tables/app_limit_defaults/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_limits_public".app_limit_defaults FROM authenticated;


