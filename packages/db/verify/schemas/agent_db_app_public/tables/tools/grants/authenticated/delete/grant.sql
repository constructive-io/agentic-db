-- Verify: schemas/agent_db_app_public/tables/tools/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.tools', 'delete', 'authenticated');


