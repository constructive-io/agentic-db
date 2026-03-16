-- Verify: schemas/agent_db_app_public/tables/agent_tools/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.agent_tools', 'delete', 'authenticated');


