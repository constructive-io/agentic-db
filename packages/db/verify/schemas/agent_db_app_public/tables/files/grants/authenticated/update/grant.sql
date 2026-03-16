-- Verify: schemas/agent_db_app_public/tables/files/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.files', 'update', 'authenticated');


