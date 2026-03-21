-- Deploy: schemas/agentic_db_app_public/tables/contacts/triggers/contacts_search_tsv_tsv_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_private/trigger_fns/contacts_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_location_gist_idx


CREATE TRIGGER contacts_search_tsv_tsv_update_tg
BEFORE UPDATE ON agentic_db_app_public.contacts
FOR EACH ROW
WHEN (OLD.first_name IS DISTINCT FROM NEW.first_name OR OLD.last_name IS DISTINCT FROM NEW.last_name OR OLD.headline IS DISTINCT FROM NEW.headline OR OLD.bio IS DISTINCT FROM NEW.bio)
EXECUTE PROCEDURE agentic_db_private.contacts_search_tsv_tsv ( );

