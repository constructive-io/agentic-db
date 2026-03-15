-- Deploy: schemas/agent-os-1773551593867-bac64076-status-private/trigger_fns/tg_achv_tgl_bool
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-private/procedures/completed_step/procedure



CREATE FUNCTION "agent-os-1773551593867-bac64076-status-private".tg_achv_tgl_bool ()
  RETURNS TRIGGER
  AS $$
DECLARE
  is_true boolean;
  task_name text;
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        task_name = TG_ARGV[1]::text;
        EXECUTE format('SELECT ($1).%s IS TRUE', TG_ARGV[0])
        USING NEW INTO is_true;
        IF (is_true IS TRUE) THEN
            PERFORM "agent-os-1773551593867-bac64076-status-private".completed_step(task_name);
        ELSE
            PERFORM "agent-os-1773551593867-bac64076-status-private".incompleted_step(task_name);
        END IF;
        RETURN NEW;
    END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "agent-os-1773551593867-bac64076-status-private".tg_achv_tgl_bool TO authenticated;

