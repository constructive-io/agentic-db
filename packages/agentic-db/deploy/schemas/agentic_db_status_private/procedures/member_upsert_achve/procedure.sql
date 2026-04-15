-- Deploy: schemas/agentic_db_status_private/procedures/member_upsert_achve/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table


CREATE FUNCTION agentic_db_status_private.member_upsert_achve(
  IN user_id uuid,
  IN org_id uuid,
  IN achievement_name text,
  IN achievement_count int
) RETURNS void AS $_PGFN_$
BEGIN
  INSERT INTO agentic_db_status_public.org_achievements (
    actor_id,
    entity_id,
    name,
    count
  )
  VALUES
    (member_upsert_achve.user_id, member_upsert_achve.org_id, member_upsert_achve.achievement_name, greatest(member_upsert_achve.achievement_count, 0))
  ON CONFLICT (actor_id, entity_id, name) DO UPDATE SET
  count = org_achievements.count + EXCLUDED.count;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

