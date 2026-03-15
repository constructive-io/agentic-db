-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/created_at/alterations/alt0000004339
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".chat_messages 
    ALTER COLUMN created_at SET DEFAULT now();

