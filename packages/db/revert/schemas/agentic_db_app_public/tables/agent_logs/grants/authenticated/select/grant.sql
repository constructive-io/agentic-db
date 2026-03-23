-- Revert: schemas/agentic_db_app_public/tables/agent_logs/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".agent_logs FROM authenticated;


