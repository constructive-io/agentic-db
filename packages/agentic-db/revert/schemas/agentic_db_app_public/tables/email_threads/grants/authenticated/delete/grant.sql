-- Revert: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.email_threads FROM authenticated;


