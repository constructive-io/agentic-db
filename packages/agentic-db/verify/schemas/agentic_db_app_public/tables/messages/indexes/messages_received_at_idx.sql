-- Verify: schemas/agentic_db_app_public/tables/messages/indexes/messages_received_at_idx


SELECT verify_index('agentic_db_app_public.messages', 'messages_received_at_idx');


