-- Verify: schemas/agent_db_app_public/tables/processes/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.processes', 'select', 'authenticated');


