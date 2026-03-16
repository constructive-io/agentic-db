-- Verify: schemas/agent_db_app_public/tables/tags/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.tags', 'insert', 'authenticated');


