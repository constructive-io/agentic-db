-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.chat_chunks FROM authenticated;


