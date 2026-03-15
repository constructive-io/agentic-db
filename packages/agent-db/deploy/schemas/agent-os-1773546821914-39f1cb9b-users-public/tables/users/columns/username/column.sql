-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/username/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ADD COLUMN username citext;

