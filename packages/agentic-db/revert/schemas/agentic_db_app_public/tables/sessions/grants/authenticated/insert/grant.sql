-- Revert: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.sessions FROM authenticated;


