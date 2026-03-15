-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/constraints/chats_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  ADD CONSTRAINT chats_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

