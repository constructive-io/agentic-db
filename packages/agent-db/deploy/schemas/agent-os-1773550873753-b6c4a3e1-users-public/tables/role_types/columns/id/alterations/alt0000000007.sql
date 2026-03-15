-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/columns/id/alterations/alt0000000007
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".role_types 
  ALTER COLUMN id SET NOT NULL;

