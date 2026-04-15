-- Deploy: schemas/agentic_db_status_private/procedures/upsert_achve/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table


CREATE FUNCTION agentic_db_status_private.upsert_achve(
  IN user_id uuid,
  IN achievement_name text,
  IN achievement_count int
) RETURNS void AS $_PGFN_$
BEGIN
  INSERT INTO agentic_db_status_public.app_achievements (
    actor_id,
    name,
    count
  )
  VALUES
    (upsert_achve.user_id, upsert_achve.achievement_name, greatest(upsert_achve.achievement_count, 0))
  ON CONFLICT (actor_id, name) DO UPDATE SET
  count = app_achievements.count + EXCLUDED.count;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

