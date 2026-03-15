-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/alterations/alt0000002556
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_images 
  DISABLE ROW LEVEL SECURITY;

