-- Verify: schemas/agent_db_app_public/tables/agents/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.agents', 'delete', 'authenticated');


