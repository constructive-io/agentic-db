-- Revert: schemas/agentic_db_app_public/tables/note_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.note_chunks FROM authenticated;


