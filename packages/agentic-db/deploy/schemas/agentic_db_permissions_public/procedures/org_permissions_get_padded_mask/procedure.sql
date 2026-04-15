-- Deploy: schemas/agentic_db_permissions_public/procedures/org_permissions_get_padded_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema


CREATE FUNCTION agentic_db_permissions_public.org_permissions_get_padded_mask(
  mask bit varying
) RETURNS bit varying AS $_PGFN_$
SELECT utils.bitmask_pad(mask, 24, '0')
$_PGFN_$ LANGUAGE sql IMMUTABLE SECURITY INVOKER;

