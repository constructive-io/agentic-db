-- Deploy: schemas/agent_db_app_public/tables/contact_links/policies/auth_upd_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_links/table
-- requires: schemas/agent_db_app_public/tables/attachments/columns/attachable_id/column


CREATE POLICY auth_upd_entity_membership ON agent_db_app_public.contact_links
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

