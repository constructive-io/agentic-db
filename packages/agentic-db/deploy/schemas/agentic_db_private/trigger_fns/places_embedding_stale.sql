-- Deploy: schemas/agentic_db_private/trigger_fns/places_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE FUNCTION "agentic_db_private".places_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  new.embedding_stale := true;
  new.embedding := NULL;
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

