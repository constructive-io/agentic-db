-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/procedures/org_permissions_get_mask_by_names/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-permissions-public".org_permissions_get_mask_by_names (names citext[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "agent-os-1773551593867-bac64076-permissions-public".org_permissions
    WHERE name = ANY (names);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-permissions-public".org_permissions_get_mask_by_names TO authenticated;

