-- Verify: schemas/agent_db_app_public/tables/user_settings/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.user_settings', 'select', 'authenticated');


