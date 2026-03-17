-- Revert: schemas/agentic_db_app_public/tables/chat_messages/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".chat_messages FROM authenticated;


