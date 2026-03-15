-- Verify: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.calendar_events', 'update', 'authenticated');


