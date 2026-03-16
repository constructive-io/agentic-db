-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


CREATE POLICY auth_upd ON "agent_db_memberships_public".app_memberships
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent_db_memberships_private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

