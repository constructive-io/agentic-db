-- Verify: schemas/agentic_db_app_public/tables/raw_messages/indexes/raw_messages_external_id_idx


SELECT verify_index('agentic_db_app_public.raw_messages', 'raw_messages_external_id_idx');


