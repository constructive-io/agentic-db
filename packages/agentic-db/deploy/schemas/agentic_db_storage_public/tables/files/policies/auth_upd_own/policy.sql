-- Deploy: schemas/agentic_db_storage_public/tables/files/policies/auth_upd_own/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


CREATE POLICY auth_upd_own ON agentic_db_storage_public.files
FOR UPDATE
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

