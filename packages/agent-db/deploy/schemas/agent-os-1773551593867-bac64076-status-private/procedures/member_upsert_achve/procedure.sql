-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/procedures/member_upsert_achve/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".member_upsert_achve ( vactor_id uuid, ventity_id uuid, vname text, vcount int ) RETURNS void AS $EOFCODE$
BEGIN
    INSERT INTO "agent-os-1773551593867-bac64076-status-public".org_achievements (actor_id, entity_id, name, count)
    VALUES 
        (vactor_id, ventity_id, vname, GREATEST(vcount, 0))
    ON CONFLICT ( actor_id, entity_id, name )
    DO UPDATE SET 
        count = org_achievements.count + EXCLUDED.count
    ;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".member_upsert_achve TO authenticated;

