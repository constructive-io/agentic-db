-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/crypto_addresses/table


CREATE POLICY auth_upd ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".crypto_addresses
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

