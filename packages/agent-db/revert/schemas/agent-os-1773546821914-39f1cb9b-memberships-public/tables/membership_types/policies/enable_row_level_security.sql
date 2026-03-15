-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types 
  DISABLE ROW LEVEL SECURITY;


