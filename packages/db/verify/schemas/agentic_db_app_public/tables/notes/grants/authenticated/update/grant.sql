-- Verify: schemas/agentic_db_app_public/tables/notes/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.notes', 'update', 'authenticated');


