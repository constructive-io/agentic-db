-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/policies/auth_sel_sender/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_claimed_invites/table


CREATE POLICY auth_sel_sender ON "agent-os-1773550873753-b6c4a3e1-invites-public".org_claimed_invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

