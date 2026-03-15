-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/table


CREATE POLICY auth_del ON "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

