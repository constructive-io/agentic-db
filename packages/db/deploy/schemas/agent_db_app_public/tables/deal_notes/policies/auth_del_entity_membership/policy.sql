-- Deploy: schemas/agent_db_app_public/tables/deal_notes/policies/auth_del_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_notes/table
-- requires: schemas/agent_db_app_public/tables/company_notes/policies/auth_del_entity_membership/policy


CREATE POLICY auth_del_entity_membership ON "agent_db_app_public".deal_notes
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

