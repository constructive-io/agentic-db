-- Deploy: schemas/agent_db_app_public/tables/contacts/triggers/contacts_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_private/trigger_fns/contacts_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_destination_geo_gist_idx


CREATE TRIGGER contacts_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agent_db_app_public".contacts
FOR EACH ROW
EXECUTE PROCEDURE "agent_db_private".contacts_search_tsv_tsv ( );

