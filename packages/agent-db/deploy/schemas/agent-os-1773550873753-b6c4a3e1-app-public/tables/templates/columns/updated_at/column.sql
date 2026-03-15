-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ADD COLUMN updated_at timestamptz;

