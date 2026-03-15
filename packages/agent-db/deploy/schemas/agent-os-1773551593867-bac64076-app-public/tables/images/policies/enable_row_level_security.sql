-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ENABLE ROW LEVEL SECURITY;

