-- Deploy: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/table


CREATE POLICY auth_upd ON "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets
FOR UPDATE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

