-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".rules 
  ADD COLUMN created_at timestamptz;

