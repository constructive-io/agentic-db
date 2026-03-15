-- Revert: schemas/agent_db_app_public/tables/chat_messages/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.chat_messages FROM authenticated;


