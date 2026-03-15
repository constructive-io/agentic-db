-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_del ON agent_db_encrypted.encrypted_secrets
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

