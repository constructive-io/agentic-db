-- Verify: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.notes_chunks', 'update', 'authenticated');


