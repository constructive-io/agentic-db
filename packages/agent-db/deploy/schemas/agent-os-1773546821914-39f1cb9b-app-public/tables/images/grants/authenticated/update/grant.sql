-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/policies/auth_del_admin_deletes/policy


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".images TO authenticated;

