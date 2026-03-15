-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/id/alterations/alt0000002460
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_del_admin_deletes/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

