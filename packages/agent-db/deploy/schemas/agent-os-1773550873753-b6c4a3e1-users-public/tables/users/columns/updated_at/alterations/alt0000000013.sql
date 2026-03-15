-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/updated_at/alterations/alt0000000013
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  ALTER COLUMN updated_at SET DEFAULT now();

