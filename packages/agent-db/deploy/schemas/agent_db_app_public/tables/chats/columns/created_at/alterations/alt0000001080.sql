-- Deploy: schemas/agent_db_app_public/tables/chats/columns/created_at/alterations/alt0000001080
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chats/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/chats/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.chats 
  ALTER COLUMN created_at SET NOT NULL;

