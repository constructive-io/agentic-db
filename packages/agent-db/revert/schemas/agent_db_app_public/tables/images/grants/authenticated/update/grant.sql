-- Revert: schemas/agent_db_app_public/tables/images/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".images FROM authenticated;


