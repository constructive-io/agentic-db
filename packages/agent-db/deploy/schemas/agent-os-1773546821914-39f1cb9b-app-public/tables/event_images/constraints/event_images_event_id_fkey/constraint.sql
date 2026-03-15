-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/constraints/event_images_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
  ADD CONSTRAINT event_images_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".events (id) 
    ON DELETE CASCADE;

