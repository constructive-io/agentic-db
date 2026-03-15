-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_upd ON agent_db_encrypted.encrypted_secrets
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

