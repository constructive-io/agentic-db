-- Verify: schemas/agent_db_app_public/tables/files/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.files', 'insert', 'authenticated');


