-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deal_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/policies/auth_del_entity_membership/policy


CREATE POLICY auth_del_entity_membership ON "agent-os-1773551593867-bac64076-app-public".deal_contacts
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773551593867-bac64076-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

