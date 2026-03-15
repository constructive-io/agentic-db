-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/alterations/alt0000000849
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
  DISABLE ROW LEVEL SECURITY;

