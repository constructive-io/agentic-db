-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table


CREATE POLICY auth_del ON "agent-os-1773550873753-b6c4a3e1-users-public".users
FOR DELETE
TO authenticated
USING (
  id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_owner IS TRUE)
);

