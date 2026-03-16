-- Deploy: schemas/agentic_db_private/trigger_fns/projects_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


CREATE FUNCTION "agentic_db_private".projects_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.description, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.name, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

