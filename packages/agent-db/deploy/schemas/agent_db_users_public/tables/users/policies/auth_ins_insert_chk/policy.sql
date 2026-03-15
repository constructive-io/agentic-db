-- Deploy: schemas/agent_db_users_public/tables/users/policies/auth_ins_insert_chk/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


CREATE POLICY auth_ins_insert_chk ON agent_db_users_public.users
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      (app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000010000') = '000000000000000000010000')) AND type = 2
);

