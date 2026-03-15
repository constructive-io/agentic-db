-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/id/alterations/alt0000000002
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ALTER COLUMN id SET NOT NULL;

