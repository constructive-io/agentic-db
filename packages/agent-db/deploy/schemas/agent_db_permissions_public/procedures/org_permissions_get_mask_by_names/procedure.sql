-- Deploy: schemas/agent_db_permissions_public/procedures/org_permissions_get_mask_by_names/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema



CREATE FUNCTION "agent_db_permissions_public".org_permissions_get_mask_by_names (names citext[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "agent_db_permissions_public".org_permissions
    WHERE name = ANY (names);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agent_db_permissions_public".org_permissions_get_mask_by_names TO authenticated;

