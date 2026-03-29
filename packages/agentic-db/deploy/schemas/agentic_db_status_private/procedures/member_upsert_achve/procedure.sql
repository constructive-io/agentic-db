-- Deploy: schemas/agentic_db_status_private/procedures/member_upsert_achve/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table



CREATE FUNCTION agentic_db_status_private.member_upsert_achve ( vactor_id uuid, ventity_id uuid, vname text, vcount int ) RETURNS void AS $EOFCODE$
BEGIN
    INSERT INTO agentic_db_status_public.org_achievements (actor_id, entity_id, name, count)
    VALUES 
        (vactor_id, ventity_id, vname, GREATEST(vcount, 0))
    ON CONFLICT ( actor_id, entity_id, name )
    DO UPDATE SET 
        count = org_achievements.count + EXCLUDED.count
    ;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;
GRANT EXECUTE ON FUNCTION agentic_db_status_private.member_upsert_achve TO authenticated;

