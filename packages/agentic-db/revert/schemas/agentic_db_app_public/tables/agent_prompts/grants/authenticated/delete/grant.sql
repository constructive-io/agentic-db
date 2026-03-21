-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.agent_prompts FROM authenticated;


