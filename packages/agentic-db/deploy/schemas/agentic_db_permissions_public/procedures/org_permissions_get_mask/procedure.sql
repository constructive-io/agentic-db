-- Deploy: schemas/agentic_db_permissions_public/procedures/org_permissions_get_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema



CREATE FUNCTION agentic_db_permissions_public.org_permissions_get_mask (ids uuid[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      agentic_db_permissions_public.org_permissions
    WHERE id = ANY (ids);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION agentic_db_permissions_public.org_permissions_get_mask TO authenticated;

