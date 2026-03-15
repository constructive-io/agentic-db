-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/display_name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  DROP COLUMN display_name RESTRICT;


