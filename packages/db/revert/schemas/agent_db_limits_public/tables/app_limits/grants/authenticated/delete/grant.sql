-- Revert: schemas/agent_db_limits_public/tables/app_limits/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_limits_public".app_limits FROM authenticated;


