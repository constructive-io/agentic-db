-- Verify: schemas/agent_db_app_public/tables/tools/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.tools', 'insert', 'authenticated');


