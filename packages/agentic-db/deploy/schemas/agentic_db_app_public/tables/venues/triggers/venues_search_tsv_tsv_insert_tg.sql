-- Deploy: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_private/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_private/trigger_fns/venues_search_tsv_tsv


CREATE TRIGGER venues_search_tsv_tsv_insert_tg
BEFORE INSERT ON agentic_db_app_public.venues
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_app_private.venues_search_tsv_tsv ( );

