-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


CREATE POLICY auth_upd ON "agentic_db_user_identifiers_public".crypto_addresses
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

