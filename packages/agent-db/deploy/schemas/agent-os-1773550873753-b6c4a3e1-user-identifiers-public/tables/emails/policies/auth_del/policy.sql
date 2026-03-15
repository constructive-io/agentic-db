-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/policies/auth_del/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/emails/table


CREATE POLICY auth_del ON "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".emails
FOR DELETE
TO authenticated
USING (
  owner_id = jwt_public.current_user_id()
);

