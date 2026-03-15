-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/entity_id/alterations/alt0000002784
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ALTER COLUMN entity_id SET NOT NULL;

