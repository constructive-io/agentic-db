-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table


GRANT UPDATE (username, display_name, profile_picture) ON "agent-os-1773546821914-39f1cb9b-users-public".users TO authenticated;

