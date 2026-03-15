-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/procedures/org_permissions_get_padded_mask/alterations/alt0000000284
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema



CREATE OR REPLACE FUNCTION "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions_get_padded_mask (mask bit varying)
  RETURNS bit varying
AS $CODEZ$
    SELECT utils.bitmask_pad(mask, 24, '0');
$CODEZ$
LANGUAGE sql IMMUTABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions_get_padded_mask TO authenticated;

