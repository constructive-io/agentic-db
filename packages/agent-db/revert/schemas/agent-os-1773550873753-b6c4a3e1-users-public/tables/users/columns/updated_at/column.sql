-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  DROP COLUMN updated_at RESTRICT;


