-- Verify: schemas/agent_db_app_public/tables/chats/indexes/chats_started_at_idx


SELECT verify_index('agent_db_app_public.chats', 'chats_started_at_idx');


