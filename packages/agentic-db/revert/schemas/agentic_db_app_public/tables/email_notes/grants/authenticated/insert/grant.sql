-- Revert: schemas/agentic_db_app_public/tables/email_notes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.email_notes FROM authenticated;


