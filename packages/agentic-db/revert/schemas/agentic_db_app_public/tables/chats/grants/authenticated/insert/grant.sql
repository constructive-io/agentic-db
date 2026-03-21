-- Revert: schemas/agentic_db_app_public/tables/chats/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.chats FROM authenticated;


