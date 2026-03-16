-- Verify: schemas/agent_db_app_public/tables/email_accounts/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.email_accounts', 'delete', 'authenticated');


