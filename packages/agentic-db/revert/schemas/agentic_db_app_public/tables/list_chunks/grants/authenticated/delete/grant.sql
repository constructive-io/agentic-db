-- Revert: schemas/agentic_db_app_public/tables/list_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.list_chunks FROM authenticated;


