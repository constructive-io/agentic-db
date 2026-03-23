-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/auth_ins/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_ins ON agentic_db_encrypted.encrypted_secrets
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

