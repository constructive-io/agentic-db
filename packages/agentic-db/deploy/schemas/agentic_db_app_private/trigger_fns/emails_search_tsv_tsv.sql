-- Deploy: schemas/agentic_db_app_private/trigger_fns/emails_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.emails_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.body_text, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.subject, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

