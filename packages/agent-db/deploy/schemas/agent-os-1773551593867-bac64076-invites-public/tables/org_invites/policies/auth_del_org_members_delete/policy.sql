-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/policies/auth_del_org_members_delete/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/table


CREATE POLICY auth_del_org_members_delete ON "agent-os-1773551593867-bac64076-invites-public".org_invites
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_admin IS TRUE)
);

