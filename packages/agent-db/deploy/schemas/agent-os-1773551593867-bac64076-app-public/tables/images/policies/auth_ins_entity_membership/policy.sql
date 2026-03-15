-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/policies/auth_ins_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/auth_del_admin_deletes/policy


CREATE POLICY auth_ins_entity_membership ON "agent-os-1773551593867-bac64076-app-public".images
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

