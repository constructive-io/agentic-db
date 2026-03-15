-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/columns/id/alterations/alt0000002587
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  ALTER COLUMN id SET NOT NULL;

