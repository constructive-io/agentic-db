-- Verify: schemas/agentic_db_app_public/tables/tags/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.tags', 'delete', 'authenticated');


