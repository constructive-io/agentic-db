-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/policies/auth_sel_sender/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table


CREATE POLICY auth_sel_sender ON "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

