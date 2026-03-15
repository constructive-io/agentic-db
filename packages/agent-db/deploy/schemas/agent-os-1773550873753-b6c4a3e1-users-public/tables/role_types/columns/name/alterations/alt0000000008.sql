-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/columns/name/alterations/alt0000000008
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".role_types 
  ALTER COLUMN name SET NOT NULL;

