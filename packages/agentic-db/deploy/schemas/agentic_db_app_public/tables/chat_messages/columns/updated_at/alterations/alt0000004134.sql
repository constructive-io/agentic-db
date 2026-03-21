-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/columns/updated_at/alterations/alt0000004134
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.chat_messages 
    ALTER COLUMN updated_at SET DEFAULT now();

