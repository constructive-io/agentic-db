-- Deploy: schemas/agent_db_permissions_public/procedures/app_permissions_get_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema



CREATE FUNCTION agent_db_permissions_public.app_permissions_get_mask (ids uuid[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      agent_db_permissions_public.app_permissions
    WHERE id = ANY (ids);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION agent_db_permissions_public.app_permissions_get_mask TO authenticated;

