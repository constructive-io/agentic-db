-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/constraints/event_images_event_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_images 
  ADD CONSTRAINT event_images_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".events (id) 
    ON DELETE CASCADE;

