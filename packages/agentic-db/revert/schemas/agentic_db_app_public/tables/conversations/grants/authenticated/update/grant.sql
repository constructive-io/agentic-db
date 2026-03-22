-- Revert: schemas/agentic_db_app_public/tables/conversations/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.conversations FROM authenticated;


