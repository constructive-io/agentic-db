-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_private/trigger_fns/venues_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER venues_search_tsv_tsv_update_tg
BEFORE UPDATE ON agentic_db_app_public.venues
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.notes IS DISTINCT FROM NEW.notes OR OLD.neighborhood IS DISTINCT FROM NEW.neighborhood)
EXECUTE PROCEDURE agentic_db_private.venues_search_tsv_tsv ( );

