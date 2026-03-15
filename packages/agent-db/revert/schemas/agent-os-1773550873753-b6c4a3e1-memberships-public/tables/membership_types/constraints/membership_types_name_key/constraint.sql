-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/constraints/membership_types_name_key/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  DROP CONSTRAINT membership_types_name_key;


