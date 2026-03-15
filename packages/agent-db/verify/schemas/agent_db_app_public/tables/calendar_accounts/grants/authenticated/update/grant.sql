-- Verify: schemas/agent_db_app_public/tables/calendar_accounts/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.calendar_accounts', 'update', 'authenticated');


