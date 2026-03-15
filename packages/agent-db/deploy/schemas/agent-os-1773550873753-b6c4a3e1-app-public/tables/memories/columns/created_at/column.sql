-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  ADD COLUMN created_at timestamptz;

