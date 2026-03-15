-- Deploy: schemas/agent_db_private/trigger_fns/contacts_search_tsv_tsv
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_destination_geo_gist_idx


CREATE FUNCTION "agent_db_private".contacts_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.bio, '')), 'C') || (setweight(to_tsvector('english', COALESCE(NEW.headline, '')), 'B') || (setweight(to_tsvector('english', COALESCE(NEW.last_name, '')), 'A') || setweight(to_tsvector('english', COALESCE(NEW.first_name, '')), 'A'))));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

