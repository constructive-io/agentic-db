-- Verify: schemas/agent_db_app_public/tables/lists/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.lists', 'insert', 'authenticated');


