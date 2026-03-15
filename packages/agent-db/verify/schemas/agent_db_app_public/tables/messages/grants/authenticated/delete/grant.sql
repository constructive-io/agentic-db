-- Verify: schemas/agent_db_app_public/tables/messages/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.messages', 'delete', 'authenticated');


