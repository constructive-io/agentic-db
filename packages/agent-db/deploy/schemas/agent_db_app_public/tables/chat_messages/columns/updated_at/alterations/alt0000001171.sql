-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/updated_at/alterations/alt0000001171
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.chat_messages 
    ALTER COLUMN updated_at SET DEFAULT now();

