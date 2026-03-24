-- Verify: schemas/agentic_db_app_public/tables/email_attachments/indexes/email_attachments_entity_id_idx


SELECT verify_index('agentic_db_app_public.email_attachments', 'email_attachments_entity_id_idx');


