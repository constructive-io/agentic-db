-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/policies/auth_del_auth_del_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE POLICY auth_del_auth_del_entity_membership ON agentic_db_app_public.interactions_chunks
FOR DELETE
TO authenticated
USING (
  interactions_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

