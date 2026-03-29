-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.notes_chunks FROM authenticated;


