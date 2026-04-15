-- Verify: schemas/agentic_db_user_identifiers_public/tables/emails/indexes/emails_is_primary_idx


SELECT verify_index('agentic_db_user_identifiers_public.emails', 'emails_is_primary_idx');


