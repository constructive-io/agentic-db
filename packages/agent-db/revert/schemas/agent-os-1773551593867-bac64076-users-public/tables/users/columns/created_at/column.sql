-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  DROP COLUMN created_at RESTRICT;


