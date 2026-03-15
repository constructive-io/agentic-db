-- Deploy: schemas/agent_db_public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_public/schema



CREATE FUNCTION agent_db_public.uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('3e7e843f-36fb-4af5-b1aa-226087d0003c');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION agent_db_public.uuid_generate_v4 TO public;

