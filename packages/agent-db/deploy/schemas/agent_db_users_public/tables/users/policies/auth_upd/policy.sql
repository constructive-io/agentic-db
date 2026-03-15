-- Deploy: schemas/agent_db_users_public/tables/users/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table


CREATE POLICY auth_upd ON agent_db_users_public.users
FOR UPDATE
TO authenticated
USING (
  id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000001000000000') = '000000000000001000000000')
);

