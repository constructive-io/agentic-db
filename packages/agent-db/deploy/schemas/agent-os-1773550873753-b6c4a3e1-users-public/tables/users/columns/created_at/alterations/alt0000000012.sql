-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/created_at/alterations/alt0000000012
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  ALTER COLUMN created_at SET DEFAULT now();

