-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_ins_insert_chk/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table


CREATE POLICY auth_ins_insert_chk ON "agent-os-1773551593867-bac64076-users-public".users
FOR INSERT
TO authenticated
WITH CHECK (
  EXISTS (SELECT 1
  FROM "agent-os-1773551593867-bac64076-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      (app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000010000') = '000000000000000000010000')) AND type = 2
);

