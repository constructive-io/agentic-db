-- Verify: schemas/agentic_db_app_public/tables/messages/indexes/messages_thread_id_idx


SELECT verify_index('agentic_db_app_public.messages', 'messages_thread_id_idx');


