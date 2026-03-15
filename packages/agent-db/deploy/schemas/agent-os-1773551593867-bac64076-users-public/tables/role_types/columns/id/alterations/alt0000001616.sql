-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/id/alterations/alt0000001616
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".role_types 
  ALTER COLUMN id SET NOT NULL;

