-- Verify: schemas/agent_db_app_public/tables/email_accounts/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.email_accounts', 'select', 'authenticated');


