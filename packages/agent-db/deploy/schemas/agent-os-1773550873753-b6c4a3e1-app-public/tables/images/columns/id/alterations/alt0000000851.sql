-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/id/alterations/alt0000000851
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

