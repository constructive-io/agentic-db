-- Deploy: schemas/agentic_db_private/trigger_fns/upload_requests_immutable_fields
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema


CREATE FUNCTION agentic_db_private.upload_requests_immutable_fields() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  IF ((((((((NEW.file_id IS DISTINCT FROM OLD.file_id OR NEW.actor_id IS DISTINCT FROM OLD.actor_id) OR NEW.bucket_id IS DISTINCT FROM OLD.bucket_id) OR NEW.owner_id IS DISTINCT FROM OLD.owner_id) OR NEW.key IS DISTINCT FROM OLD.key) OR NEW.content_type IS DISTINCT FROM OLD.content_type) OR NEW.content_hash IS DISTINCT FROM OLD.content_hash) OR NEW.expires_at IS DISTINCT FROM OLD.expires_at) OR NEW.ip_address IS DISTINCT FROM OLD.ip_address) OR NEW.user_agent IS DISTINCT FROM OLD.user_agent THEN
    RAISE EXCEPTION 'Cannot modify immutable fields on upload_requests';
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

