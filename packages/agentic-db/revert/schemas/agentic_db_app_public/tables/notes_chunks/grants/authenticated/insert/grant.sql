-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.notes_chunks FROM authenticated;


