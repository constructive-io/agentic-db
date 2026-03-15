-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".role_types 
  DROP COLUMN name RESTRICT;


