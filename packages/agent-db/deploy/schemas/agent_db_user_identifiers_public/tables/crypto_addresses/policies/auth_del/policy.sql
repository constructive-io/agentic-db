-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/policies/auth_del/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


CREATE POLICY auth_del ON agent_db_user_identifiers_public.crypto_addresses
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

