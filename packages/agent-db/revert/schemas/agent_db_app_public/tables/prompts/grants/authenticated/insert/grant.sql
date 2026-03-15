-- Revert: schemas/agent_db_app_public/tables/prompts/grants/authenticated/insert/grant


REVOKE INSERT ON agent_db_app_public.prompts FROM authenticated;


