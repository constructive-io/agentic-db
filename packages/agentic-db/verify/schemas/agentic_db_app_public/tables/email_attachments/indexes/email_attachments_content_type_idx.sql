-- Verify: schemas/agentic_db_app_public/tables/email_attachments/indexes/email_attachments_content_type_idx


SELECT verify_index('agentic_db_app_public.email_attachments', 'email_attachments_content_type_idx');


