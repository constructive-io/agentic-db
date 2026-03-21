-- Revert: schemas/agentic_db_app_public/tables/email_accounts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.email_accounts FROM authenticated;


