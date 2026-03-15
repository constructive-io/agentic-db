-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/policies/auth_ins_create_invite_check/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/table


CREATE POLICY auth_ins_create_invite_check ON "agent-os-1773546821914-39f1cb9b-invites-public".org_invites
AS RESTRICTIVE
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000000000010') = '000000000000000000000010')
);

