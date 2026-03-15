-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/constraints/attachments_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/usage_count/alterations/alt0000002546


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ADD CONSTRAINT attachments_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

