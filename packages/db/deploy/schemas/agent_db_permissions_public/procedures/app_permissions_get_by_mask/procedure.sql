-- Deploy: schemas/agent_db_permissions_public/procedures/app_permissions_get_by_mask/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema



CREATE FUNCTION "agent_db_permissions_public".app_permissions_get_by_mask (mask bit varying)
  RETURNS SETOF "agent_db_permissions_public".app_permissions
AS $CODEZ$
    SELECT * FROM 
      "agent_db_permissions_public".app_permissions
    WHERE bitstr & "agent_db_permissions_public".app_permissions_get_padded_mask(mask) = bitstr;
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_permissions_public".app_permissions_get_by_mask TO authenticated;

