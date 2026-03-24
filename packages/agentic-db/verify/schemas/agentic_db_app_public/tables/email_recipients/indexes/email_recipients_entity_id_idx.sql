-- Verify: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_entity_id_idx


SELECT verify_index('agentic_db_app_public.email_recipients', 'email_recipients_entity_id_idx');


