-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/created_at/alterations/alt0000003049
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
    ALTER COLUMN created_at SET DEFAULT now();

