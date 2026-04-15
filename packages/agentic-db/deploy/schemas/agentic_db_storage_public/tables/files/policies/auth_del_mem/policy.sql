-- Deploy: schemas/agentic_db_storage_public/tables/files/policies/auth_del_mem/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


CREATE POLICY auth_del_mem ON agentic_db_storage_public.files
FOR DELETE
TO authenticated
USING (
  owner_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

