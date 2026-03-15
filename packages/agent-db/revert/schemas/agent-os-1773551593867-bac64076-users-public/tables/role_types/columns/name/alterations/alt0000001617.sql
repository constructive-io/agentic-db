-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/name/alterations/alt0000001617


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".role_types 
  ALTER COLUMN name DROP NOT NULL;


