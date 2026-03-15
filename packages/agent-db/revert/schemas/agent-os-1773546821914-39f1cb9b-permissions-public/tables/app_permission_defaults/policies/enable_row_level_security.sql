-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permission_defaults 
  DISABLE ROW LEVEL SECURITY;


