-- Verify: schemas/agent_db_app_public/tables/messages/indexes/messages_body_text_bm25_idx


SELECT verify_index('agent_db_app_public.messages', 'messages_body_text_bm25_idx');


