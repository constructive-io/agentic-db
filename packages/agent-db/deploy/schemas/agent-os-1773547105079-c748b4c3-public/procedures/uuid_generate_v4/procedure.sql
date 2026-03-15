-- Deploy: schemas/agent-os-1773547105079-c748b4c3-public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-public/schema



CREATE FUNCTION "agent-os-1773547105079-c748b4c3-public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('ef7c8188-80a2-434c-a698-c016a267d758');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent-os-1773547105079-c748b4c3-public".uuid_generate_v4 TO public;

