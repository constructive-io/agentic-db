-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  DROP COLUMN created_at RESTRICT;


