-- Deploy: schemas/agentic_db_public/procedures/uuid_generate_v4/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_public/schema



CREATE FUNCTION "agentic_db_public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('14d9536f-0092-4ddb-87f8-eddad14902bd');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agentic_db_public".uuid_generate_v4 TO public;

