-- Verify: schemas/agent_db_app_public/tables/tools/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.tools', 'select', 'authenticated');


