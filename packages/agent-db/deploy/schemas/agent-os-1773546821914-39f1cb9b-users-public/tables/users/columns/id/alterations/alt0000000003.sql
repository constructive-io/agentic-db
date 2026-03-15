-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/id/alterations/alt0000000003
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

