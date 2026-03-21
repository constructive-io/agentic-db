-- Revert: schemas/agentic_db_app_public/tables/list_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.list_chunks FROM authenticated;


