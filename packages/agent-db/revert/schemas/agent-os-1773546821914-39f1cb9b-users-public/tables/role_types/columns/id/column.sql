-- Revert: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/role_types/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".role_types 
  DROP COLUMN id RESTRICT;


