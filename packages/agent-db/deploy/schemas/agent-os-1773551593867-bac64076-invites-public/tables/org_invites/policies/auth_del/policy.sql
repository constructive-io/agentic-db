-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


CREATE POLICY auth_del ON "agent-os-1773551593867-bac64076-invites-public".org_invites
FOR DELETE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

