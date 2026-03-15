-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  ADD COLUMN created_at timestamptz;

