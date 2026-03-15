-- Verify: schemas/agent_db_app_public/tables/activity_log/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.activity_log', 'insert', 'authenticated');


