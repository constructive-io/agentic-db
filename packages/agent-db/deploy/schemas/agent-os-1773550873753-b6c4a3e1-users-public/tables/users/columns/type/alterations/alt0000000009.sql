-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/type/alterations/alt0000000009
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  ALTER COLUMN type SET NOT NULL;

