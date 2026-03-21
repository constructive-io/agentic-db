-- Verify: schemas/agentic_db_app_public/tables/contact_notes/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.contact_notes', 'select', 'authenticated');


