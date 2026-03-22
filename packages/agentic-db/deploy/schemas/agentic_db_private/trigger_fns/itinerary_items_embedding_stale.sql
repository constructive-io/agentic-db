-- Deploy: schemas/agentic_db_private/trigger_fns/itinerary_items_embedding_stale
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/itinerary_items/columns/embedding_text/column


CREATE FUNCTION agentic_db_private.itinerary_items_embedding_stale() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  SELECT true INTO NEW.embedding_stale;
  SELECT NULL INTO NEW.embedding;
  RETURN NEW;
END
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

