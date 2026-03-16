-- Verify: schemas/agent_db_app_public/tables/ideas/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.ideas', 'delete', 'authenticated');


