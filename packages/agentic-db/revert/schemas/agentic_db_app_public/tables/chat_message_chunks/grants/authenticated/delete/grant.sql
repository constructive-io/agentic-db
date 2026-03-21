-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.chat_message_chunks FROM authenticated;


