-- Verify: schemas/agent_db_app_public/tables/notifications/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.notifications', 'insert', 'authenticated');


