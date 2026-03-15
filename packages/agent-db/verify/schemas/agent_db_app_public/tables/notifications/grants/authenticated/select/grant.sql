-- Verify: schemas/agent_db_app_public/tables/notifications/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.notifications', 'select', 'authenticated');


