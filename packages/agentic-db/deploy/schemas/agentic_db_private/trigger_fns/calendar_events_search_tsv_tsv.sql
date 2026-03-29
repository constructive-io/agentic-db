-- Deploy: schemas/agentic_db_private/trigger_fns/calendar_events_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE FUNCTION agentic_db_private.calendar_events_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.description, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.title, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

