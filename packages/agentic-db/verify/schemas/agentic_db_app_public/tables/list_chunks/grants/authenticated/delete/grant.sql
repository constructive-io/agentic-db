-- Verify: schemas/agentic_db_app_public/tables/list_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.list_chunks', 'delete', 'authenticated');


