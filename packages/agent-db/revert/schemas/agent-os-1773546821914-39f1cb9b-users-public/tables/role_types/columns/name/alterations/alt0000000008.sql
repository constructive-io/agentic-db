-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/columns/name/alterations/alt0000000008


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".role_types 
  ALTER COLUMN name DROP NOT NULL;


