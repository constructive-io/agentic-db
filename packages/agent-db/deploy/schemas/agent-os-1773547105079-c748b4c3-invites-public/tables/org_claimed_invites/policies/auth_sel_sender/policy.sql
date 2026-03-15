-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/policies/auth_sel_sender/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_claimed_invites/table


CREATE POLICY auth_sel_sender ON "agent-os-1773547105079-c748b4c3-invites-public".org_claimed_invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

