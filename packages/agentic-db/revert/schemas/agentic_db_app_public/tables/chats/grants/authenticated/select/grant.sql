-- Revert: schemas/agentic_db_app_public/tables/chats/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.chats FROM authenticated;


