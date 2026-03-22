-- Deploy: schemas/agentic_db_permissions_public/procedures/app_permissions_get_mask_by_names/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema



CREATE FUNCTION "agentic_db_permissions_public".app_permissions_get_mask_by_names (names citext[])
  RETURNS bit varying
AS $CODEZ$
    SELECT bit_or(bitstr) FROM 
      "agentic_db_permissions_public".app_permissions
    WHERE name = ANY (names);
$CODEZ$
LANGUAGE sql STABLE;
GRANT EXECUTE ON FUNCTION "agentic_db_permissions_public".app_permissions_get_mask_by_names TO authenticated;

