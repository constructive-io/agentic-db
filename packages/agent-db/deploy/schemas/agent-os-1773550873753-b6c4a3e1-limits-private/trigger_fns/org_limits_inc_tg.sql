-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-private/trigger_fns/org_limits_inc_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-private/schema



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-limits-private".org_limits_inc_tg ()
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
        limit_ok = "agent-os-1773550873753-b6c4a3e1-limits-private".org_limits_inc(
            limitname
        );
    ELSIF (TG_NARGS = 2) THEN 
        limitname = TG_ARGV[0];        
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING NEW INTO actor_id;
        limit_ok = "agent-os-1773550873753-b6c4a3e1-limits-private".org_limits_inc(
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

