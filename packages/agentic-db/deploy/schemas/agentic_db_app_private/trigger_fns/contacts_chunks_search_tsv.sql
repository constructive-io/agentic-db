-- Deploy: schemas/agentic_db_app_private/trigger_fns/contacts_chunks_search_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.contacts_chunks_search_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search = setweight(to_tsvector('english', COALESCE(NEW.content, '')), 'A');
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

