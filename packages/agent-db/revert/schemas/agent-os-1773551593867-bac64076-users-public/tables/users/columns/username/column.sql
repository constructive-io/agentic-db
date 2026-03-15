-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/username/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  DROP COLUMN username RESTRICT;


