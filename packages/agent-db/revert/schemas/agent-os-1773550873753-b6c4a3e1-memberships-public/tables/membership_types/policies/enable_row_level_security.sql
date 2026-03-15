-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/membership_types/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".membership_types 
  DISABLE ROW LEVEL SECURITY;


