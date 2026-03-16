-- Deploy: schemas/agent_db_public/procedures/uuid_generate_v4/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_public/schema



CREATE FUNCTION "agent_db_public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('569edc6d-3f84-4a51-a145-e5d82d9c06d3');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent_db_public".uuid_generate_v4 TO public;

