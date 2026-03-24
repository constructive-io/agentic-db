-- Deploy: schemas/agentic_db_private/trigger_fns/emails_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


CREATE FUNCTION "agentic_db_private".emails_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.body_text, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.subject, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

