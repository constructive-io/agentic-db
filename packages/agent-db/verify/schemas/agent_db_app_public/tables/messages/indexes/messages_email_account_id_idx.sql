-- Verify: schemas/agent_db_app_public/tables/messages/indexes/messages_email_account_id_idx


SELECT verify_index('agent_db_app_public.messages', 'messages_email_account_id_idx');


