-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_owner_grants 
  DISABLE ROW LEVEL SECURITY;


