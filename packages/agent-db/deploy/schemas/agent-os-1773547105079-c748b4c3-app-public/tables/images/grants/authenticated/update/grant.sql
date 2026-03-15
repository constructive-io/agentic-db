-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/policies/auth_del_admin_deletes/policy


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".images TO authenticated;

