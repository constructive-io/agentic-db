-- Deploy: schemas/agentic_db_limits_private/procedures/app_limits_inc/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_private/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/table


CREATE FUNCTION agentic_db_limits_private.app_limits_inc(
  IN limitname citext,
  IN actor_id uuid DEFAULT jwt_public.current_user_id(),
  IN amount int DEFAULT 1
) RETURNS boolean AS $_PGFN_$
DECLARE
  limit_exists boolean;
  max_default int := 0;
  rec agentic_db_limits_public.app_limits;
BEGIN
  SELECT
    EXISTS (SELECT 1
    FROM agentic_db_limits_public.app_limits AS l
    WHERE
      l.name = app_limits_inc.limitname AND l.actor_id = app_limits_inc.actor_id) INTO limit_exists;
  IF limit_exists = false THEN
    SELECT max
    FROM agentic_db_limits_public.app_limit_defaults
    WHERE
      name = app_limits_inc.limitname INTO max_default;
    IF NOT (FOUND) THEN
      max_default := 0;
    END IF;
    INSERT INTO agentic_db_limits_public.app_limits (
      name,
      num,
      max,
      actor_id
    )
    VALUES
      (app_limits_inc.limitname, 0, max_default, app_limits_inc.actor_id);
  END IF;
  SELECT *
  FROM agentic_db_limits_public.app_limits AS l
  WHERE
    l.name = app_limits_inc.limitname AND l.actor_id = app_limits_inc.actor_id INTO rec;
  IF rec.max < 0 OR rec.max >= (rec.num + app_limits_inc.amount) THEN
    UPDATE agentic_db_limits_public.app_limits AS l SET
    num = num + app_limits_inc.amount
    WHERE
      l.name = app_limits_inc.limitname AND l.actor_id = app_limits_inc.actor_id;
    RETURN true;
  ELSE
    RETURN false;
  END IF;
  RETURN false;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

