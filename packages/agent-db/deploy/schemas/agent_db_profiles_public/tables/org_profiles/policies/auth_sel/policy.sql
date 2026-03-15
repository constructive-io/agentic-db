-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


CREATE POLICY auth_sel ON agent_db_profiles_public.org_profiles
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id()) OR entity_id IS NULL
);

