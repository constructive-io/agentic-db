-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_memberships/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships 
  DISABLE ROW LEVEL SECURITY;


