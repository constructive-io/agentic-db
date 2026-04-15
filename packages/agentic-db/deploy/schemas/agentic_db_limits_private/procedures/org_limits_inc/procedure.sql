-- Deploy: schemas/agentic_db_limits_private/procedures/org_limits_inc/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_private/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_limits_public/tables/org_limit_defaults/table


CREATE FUNCTION agentic_db_limits_private.org_limits_inc(
  IN limitname citext,
  IN entity_id uuid,
  IN actor_id uuid DEFAULT jwt_public.current_user_id(),
  IN amount int DEFAULT 1
) RETURNS boolean AS $_PGFN_$
DECLARE
  limit_exists boolean;
  max_default int := 0;
  rec agentic_db_limits_public.org_limits;
BEGIN
  SELECT
    EXISTS (SELECT 1
    FROM agentic_db_limits_public.org_limits AS l
    WHERE
      (l.name = org_limits_inc.limitname AND l.actor_id = org_limits_inc.actor_id) AND l.entity_id = org_limits_inc.entity_id) INTO limit_exists;
  IF limit_exists = false THEN
    SELECT max
    FROM agentic_db_limits_public.org_limit_defaults
    WHERE
      name = org_limits_inc.limitname INTO max_default;
    IF NOT (FOUND) THEN
      max_default := 0;
    END IF;
    INSERT INTO agentic_db_limits_public.org_limits (
      name,
      num,
      max,
      actor_id,
      entity_id
    )
    VALUES
      (org_limits_inc.limitname, 0, max_default, org_limits_inc.actor_id, org_limits_inc.entity_id);
  END IF;
  SELECT *
  FROM agentic_db_limits_public.org_limits AS l
  WHERE
    (l.name = org_limits_inc.limitname AND l.actor_id = org_limits_inc.actor_id) AND l.entity_id = org_limits_inc.entity_id INTO rec;
  IF rec.max < 0 OR rec.max >= (rec.num + org_limits_inc.amount) THEN
    UPDATE agentic_db_limits_public.org_limits AS l SET
    num = num + org_limits_inc.amount
    WHERE
      (l.name = org_limits_inc.limitname AND l.actor_id = org_limits_inc.actor_id) AND l.entity_id = org_limits_inc.entity_id;
    RETURN true;
  ELSE
    RETURN false;
  END IF;
  RETURN false;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

