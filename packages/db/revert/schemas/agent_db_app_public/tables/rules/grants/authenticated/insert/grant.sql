-- Revert: schemas/agent_db_app_public/tables/rules/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".rules FROM authenticated;


