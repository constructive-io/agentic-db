-- Deploy: schemas/agentic_db_private/trigger_fns/upload_requests_inherit_from_parent
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema


CREATE FUNCTION agentic_db_private.upload_requests_inherit_from_parent() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  SELECT p.owner_id
  FROM ONLY agentic_db_storage_public.buckets AS p
  WHERE
    p.id = NEW.bucket_id INTO NEW.owner_id;
  IF NOT (FOUND) THEN
    RAISE EXCEPTION 'Parent not found: %', NEW.bucket_id;
  END IF;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

