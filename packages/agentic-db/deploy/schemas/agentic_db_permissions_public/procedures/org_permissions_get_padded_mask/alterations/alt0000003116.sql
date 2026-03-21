-- Deploy: schemas/agentic_db_permissions_public/procedures/org_permissions_get_padded_mask/alterations/alt0000003116
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema



CREATE OR REPLACE FUNCTION agentic_db_permissions_public.org_permissions_get_padded_mask (mask bit varying)
  RETURNS bit varying
AS $CODEZ$
    SELECT utils.bitmask_pad(mask, 24, '0');
$CODEZ$
LANGUAGE sql IMMUTABLE;
GRANT EXECUTE ON FUNCTION agentic_db_permissions_public.org_permissions_get_padded_mask TO authenticated;

