-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  DROP COLUMN name RESTRICT;


