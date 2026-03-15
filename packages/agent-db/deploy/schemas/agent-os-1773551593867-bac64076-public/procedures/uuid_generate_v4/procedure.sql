-- Deploy: schemas/agent-os-1773551593867-bac64076-public/procedures/uuid_generate_v4/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-public/schema



CREATE FUNCTION "agent-os-1773551593867-bac64076-public".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('8ddabbee-88f2-488e-b90d-037f05a49636');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-public".uuid_generate_v4 TO public;

