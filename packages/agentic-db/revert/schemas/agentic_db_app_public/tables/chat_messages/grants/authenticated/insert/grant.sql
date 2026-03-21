-- Revert: schemas/agentic_db_app_public/tables/chat_messages/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".chat_messages FROM authenticated;


