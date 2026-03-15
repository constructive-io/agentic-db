-- Deploy: schemas/agent_db_memberships_public/tables/membership_types/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/membership_types/table


CREATE POLICY auth_sel ON agent_db_memberships_public.membership_types
FOR SELECT
TO authenticated
USING (
  TRUE
);

