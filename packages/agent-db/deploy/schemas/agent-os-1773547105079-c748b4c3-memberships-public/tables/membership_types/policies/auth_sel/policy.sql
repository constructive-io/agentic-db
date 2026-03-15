-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/membership_types/table


CREATE POLICY auth_sel ON "agent-os-1773547105079-c748b4c3-memberships-public".membership_types
FOR SELECT
TO authenticated
USING (
  TRUE
);

