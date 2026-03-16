-- Verify: schemas/agentic_db_app_public/tables/email_accounts/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.email_accounts', 'update', 'authenticated');


