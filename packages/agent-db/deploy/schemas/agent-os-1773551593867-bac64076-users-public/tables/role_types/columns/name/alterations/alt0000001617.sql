-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/name/alterations/alt0000001617
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".role_types 
  ALTER COLUMN name SET NOT NULL;

