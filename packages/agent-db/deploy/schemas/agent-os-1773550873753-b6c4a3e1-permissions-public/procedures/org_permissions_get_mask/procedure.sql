-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/procedures/org_permissions_get_mask/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions_get_mask (ids uuid[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions
    WHERE id = ANY (ids);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions_get_mask TO authenticated;

