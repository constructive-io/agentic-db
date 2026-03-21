-- Revert: schemas/agentic_db_app_public/tables/agent_rules/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".agent_rules FROM authenticated;


