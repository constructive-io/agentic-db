-- Deploy: schemas/agent_db_app_public/tables/chats/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".chats 
  ADD COLUMN updated_at timestamptz;

