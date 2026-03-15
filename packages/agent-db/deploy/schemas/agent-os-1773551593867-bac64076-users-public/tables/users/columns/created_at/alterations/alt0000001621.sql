-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/created_at/alterations/alt0000001621
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  ALTER COLUMN created_at SET DEFAULT now();

