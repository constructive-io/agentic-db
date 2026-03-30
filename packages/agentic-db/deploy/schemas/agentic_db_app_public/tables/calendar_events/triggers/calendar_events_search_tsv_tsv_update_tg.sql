-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/triggers/calendar_events_search_tsv_tsv_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_private/trigger_fns/calendar_events_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


CREATE TRIGGER calendar_events_search_tsv_tsv_update_tg
BEFORE UPDATE ON "agentic_db_app_public".calendar_events
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.description IS DISTINCT FROM NEW.description)
EXECUTE PROCEDURE "agentic_db_private".calendar_events_search_tsv_tsv ( );

