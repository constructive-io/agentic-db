-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


CREATE POLICY auth_del ON "agent-os-1773550873753-b6c4a3e1-invites-public".invites
FOR DELETE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

