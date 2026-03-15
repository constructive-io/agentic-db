-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/policies/auth_ins/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/crypto_addresses/table


CREATE POLICY auth_ins ON "agent-os-1773546821914-39f1cb9b-user-identifiers-public".crypto_addresses
FOR INSERT
TO authenticated
WITH CHECK (
  owner_id = jwt_public.current_user_id()
);

