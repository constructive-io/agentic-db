-- Verify: schemas/agent_db_app_public/tables/notifications/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.notifications', 'delete', 'authenticated');


