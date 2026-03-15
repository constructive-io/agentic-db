-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/procedures/app_permissions_get_by_mask/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions_get_by_mask (mask bit varying)
  RETURNS SETOF "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions
AS $CODEZ$
    SELECT * FROM 
      "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions
    WHERE bitstr & "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions_get_padded_mask(mask) = bitstr;
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions_get_by_mask TO authenticated;

