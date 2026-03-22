-- Revert: schemas/agentic_db_app_public/tables/conversations/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.conversations FROM authenticated;


