-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/created_at/alterations/alt0000002530
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ALTER COLUMN created_at SET NOT NULL;

