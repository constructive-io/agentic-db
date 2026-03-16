-- Revert: schemas/agent_db_app_public/tables/chats/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".chats FROM authenticated;


