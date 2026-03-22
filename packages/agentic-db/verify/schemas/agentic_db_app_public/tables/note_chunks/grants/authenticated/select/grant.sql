-- Verify: schemas/agentic_db_app_public/tables/note_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.note_chunks', 'select', 'authenticated');


