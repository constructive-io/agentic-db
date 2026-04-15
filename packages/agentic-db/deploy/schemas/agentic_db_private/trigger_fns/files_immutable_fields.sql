-- Deploy: schemas/agentic_db_private/trigger_fns/files_immutable_fields
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema


CREATE FUNCTION agentic_db_private.files_immutable_fields() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF ((((((NEW.key IS DISTINCT FROM OLD.key OR NEW.bucket_id IS DISTINCT FROM OLD.bucket_id) OR NEW.owner_id IS DISTINCT FROM OLD.owner_id) OR NEW.actor_id IS DISTINCT FROM OLD.actor_id) OR NEW.is_public IS DISTINCT FROM OLD.is_public) OR NEW.mime_type IS DISTINCT FROM OLD.mime_type) OR NEW.size IS DISTINCT FROM OLD.size) OR NEW.filename IS DISTINCT FROM OLD.filename THEN
    RAISE EXCEPTION 'Cannot modify immutable fields on files';
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

