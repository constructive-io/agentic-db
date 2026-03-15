-- Deploy: schemas/agent_db_invites_public/tables/invites/policies/auth_ins_create_invite_check/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


CREATE POLICY auth_ins_create_invite_check ON agent_db_invites_public.invites
AS RESTRICTIVE
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000010') = '000000000000000000000010')
);

