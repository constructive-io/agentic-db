-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/alterations/alt0000001023
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_events 
  DISABLE ROW LEVEL SECURITY;

