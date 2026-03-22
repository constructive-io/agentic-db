-- Deploy: schemas/agentic_db_private/trigger_fns/events_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


CREATE FUNCTION "agentic_db_private".events_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.location, '')), 'C') || (setweight(to_tsvector('english', COALESCE(NEW.notes_text, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.name, '')), 'A')));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

