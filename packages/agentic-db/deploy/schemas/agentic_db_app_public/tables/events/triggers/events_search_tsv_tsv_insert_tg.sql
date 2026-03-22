-- Deploy: schemas/agentic_db_app_public/tables/events/triggers/events_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_private/trigger_fns/events_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


CREATE TRIGGER events_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agentic_db_app_public".events
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".events_search_tsv_tsv ( );

