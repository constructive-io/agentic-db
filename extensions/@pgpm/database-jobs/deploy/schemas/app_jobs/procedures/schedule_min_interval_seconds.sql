-- Deploy schemas/app_jobs/procedures/schedule_min_interval_seconds to pg

-- requires: schemas/app_jobs/schema

BEGIN;

-- Conservative lower-bound estimate (in seconds) of how often a
-- scheduled_jobs.schedule_info spec can fire. Used by generated schedule
-- limit triggers to enforce a minimum schedule interval cap.
--
-- Supports the node-schedule shapes stored in schedule_info:
--   { "rule": "*/5 * * * *" }        5-field cron (minute resolution)
--   { "rule": "0 */5 * * * *" }      6-field cron (second resolution)
--   { "minute": [...], "hour": [...] } recurrence-object form
--
-- Returns NULL when no lower bound can be derived (callers should treat
-- NULL as "unknown" and skip enforcement).
CREATE FUNCTION app_jobs.schedule_min_interval_seconds (schedule_info json)
  RETURNS integer
  AS $$
DECLARE
  v_rule text;
  v_fields text[];
  v_seconds_field text;
  v_minutes_field text;
  v_step int;
BEGIN
  IF schedule_info IS NULL THEN
    RETURN NULL;
  END IF;

  v_rule := schedule_info ->> 'rule';

  IF v_rule IS NULL THEN
    -- Recurrence-object form: second resolution when a "second" key is
    -- present, otherwise minute resolution.
    IF schedule_info -> 'second' IS NOT NULL THEN
      RETURN 1;
    ELSIF schedule_info -> 'minute' IS NOT NULL
      OR schedule_info -> 'hour' IS NOT NULL
      OR schedule_info -> 'dayOfWeek' IS NOT NULL
      OR schedule_info -> 'date' IS NOT NULL
      OR schedule_info -> 'month' IS NOT NULL THEN
      RETURN 60;
    END IF;
    RETURN NULL;
  END IF;

  v_fields := regexp_split_to_array(trim(v_rule), '\s+');

  IF array_length(v_fields, 1) = 6 THEN
    v_seconds_field := v_fields[1];
    v_minutes_field := v_fields[2];
  ELSIF array_length(v_fields, 1) = 5 THEN
    v_seconds_field := '0';
    v_minutes_field := v_fields[1];
  ELSE
    RETURN NULL;
  END IF;

  -- Second-resolution rules
  IF v_seconds_field = '*' THEN
    RETURN 1;
  END IF;
  IF v_seconds_field ~ '^\*/\d+$' THEN
    v_step := substring(v_seconds_field FROM 3)::int;
    RETURN GREATEST(v_step, 1);
  END IF;
  IF position(',' IN v_seconds_field) > 0 OR position('-' IN v_seconds_field) > 0 THEN
    -- Multiple seconds within each matching minute: could fire every second
    RETURN 1;
  END IF;

  -- Fixed second: at most once per matching minute
  IF v_minutes_field = '*' THEN
    RETURN 60;
  END IF;
  IF v_minutes_field ~ '^\*/\d+$' THEN
    v_step := substring(v_minutes_field FROM 3)::int;
    RETURN GREATEST(v_step, 1) * 60;
  END IF;
  IF position(',' IN v_minutes_field) > 0 OR position('-' IN v_minutes_field) > 0 THEN
    -- Multiple minutes within each matching hour: adjacent values can be
    -- one minute apart
    RETURN 60;
  END IF;

  -- Fixed minute: at most once per hour
  RETURN 3600;
END;
$$
LANGUAGE 'plpgsql'
IMMUTABLE;

COMMIT;
