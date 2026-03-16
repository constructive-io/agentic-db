-- Verify: schemas/agent_db_app_public/tables/threads/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.threads', 'delete', 'authenticated');


