-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/procedures/app_permissions_get_mask/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions_get_mask (ids uuid[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions
    WHERE id = ANY (ids);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions_get_mask TO authenticated;

