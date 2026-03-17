-- Verify: schemas/agentic_db_app_public/tables/user_settings/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.user_settings', 'insert', 'authenticated');


