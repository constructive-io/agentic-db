-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.email_threads_chunks FROM authenticated;


