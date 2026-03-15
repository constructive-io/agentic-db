-- Revert: schemas/agent_db_app_public/tables/rules/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".rules FROM authenticated;


