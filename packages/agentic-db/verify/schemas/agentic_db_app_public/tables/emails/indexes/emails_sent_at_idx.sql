-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_sent_at_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_sent_at_idx');


