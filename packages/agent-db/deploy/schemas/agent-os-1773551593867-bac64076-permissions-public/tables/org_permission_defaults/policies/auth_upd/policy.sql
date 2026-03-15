-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/table


CREATE POLICY auth_upd ON "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000010000000') = '000000000000000010000000')
);

