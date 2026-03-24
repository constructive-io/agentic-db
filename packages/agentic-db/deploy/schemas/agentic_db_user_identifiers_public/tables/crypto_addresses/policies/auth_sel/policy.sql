-- Deploy: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/policies/auth_sel/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/crypto_addresses/table


CREATE POLICY auth_sel ON agentic_db_user_identifiers_public.crypto_addresses
FOR SELECT
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

