-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/invites/table


CREATE POLICY auth_upd ON "agent-os-1773551593867-bac64076-invites-public".invites
FOR UPDATE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

