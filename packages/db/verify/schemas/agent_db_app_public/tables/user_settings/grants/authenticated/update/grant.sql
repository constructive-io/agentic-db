-- Verify: schemas/agent_db_app_public/tables/user_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.user_settings', 'update', 'authenticated');


