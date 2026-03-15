-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/alterations/alt0000002584
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".company_events 
  DISABLE ROW LEVEL SECURITY;

