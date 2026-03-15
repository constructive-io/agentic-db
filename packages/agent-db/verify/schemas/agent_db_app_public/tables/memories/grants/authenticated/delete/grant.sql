-- Verify: schemas/agent_db_app_public/tables/memories/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.memories', 'delete', 'authenticated');


