-- Revert: schemas/agentic_db_app_public/tables/session_archives/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.session_archives FROM authenticated;


