-- Verify: schemas/agent_db_app_public/tables/events/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.events', 'update', 'authenticated');


