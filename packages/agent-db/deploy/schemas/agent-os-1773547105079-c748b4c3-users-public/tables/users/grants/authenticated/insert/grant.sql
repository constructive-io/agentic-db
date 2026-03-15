-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


GRANT INSERT (type, display_name, profile_picture, username) ON "agent-os-1773547105079-c748b4c3-users-public".users TO authenticated;

