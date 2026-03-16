-- Verify: schemas/agent_db_app_public/tables/rules/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.rules', 'delete', 'authenticated');


