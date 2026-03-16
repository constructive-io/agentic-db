-- Revert: schemas/agent_db_app_public/tables/agent_prompts/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".agent_prompts FROM authenticated;


