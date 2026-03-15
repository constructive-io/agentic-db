-- Deploy: schemas/agent_db_private/trigger_fns/documents_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


CREATE FUNCTION agent_db_private.documents_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.content, '')), 'B') || setweight(to_tsvector('english', COALESCE(NEW.title, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

