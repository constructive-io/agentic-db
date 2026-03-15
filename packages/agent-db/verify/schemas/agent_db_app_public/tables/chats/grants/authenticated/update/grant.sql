-- Verify: schemas/agent_db_app_public/tables/chats/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.chats', 'update', 'authenticated');


