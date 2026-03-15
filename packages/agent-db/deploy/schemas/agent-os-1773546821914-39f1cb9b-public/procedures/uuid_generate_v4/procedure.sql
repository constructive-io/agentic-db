-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-public/schema



CREATE FUNCTION "agent-os-1773546821914-39f1cb9b-public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('cfa774bc-ea9a-4f18-9db9-6f1471eb0ea6');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent-os-1773546821914-39f1cb9b-public".uuid_generate_v4 TO public;

