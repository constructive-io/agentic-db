-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/id/alterations/alt0000001612
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

