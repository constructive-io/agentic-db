-- Deploy: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


CREATE POLICY auth_del_admin_deletes ON "agent_db_users_public".users
FOR DELETE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent_db_memberships_private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

