-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-invites-public".invites
FOR SELECT
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

