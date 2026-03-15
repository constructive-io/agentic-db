-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_ins ON agent_db_encrypted.encrypted_secrets
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

