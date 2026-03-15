-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/id/alterations/alt0000000851
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

