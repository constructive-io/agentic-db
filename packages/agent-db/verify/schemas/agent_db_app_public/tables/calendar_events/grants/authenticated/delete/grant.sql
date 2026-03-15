-- Verify: schemas/agent_db_app_public/tables/calendar_events/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.calendar_events', 'delete', 'authenticated');


