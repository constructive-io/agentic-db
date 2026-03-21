-- Revert: schemas/agentic_db_app_public/tables/threads/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.threads FROM authenticated;


