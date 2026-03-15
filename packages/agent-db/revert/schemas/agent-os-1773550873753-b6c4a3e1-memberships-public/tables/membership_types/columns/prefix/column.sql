-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/columns/prefix/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  DROP COLUMN prefix RESTRICT;


