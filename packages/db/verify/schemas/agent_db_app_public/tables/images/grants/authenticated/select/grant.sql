-- Verify: schemas/agent_db_app_public/tables/images/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.images', 'select', 'authenticated');


