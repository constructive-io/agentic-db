-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_admin_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_admin_grants 
  DISABLE ROW LEVEL SECURITY;


