-- Deploy: schemas/agent_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_private/trigger_fns/venues_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/events/triggers/events_search_tsv_tsv_update_tg


CREATE TRIGGER venues_search_tsv_tsv_update_tg
BEFORE UPDATE ON agent_db_app_public.venues
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.notes IS DISTINCT FROM NEW.notes OR OLD.neighborhood IS DISTINCT FROM NEW.neighborhood)
EXECUTE PROCEDURE agent_db_private.venues_search_tsv_tsv ( );

