-- Verify: schemas/agentic_db_app_public/tables/blueprints/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.blueprints', 'insert', 'authenticated');


