-- Deploy: schemas/agent_db_memberships_public/tables/app_admin_grants/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_admin_grants/table


CREATE POLICY auth_ins ON agent_db_memberships_public.app_admin_grants
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND app_sprt.is_admin IS TRUE)
);

