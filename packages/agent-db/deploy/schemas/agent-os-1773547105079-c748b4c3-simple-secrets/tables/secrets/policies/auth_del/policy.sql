-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table


CREATE POLICY auth_del ON "agent-os-1773547105079-c748b4c3-simple-secrets".secrets
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

