-- Revert: schemas/agent_db_app_public/tables/prompts/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.prompts FROM authenticated;


