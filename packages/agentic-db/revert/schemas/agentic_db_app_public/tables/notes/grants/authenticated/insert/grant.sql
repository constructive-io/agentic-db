-- Revert: schemas/agentic_db_app_public/tables/notes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.notes FROM authenticated;


