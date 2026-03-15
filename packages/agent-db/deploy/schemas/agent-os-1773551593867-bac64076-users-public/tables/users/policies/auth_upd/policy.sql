-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table


CREATE POLICY auth_upd ON "agent-os-1773551593867-bac64076-users-public".users
FOR UPDATE
TO authenticated
USING (
  id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000001000000000') = '000000000000001000000000')
);

