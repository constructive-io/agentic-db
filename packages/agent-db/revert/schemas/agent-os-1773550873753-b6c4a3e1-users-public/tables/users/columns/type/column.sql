-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  DROP COLUMN type RESTRICT;


