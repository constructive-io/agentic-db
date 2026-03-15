-- Deploy: schemas/agent_db_invites_public/tables/org_invites/policies/auth_del_org_members_delete/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table


CREATE POLICY auth_del_org_members_delete ON "agent_db_invites_public".org_invites
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_admin IS TRUE)
);

