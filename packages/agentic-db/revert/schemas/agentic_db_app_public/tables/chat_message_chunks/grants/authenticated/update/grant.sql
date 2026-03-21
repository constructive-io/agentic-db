-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".chat_message_chunks FROM authenticated;


