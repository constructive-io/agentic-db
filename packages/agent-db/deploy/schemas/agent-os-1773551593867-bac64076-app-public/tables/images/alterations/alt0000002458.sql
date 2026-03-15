-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/alterations/alt0000002458
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  DISABLE ROW LEVEL SECURITY;

