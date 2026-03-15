-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/constraints/calendar_events_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ADD CONSTRAINT calendar_events_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

