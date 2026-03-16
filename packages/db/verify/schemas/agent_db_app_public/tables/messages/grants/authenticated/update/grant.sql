-- Verify: schemas/agent_db_app_public/tables/messages/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.messages', 'update', 'authenticated');


