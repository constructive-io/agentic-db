-- Verify: schemas/agent_db_app_public/tables/tags/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.tags', 'select', 'authenticated');


