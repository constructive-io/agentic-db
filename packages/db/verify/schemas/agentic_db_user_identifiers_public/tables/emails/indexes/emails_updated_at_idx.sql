-- Verify: schemas/agentic_db_user_identifiers_public/tables/emails/indexes/emails_updated_at_idx


SELECT verify_index('agentic_db_user_identifiers_public.emails', 'emails_updated_at_idx');


