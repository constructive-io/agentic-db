-- Deploy: schemas/agent_db_app_public/tables/deal_documents/policies/auth_ins_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deal_documents/table
-- requires: schemas/agent_db_app_public/tables/company_documents/policies/auth_del_entity_membership/policy


CREATE POLICY auth_ins_entity_membership ON agent_db_app_public.deal_documents
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

