-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/columns/name/alterations/alt0000000008
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".role_types 
  ALTER COLUMN name SET NOT NULL;

