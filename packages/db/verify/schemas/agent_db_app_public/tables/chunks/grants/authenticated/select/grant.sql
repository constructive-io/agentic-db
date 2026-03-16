-- Verify: schemas/agent_db_app_public/tables/chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.chunks', 'select', 'authenticated');


