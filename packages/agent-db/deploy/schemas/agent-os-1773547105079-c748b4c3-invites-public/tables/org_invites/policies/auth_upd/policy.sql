-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/table


CREATE POLICY auth_upd ON "agent-os-1773547105079-c748b4c3-invites-public".org_invites
FOR UPDATE
TO authenticated
USING (
  sender_id = jwt_public.current_user_id()
);

