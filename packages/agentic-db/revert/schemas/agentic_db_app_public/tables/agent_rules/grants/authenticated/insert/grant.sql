-- Revert: schemas/agentic_db_app_public/tables/agent_rules/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.agent_rules FROM authenticated;


