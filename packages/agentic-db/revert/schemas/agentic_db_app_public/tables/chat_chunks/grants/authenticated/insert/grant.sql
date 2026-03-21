-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.chat_chunks FROM authenticated;


