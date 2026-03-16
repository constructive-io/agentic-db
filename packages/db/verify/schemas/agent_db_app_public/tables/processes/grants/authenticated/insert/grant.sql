-- Verify: schemas/agent_db_app_public/tables/processes/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.processes', 'insert', 'authenticated');


