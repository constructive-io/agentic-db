-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
  ADD COLUMN created_at timestamptz;

