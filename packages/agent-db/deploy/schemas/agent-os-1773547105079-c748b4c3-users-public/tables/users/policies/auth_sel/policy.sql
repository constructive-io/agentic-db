-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


CREATE POLICY auth_sel ON "agent-os-1773547105079-c748b4c3-users-public".users
FOR SELECT
TO authenticated
USING (
  TRUE
);

