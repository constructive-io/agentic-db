-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/constraints/membership_types_name_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  DROP CONSTRAINT membership_types_name_key;


