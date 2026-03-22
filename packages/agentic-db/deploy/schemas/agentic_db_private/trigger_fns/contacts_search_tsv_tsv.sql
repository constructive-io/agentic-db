-- Deploy: schemas/agentic_db_private/trigger_fns/contacts_search_tsv_tsv
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column


CREATE FUNCTION agentic_db_private.contacts_search_tsv_tsv() RETURNS TRIGGER AS $_PGFN_$

BEGIN
NEW.search_tsv = (setweight(to_tsvector('english', COALESCE(NEW.bio, '')), 'C') || (setweight(to_tsvector('english', COALESCE(NEW.headline, '')), 'B') || (setweight(to_tsvector('english', COALESCE(NEW.last_name, '')), 'A') || setweight(to_tsvector('english', COALESCE(NEW.first_name, '')), 'A'))));
RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

