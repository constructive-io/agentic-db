-- Verify: schemas/agent_db_app_public/tables/calendar_sync/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.calendar_sync', 'insert', 'authenticated');


