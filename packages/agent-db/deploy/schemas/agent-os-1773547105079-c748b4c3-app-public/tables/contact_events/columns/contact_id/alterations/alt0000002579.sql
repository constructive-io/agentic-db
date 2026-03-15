-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/columns/contact_id/alterations/alt0000002579
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/columns/contact_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_companies/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_events 
  ALTER COLUMN contact_id SET NOT NULL;

