-- Verify: schemas/agentic_db_app_public/tables/tags/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.tags', 'update', 'authenticated');


