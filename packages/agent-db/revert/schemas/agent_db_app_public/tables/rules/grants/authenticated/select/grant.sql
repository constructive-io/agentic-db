-- Revert: schemas/agent_db_app_public/tables/rules/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".rules FROM authenticated;


