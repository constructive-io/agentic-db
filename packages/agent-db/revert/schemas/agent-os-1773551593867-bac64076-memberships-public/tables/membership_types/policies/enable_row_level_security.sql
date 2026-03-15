-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".membership_types 
  DISABLE ROW LEVEL SECURITY;


