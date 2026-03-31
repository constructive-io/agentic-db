-- Verify: schemas/agentic_db_app_public/tables/contact_phones/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.contact_phones', 'select', 'authenticated');


