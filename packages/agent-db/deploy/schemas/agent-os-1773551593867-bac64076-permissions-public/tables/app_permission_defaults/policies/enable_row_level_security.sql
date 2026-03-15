-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/table


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permission_defaults 
  ENABLE ROW LEVEL SECURITY;

