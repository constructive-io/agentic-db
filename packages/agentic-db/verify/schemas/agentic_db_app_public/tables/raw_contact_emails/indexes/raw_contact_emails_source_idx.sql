-- Verify: schemas/agentic_db_app_public/tables/raw_contact_emails/indexes/raw_contact_emails_source_idx


SELECT verify_index('agentic_db_app_public.raw_contact_emails', 'raw_contact_emails_source_idx');


