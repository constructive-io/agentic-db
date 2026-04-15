-- Deploy: schemas/agentic_db_permissions_public/procedures/app_permissions_get_by_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table


CREATE FUNCTION agentic_db_permissions_public.app_permissions_get_by_mask(
  mask bit varying
) RETURNS SETOF agentic_db_permissions_public.app_permissions AS $_PGFN_$
SELECT *
FROM agentic_db_permissions_public.app_permissions
WHERE
  (bitstr & agentic_db_permissions_public.app_permissions_get_padded_mask(mask)) = bitstr
$_PGFN_$ LANGUAGE sql STABLE SECURITY INVOKER;

