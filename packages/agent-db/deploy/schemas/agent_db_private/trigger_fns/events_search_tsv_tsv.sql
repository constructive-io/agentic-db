-- Deploy: schemas/agent_db_private/trigger_fns/events_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/tables/companies/triggers/companies_search_tsv_tsv_update_tg


CREATE FUNCTION agent_db_private.events_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.location, '')), 'C') || (setweight(to_tsvector('english', COALESCE(NEW.notes, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.name, '')), 'A')));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

