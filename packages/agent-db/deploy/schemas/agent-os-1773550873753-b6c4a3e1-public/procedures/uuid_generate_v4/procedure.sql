-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-public/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('3dff24fb-4e95-44c5-bc61-522db3e8411e');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-public".uuid_generate_v4 TO public;

