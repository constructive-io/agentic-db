-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants 
  DISABLE ROW LEVEL SECURITY;


