-- Verify: schemas/agentic_db_app_public/tables/note_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.note_chunks', 'insert', 'authenticated');


