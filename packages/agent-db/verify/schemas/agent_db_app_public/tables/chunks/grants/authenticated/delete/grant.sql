-- Verify: schemas/agent_db_app_public/tables/chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.chunks', 'delete', 'authenticated');


