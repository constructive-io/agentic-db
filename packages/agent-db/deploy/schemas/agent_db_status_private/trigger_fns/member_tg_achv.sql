-- Deploy: schemas/agent_db_status_private/trigger_fns/member_tg_achv
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_private/procedures/member_completed_step/procedure



CREATE FUNCTION agent_db_status_private.member_tg_achv ()
  RETURNS TRIGGER
  AS $$
DECLARE
  is_null boolean;
  task_name text;
  entity_id uuid;
BEGIN
    IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN
        task_name = TG_ARGV[2]::text;
        EXECUTE format('SELECT ($1).%s IS NULL', TG_ARGV[0])
        USING NEW INTO is_null;
        EXECUTE format('SELECT ($1).%s', TG_ARGV[1])
        USING NEW INTO entity_id;
        IF (is_null IS FALSE) THEN
            PERFORM agent_db_status_private.member_completed_step(task_name, entity_id);
        END IF;
        RETURN NEW;
    END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE;
GRANT EXECUTE ON FUNCTION agent_db_status_private.member_tg_achv TO authenticated;

