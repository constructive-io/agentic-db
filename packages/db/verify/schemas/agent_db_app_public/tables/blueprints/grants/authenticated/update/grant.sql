-- Verify: schemas/agent_db_app_public/tables/blueprints/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.blueprints', 'update', 'authenticated');


