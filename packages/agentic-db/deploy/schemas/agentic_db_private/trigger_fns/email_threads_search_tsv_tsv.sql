-- Deploy: schemas/agentic_db_private/trigger_fns/email_threads_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE FUNCTION agentic_db_private.email_threads_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.summary, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.subject, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

