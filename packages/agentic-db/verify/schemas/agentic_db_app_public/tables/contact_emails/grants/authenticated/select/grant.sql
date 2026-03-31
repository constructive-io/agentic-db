-- Verify: schemas/agentic_db_app_public/tables/contact_emails/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.contact_emails', 'select', 'authenticated');


