-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


CREATE POLICY auth_ins ON "agent-os-1773550873753-b6c4a3e1-invites-public".invites
FOR INSERT
TO authenticated
WITH CHECK (
  sender_id = jwt_public.current_user_id()
);

