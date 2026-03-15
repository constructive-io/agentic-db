-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/updated_at/alterations/alt0000002779
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  ALTER COLUMN updated_at SET NOT NULL;

