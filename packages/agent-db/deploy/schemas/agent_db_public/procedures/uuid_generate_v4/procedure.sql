-- Deploy: schemas/agent_db_public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_public/schema



CREATE FUNCTION "agent_db_public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('83edebcb-feeb-493f-9742-2d9b7b29abf5');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent_db_public".uuid_generate_v4 TO public;

