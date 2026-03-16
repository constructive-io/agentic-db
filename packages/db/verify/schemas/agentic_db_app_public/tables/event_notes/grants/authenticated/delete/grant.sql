-- Verify: schemas/agentic_db_app_public/tables/event_notes/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.event_notes', 'delete', 'authenticated');


