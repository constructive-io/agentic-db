-- Verify: schemas/agent_db_app_public/tables/memories/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.memories', 'update', 'authenticated');


