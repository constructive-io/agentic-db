-- Deploy: schemas/agent-os-1773551593867-bac64076-private/trigger_fns/users_search_tsv_tsv
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-private/schema


CREATE FUNCTION "agent-os-1773551593867-bac64076-private".users_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.display_name, '')), 'B') || setweight(to_tsvector('pg_catalog.simple', COALESCE(NEW.username, '')), 'A'));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

