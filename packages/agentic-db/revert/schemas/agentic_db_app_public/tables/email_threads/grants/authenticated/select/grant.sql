-- Revert: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.email_threads FROM authenticated;


