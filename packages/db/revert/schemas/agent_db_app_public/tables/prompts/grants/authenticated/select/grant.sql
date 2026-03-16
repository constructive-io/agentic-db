-- Revert: schemas/agent_db_app_public/tables/prompts/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".prompts FROM authenticated;


