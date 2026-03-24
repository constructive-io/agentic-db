-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_from_contact_id_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_from_contact_id_idx');


