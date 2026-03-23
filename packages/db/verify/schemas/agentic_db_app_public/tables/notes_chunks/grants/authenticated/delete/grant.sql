-- Verify: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.notes_chunks', 'delete', 'authenticated');


