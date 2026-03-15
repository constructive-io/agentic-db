-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table


GRANT UPDATE (username, display_name, profile_picture) ON "agent-os-1773551593867-bac64076-users-public".users TO authenticated;

