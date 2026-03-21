-- Verify: schemas/agentic_db_app_public/tables/email_accounts/indexes/email_accounts_email_idx


SELECT verify_index('agentic_db_app_public.email_accounts', 'email_accounts_email_idx');


