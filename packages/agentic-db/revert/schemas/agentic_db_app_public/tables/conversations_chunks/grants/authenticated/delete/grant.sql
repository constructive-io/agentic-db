-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.conversations_chunks FROM authenticated;


