-- Verify: schemas/agentic_db_app_public/tables/templates/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.templates', 'update', 'authenticated');


