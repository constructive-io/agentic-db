-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  DROP COLUMN updated_at RESTRICT;


