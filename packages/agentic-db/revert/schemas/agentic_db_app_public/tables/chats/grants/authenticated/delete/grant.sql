-- Revert: schemas/agentic_db_app_public/tables/chats/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.chats FROM authenticated;


