-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/policies/auth_sel_own/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/table


CREATE POLICY auth_sel_own ON "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

