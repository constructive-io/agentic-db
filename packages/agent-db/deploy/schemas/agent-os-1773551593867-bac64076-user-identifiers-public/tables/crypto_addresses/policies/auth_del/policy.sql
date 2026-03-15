-- Deploy: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/crypto_addresses/table


CREATE POLICY auth_del ON "agent-os-1773551593867-bac64076-user-identifiers-public".crypto_addresses
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

