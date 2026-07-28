-- Verify: schemas/agentic_db_app_public/tables/raw_messages/indexes/raw_messages_sender_contact_id_idx


SELECT verify_index('agentic_db_app_public.raw_messages', 'raw_messages_sender_contact_id_idx');


