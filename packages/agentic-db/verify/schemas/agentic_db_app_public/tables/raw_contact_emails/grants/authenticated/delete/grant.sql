-- Verify: schemas/agentic_db_app_public/tables/raw_contact_emails/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.raw_contact_emails', 'delete', 'authenticated');


