-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/constraints/notifications_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/list_items/columns/ref_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ADD CONSTRAINT notifications_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

