-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/policies/auth_ins_create_invite_check/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/invites/table


CREATE POLICY auth_ins_create_invite_check ON "agent-os-1773547105079-c748b4c3-invites-public".invites
AS RESTRICTIVE
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000010') = '000000000000000000000010')
);

