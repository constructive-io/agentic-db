-- Deploy: schemas/agent_db_app_public/tables/contacts/triggers/contacts_search_tsv_tsv_update_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_private/trigger_fns/contacts_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_destination_geo_gist_idx


CREATE TRIGGER contacts_search_tsv_tsv_update_tg
BEFORE UPDATE ON agent_db_app_public.contacts
FOR EACH ROW
WHEN (OLD.first_name IS DISTINCT FROM NEW.first_name OR OLD.last_name IS DISTINCT FROM NEW.last_name OR OLD.headline IS DISTINCT FROM NEW.headline OR OLD.bio IS DISTINCT FROM NEW.bio)
EXECUTE PROCEDURE agent_db_private.contacts_search_tsv_tsv ( );

