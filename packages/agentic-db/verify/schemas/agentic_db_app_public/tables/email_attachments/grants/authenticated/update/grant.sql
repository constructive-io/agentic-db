-- Verify: schemas/agentic_db_app_public/tables/email_attachments/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.email_attachments', 'update', 'authenticated');


