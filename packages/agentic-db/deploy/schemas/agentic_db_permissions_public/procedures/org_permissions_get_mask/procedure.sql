-- Deploy: schemas/agentic_db_permissions_public/procedures/org_permissions_get_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


CREATE FUNCTION agentic_db_permissions_public.org_permissions_get_mask(
  ids uuid[]
) RETURNS bit varying AS $_PGFN_$
SELECT bit_or(bitstr)
FROM agentic_db_permissions_public.org_permissions
WHERE
  id = ANY( ids )
$_PGFN_$ LANGUAGE sql STABLE SECURITY INVOKER;

