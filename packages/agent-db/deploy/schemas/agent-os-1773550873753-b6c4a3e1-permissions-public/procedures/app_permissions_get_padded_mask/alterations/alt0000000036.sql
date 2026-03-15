-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/procedures/app_permissions_get_padded_mask/alterations/alt0000000036
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema



CREATE OR REPLACE FUNCTION "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions_get_padded_mask (mask bit varying)
  RETURNS bit varying
AS $CODEZ$
    SELECT utils.bitmask_pad(mask, 24, '0');
$CODEZ$
LANGUAGE sql IMMUTABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions_get_padded_mask TO authenticated;

