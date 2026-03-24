-- Deploy: schemas/agentic_db_limits_private/trigger_fns/app_limits_inc_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous



CREATE FUNCTION agentic_db_limits_private.app_limits_inc_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    limit_ok boolean;
    actor_id uuid;
    limitname citext;
BEGIN
    IF (TG_NARGS < 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 1) THEN 
        limitname = TG_ARGV[0];        
        limit_ok = agentic_db_limits_private.app_limits_inc(
            limitname
        );
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING NEW INTO actor_id;
        limit_ok = agentic_db_limits_private.app_limits_inc(
            limitname, actor_id
        );
    END IF;
    IF (limit_ok IS FALSE) THEN 
        RAISE EXCEPTION 'LIMIT_REACHED';
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

