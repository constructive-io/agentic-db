-- Revert: schemas/agent_db_app_public/tables/prompts/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".prompts FROM authenticated;


