-- Deploy: schemas/agent_db_limits_private/trigger_fns/org_limits_dec_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_private/schema



CREATE FUNCTION agent_db_limits_private.org_limits_dec_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    actor_id uuid;
    limitname citext;
BEGIN
    IF (TG_NARGS < 1) THEN 
        RAISE EXCEPTION 'LIMIT_TRIGGER_ARGS (%)', TG_NAME;
    ELSIF (TG_NARGS = 1) THEN 
        limitname = TG_ARGV[0];        
        PERFORM agent_db_limits_private.org_limits_dec(
            limitname
        );
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING OLD INTO actor_id;
        PERFORM agent_db_limits_private.org_limits_dec(
            limitname, actor_id
        );
    END IF;
    RETURN OLD;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;

