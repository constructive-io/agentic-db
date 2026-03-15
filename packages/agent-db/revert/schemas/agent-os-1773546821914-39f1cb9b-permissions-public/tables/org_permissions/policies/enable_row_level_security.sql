-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions 
  DISABLE ROW LEVEL SECURITY;


