-- Verify: schemas/agent_db_app_public/tables/calendar_accounts/indexes/calendar_accounts_email_idx


SELECT verify_index('agent_db_app_public.calendar_accounts', 'calendar_accounts_email_idx');


