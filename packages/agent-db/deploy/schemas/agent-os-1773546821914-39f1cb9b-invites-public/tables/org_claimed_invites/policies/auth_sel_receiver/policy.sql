-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/policies/auth_sel_receiver/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_claimed_invites/table


CREATE POLICY auth_sel_receiver ON "agent-os-1773546821914-39f1cb9b-invites-public".org_claimed_invites
FOR SELECT
TO authenticated
USING (
  receiver_id = jwt_public.current_user_id()
);

