-- Verify: schemas/agent_db_app_public/tables/chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.chunks', 'insert', 'authenticated');


