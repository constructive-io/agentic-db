-- Verify: schemas/agent_db_app_public/tables/agent_rules/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.agent_rules', 'delete', 'authenticated');


