-- Deploy: schemas/agentic_db_limits_private/trigger_fns/app_limits_upd_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_private/schema
-- requires: schemas/agentic_db_limits_private/procedures/app_limits_dec/procedure
-- requires: schemas/agentic_db_limits_private/procedures/app_limits_inc/procedure


CREATE FUNCTION agentic_db_limits_private.app_limits_upd_tg() RETURNS TRIGGER AS $_PGFN_$
DECLARE
  limit_ok boolean;
  old_actor_id uuid;
  new_actor_id uuid;
  limitname citext;
BEGIN
  IF tg_nargs < 1 THEN
    RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', tg_name;
  ELSIF tg_nargs = 1 THEN
    RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', tg_name;
  ELSIF tg_nargs = 2 THEN
    limitname := (tg_argv)[0];
    EXECUTE pg_catalog.format('SELECT ($1).%s', (tg_argv)[1]) INTO new_actor_id USING NEW;
    EXECUTE pg_catalog.format('SELECT ($1).%s', (tg_argv)[1]) INTO old_actor_id USING OLD;
    PERFORM agentic_db_limits_private.app_limits_dec(limitname, old_actor_id);
    limit_ok := agentic_db_limits_private.app_limits_inc(limitname, new_actor_id);
  END IF;
  IF limit_ok = false THEN
    RAISE EXCEPTION 'LIMIT_REACHED';
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

