-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/created_at/alterations/alt0000001168
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/created_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  ALTER COLUMN created_at SET NOT NULL;

