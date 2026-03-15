-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/constraints/reminders_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ADD CONSTRAINT reminders_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

