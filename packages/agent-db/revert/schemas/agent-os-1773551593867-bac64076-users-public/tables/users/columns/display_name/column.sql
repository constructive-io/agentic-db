-- Revert: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/display_name/column


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  DROP COLUMN display_name RESTRICT;


