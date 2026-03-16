-- Revert: schemas/agent_db_app_public/tables/agent_rules/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".agent_rules FROM authenticated;


