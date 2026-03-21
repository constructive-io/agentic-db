-- Verify: schemas/agentic_db_app_public/tables/repositories/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.repositories', 'delete', 'authenticated');


