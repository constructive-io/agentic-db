-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/membership_types/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-memberships-public".membership_types
FOR SELECT
TO authenticated
USING (
  TRUE
);

