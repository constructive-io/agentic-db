-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/columns/id/alterations/alt0000002593
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_venues 
  ALTER COLUMN id SET NOT NULL;

