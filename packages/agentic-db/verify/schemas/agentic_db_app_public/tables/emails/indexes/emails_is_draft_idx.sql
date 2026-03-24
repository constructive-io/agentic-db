-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_is_draft_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_is_draft_idx');


