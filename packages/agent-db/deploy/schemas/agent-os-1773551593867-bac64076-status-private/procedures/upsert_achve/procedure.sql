-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/procedures/upsert_achve/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/table



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".upsert_achve ( vactor_id uuid, vname text, vcount int ) RETURNS void AS $EOFCODE$
BEGIN
    INSERT INTO "agent-os-1773551593867-bac64076-status-public".app_achievements (actor_id, name, count)
    VALUES 
        (vactor_id, vname, GREATEST(vcount, 0))
    ON CONFLICT ( actor_id, name )
    DO UPDATE SET 
        count = app_achievements.count + EXCLUDED.count
    ;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".upsert_achve TO authenticated;

