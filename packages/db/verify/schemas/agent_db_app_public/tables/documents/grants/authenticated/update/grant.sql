-- Verify: schemas/agent_db_app_public/tables/documents/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.documents', 'update', 'authenticated');


