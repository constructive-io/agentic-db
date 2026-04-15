-- Deploy: schemas/agentic_db_private/trigger_fns/buckets_immutable_fields
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema


CREATE FUNCTION agentic_db_private.buckets_immutable_fields() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF (((NEW.key IS DISTINCT FROM OLD.key OR NEW.owner_id IS DISTINCT FROM OLD.owner_id) OR NEW.type IS DISTINCT FROM OLD.type) OR NEW.is_public IS DISTINCT FROM OLD.is_public) OR NEW.actor_id IS DISTINCT FROM OLD.actor_id THEN
    RAISE EXCEPTION 'Cannot modify immutable fields on buckets';
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

