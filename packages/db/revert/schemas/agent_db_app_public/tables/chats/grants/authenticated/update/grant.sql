-- Revert: schemas/agent_db_app_public/tables/chats/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".chats FROM authenticated;


