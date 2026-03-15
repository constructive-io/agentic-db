-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


CREATE POLICY auth_ins ON "agent-os-1773551593867-bac64076-invites-public".org_invites
FOR INSERT
TO authenticated
WITH CHECK (
  sender_id = jwt_public.current_user_id()
);

