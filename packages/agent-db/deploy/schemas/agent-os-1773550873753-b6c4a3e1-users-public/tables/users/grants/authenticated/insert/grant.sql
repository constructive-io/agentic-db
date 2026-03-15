-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table


GRANT INSERT (type, display_name, profile_picture, username) ON "agent-os-1773550873753-b6c4a3e1-users-public".users TO authenticated;

