-- Verify: schemas/agentic_db_app_public/tables/notes_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.notes_chunks', 'select', 'authenticated');


