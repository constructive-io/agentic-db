-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/procedures/org_memberships_ids/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_ids ()
  RETURNS uuid[]
AS $CODEZ$
    SELECT array_agg(m.entity_id) FROM "agent-os-1773550873753-b6c4a3e1-memberships-public".org_memberships m
        WHERE m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_ids TO authenticated;

