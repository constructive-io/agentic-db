-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/updated_at/alterations/alt0000000013


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ALTER COLUMN updated_at DROP DEFAULT;


