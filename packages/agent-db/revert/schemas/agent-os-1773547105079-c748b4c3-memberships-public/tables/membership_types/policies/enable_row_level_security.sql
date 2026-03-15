-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".membership_types 
  DISABLE ROW LEVEL SECURITY;


