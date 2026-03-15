-- Verify: schemas/agent_db_app_public/tables/images/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.images', 'insert', 'authenticated');


