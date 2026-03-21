-- Verify: schemas/agentic_db_app_public/tables/blueprint_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.blueprint_chunks', 'update', 'authenticated');


