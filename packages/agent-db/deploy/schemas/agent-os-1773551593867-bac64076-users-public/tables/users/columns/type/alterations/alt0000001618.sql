-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/type/alterations/alt0000001618
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/type/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  ALTER COLUMN type SET NOT NULL;

