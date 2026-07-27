-- Deploy: schemas/agentic_db_app_private/trigger_fns/touchpoints_embedding_auto_updated_at
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.touchpoints_embedding_auto_updated_at() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_updated_at := now();
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

