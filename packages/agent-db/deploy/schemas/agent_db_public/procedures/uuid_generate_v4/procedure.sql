-- Deploy: schemas/agent_db_public/procedures/uuid_generate_v4/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_public/schema



CREATE FUNCTION agent_db_public.uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('9085366f-6c6f-49b7-a4c9-c82d816fded5');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION agent_db_public.uuid_generate_v4 TO public;

