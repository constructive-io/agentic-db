-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/policies/auth_sel_receiver/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/table


CREATE POLICY auth_sel_receiver ON "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites
FOR SELECT
TO authenticated
USING (
  receiver_id = jwt_public.current_user_id()
);

