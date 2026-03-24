-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_to_recipients_gin_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_to_recipients_gin_idx');


