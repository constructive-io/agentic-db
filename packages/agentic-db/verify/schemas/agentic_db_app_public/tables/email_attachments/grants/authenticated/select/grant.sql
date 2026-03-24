-- Verify: schemas/agentic_db_app_public/tables/email_attachments/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.email_attachments', 'select', 'authenticated');


