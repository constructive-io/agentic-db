-- Verify: schemas/agent_db_app_public/tables/attachments/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.attachments', 'update', 'authenticated');


