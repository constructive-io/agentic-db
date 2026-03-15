-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  ADD COLUMN created_at timestamptz;

