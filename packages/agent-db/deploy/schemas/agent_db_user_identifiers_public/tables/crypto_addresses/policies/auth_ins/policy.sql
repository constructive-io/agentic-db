-- Deploy: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/crypto_addresses/table


CREATE POLICY auth_ins ON "agent_db_user_identifiers_public".crypto_addresses
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

